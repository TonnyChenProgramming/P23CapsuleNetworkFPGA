#!/usr/bin/env python3
"""
Quantize the first three TRUE standalone CapsNet stages with bounded memory.

Float standalone chain:
    MNIST image
      -> conv1_standalone.h5
      -> primarycap_conv2d_standalone.h5
      -> primarycap_reshape_standalone.h5

Generated quantized chain:
    MNIST image
      -> quantized_conv1_standalone.h5
      -> quantized_primarycap_conv2d_standalone.h5
      -> quantized_primarycap_reshape_standalone.h5

This version is designed to process all 10,000 MNIST test images without
holding all intermediate tensors in RAM.

Memory strategy:
1. Conv1 outputs are generated in small batches.
2. Conv1 outputs are written to a disk-backed NumPy memmap.
3. PrimaryCaps Conv2D outputs are generated from that memmap in small batches.
4. Conv2D outputs are written to another disk-backed memmap.
5. Vitis AI calibration receives a Keras Sequence and reads only one small
   batch at a time.
6. Models and quantizer objects are released between stages.

Recommended command:
    python "Pasted code.py" \
        --standalone_dir models/standalone \
        --save_dir models/quant_standalone \
        --work_dir quant_standalone_work \
        --calibration_count 10000 \
        --generation_batch_size 4 \
        --calibration_batch_size 1
"""

import os
import gc
import math
import argparse
from pathlib import Path
from typing import Dict, Tuple

import numpy as np
import tensorflow as tf

from tensorflow_model_optimization.quantization.keras import vitis_quantize

from capsulenet import load_mnist
from capsulelayers import Length, Mask, CapsuleLayer, SquashLayer


CUSTOM_OBJECTS: Dict[str, object] = {
    "Length": Length,
    "Mask": Mask,
    "CapsuleLayer": CapsuleLayer,
    "SquashLayer": SquashLayer,
}


EXPECTED_INTERFACES = {
    "conv1": {
        "input": (None, 28, 28, 1),
        "output": (None, 20, 20, 256),
    },
    "primarycap_conv2d": {
        "input": (None, 20, 20, 256),
        "output": (None, 6, 6, 256),
    },
    "primarycap_reshape": {
        "input": (None, 6, 6, 256),
        "output": (None, 1152, 8),
    },
}


class CalibrationSequence(tf.keras.utils.Sequence):
    """
    Stream calibration data in small batches.

    The backing object may be:
      - a normal NumPy array
      - a NumPy memmap

    Only one batch is copied into RAM at a time.
    """

    def __init__(
        self,
        data,
        count: int,
        batch_size: int,
        expected_sample_shape: Tuple[int, ...],
        name: str,
    ):
        if batch_size < 1:
            raise ValueError("batch_size must be at least 1.")

        self.data = data
        self.count = int(count)
        self.batch_size = int(batch_size)
        self.expected_sample_shape = tuple(expected_sample_shape)
        self.name = name

        if len(data) < self.count:
            raise RuntimeError(
                f"{name}: data contains {len(data)} samples, "
                f"but count={self.count}."
            )

        actual_sample_shape = tuple(data.shape[1:])

        if actual_sample_shape != self.expected_sample_shape:
            raise RuntimeError(
                f"{name}: sample shape mismatch.\n"
                f"Expected: {self.expected_sample_shape}\n"
                f"Actual:   {actual_sample_shape}"
            )

    def __len__(self):
        return math.ceil(self.count / self.batch_size)

    def __getitem__(self, index):
        start = index * self.batch_size
        end = min(start + self.batch_size, self.count)

        if start >= self.count:
            raise IndexError(index)

        batch = np.asarray(
            self.data[start:end],
            dtype=np.float32,
        )

        if not np.all(np.isfinite(batch)):
            raise RuntimeError(
                f"{self.name}: calibration batch {index} contains NaN or Inf."
            )

        return batch


def normalize_shape(shape):
    """
    Convert TensorShape/list shapes into a plain tuple.
    """
    if isinstance(shape, list):
        if len(shape) != 1:
            raise RuntimeError(
                f"Expected one input/output tensor, got {len(shape)}."
            )
        shape = shape[0]

    return tuple(
        None if dim is None else int(dim)
        for dim in shape
    )


def validate_interface(model, stage_name):
    """
    Confirm that a source model is a true standalone stage.
    """
    expected = EXPECTED_INTERFACES[stage_name]

    actual_input = normalize_shape(model.input_shape)
    actual_output = normalize_shape(model.output_shape)

    if actual_input != expected["input"]:
        raise RuntimeError(
            f"{stage_name}: source model is not standalone.\n"
            f"Expected input shape: {expected['input']}\n"
            f"Actual input shape:   {actual_input}"
        )

    if actual_output != expected["output"]:
        raise RuntimeError(
            f"{stage_name}: unexpected output shape.\n"
            f"Expected output shape: {expected['output']}\n"
            f"Actual output shape:   {actual_output}"
        )


def load_float_model(path: Path, stage_name: str):
    """
    Load and validate one floating-point standalone model.
    """
    if not path.is_file():
        raise FileNotFoundError(
            f"Missing standalone model: {path.resolve()}"
        )

    print("\n============================================================")
    print(f"Loading float standalone model: {stage_name}")
    print("============================================================")
    print(path.resolve())

    model = tf.keras.models.load_model(
        path,
        custom_objects=CUSTOM_OBJECTS,
        compile=False,
    )

    validate_interface(model, stage_name)

    print(f"Input shape:  {model.input_shape}")
    print(f"Output shape: {model.output_shape}")

    return model


def clear_memory():
    """
    Release Python and TensorFlow objects between major stages.
    """
    gc.collect()
    tf.keras.backend.clear_session()
    gc.collect()


def create_output_memmap(
    path: Path,
    count: int,
    sample_shape: Tuple[int, ...],
):
    """
    Create a float32 disk-backed array.
    """
    path.parent.mkdir(
        parents=True,
        exist_ok=True,
    )

    return np.memmap(
        path,
        mode="w+",
        dtype=np.float32,
        shape=(count,) + tuple(sample_shape),
    )


def generate_intermediate_memmap(
    model,
    input_data,
    output_path: Path,
    count: int,
    output_sample_shape: Tuple[int, ...],
    batch_size: int,
    stage_name: str,
):
    """
    Run a model batch-by-batch and write outputs directly to disk.
    """
    output_memmap = create_output_memmap(
        output_path,
        count,
        output_sample_shape,
    )

    print("\n============================================================")
    print(f"Generating calibration data: {stage_name}")
    print("============================================================")
    print(f"Input shape:   {input_data.shape}")
    print(f"Output shape:  {output_memmap.shape}")
    print(f"Batch size:    {batch_size}")
    print(f"Output file:   {output_path.resolve()}")

    for start in range(0, count, batch_size):
        end = min(start + batch_size, count)

        input_batch = np.asarray(
            input_data[start:end],
            dtype=np.float32,
        )

        output_batch = model(
            input_batch,
            training=False,
        )

        if isinstance(output_batch, (list, tuple)):
            if len(output_batch) != 1:
                raise RuntimeError(
                    f"{stage_name}: model returned "
                    f"{len(output_batch)} outputs."
                )
            output_batch = output_batch[0]

        output_batch = np.asarray(
            output_batch,
            dtype=np.float32,
        )

        expected_shape = (
            end - start,
        ) + tuple(output_sample_shape)

        if output_batch.shape != expected_shape:
            raise RuntimeError(
                f"{stage_name}: output shape mismatch.\n"
                f"Expected: {expected_shape}\n"
                f"Actual:   {output_batch.shape}"
            )

        if not np.all(np.isfinite(output_batch)):
            raise RuntimeError(
                f"{stage_name}: output contains NaN or Inf."
            )

        output_memmap[start:end] = output_batch
        output_memmap.flush()

        print(
            f"Generated {end}/{count}",
            end="\r",
            flush=True,
        )

        del input_batch
        del output_batch
        gc.collect()

    print()

    return output_memmap


def quantize_one_standalone_model(
    float_model,
    stage_name: str,
    output_model_path: Path,
    calibration_sequence: CalibrationSequence,
    dump_output_dir=None,
):
    """
    Quantize one standalone model using streamed calibration batches.
    """
    print("\n============================================================")
    print(f"Quantizing standalone stage: {stage_name}")
    print("============================================================")
    print(f"Output model:       {output_model_path.resolve()}")
    print(f"Calibration samples:{calibration_sequence.count}")
    print(f"Calibration batches:{len(calibration_sequence)}")
    print(f"Batch size:         {calibration_sequence.batch_size}")

    quantizer = vitis_quantize.VitisQuantizer(
        float_model,
        quantize_strategy="pof2s",
        custom_objects=CUSTOM_OBJECTS,
    )

    quantized_model = quantizer.quantize_model(
        calib_dataset=calibration_sequence,
        add_shape_info=True,
        separate_conv_act=False,
    )

    output_model_path.parent.mkdir(
        parents=True,
        exist_ok=True,
    )

    quantized_model.save(
        output_model_path
    )

    print(f"Saved: {output_model_path.resolve()}")
    print(f"Quantized input:  {quantized_model.input_shape}")
    print(f"Quantized output: {quantized_model.output_shape}")

    if dump_output_dir is not None:
        dump_output_dir = Path(dump_output_dir)
        dump_output_dir.mkdir(
            parents=True,
            exist_ok=True,
        )

        first_batch = calibration_sequence[0][0:1]

        print(
            f"Dumping first calibration sample to: "
            f"{dump_output_dir.resolve()}"
        )

        vitis_quantize.VitisQuantizer.dump_model(
            model=quantized_model,
            dataset=first_batch,
            output_dir=str(dump_output_dir),
            dump_float=True,
        )

    del quantizer

    return quantized_model


def load_quantized_model(path: Path):
    """
    Reload one saved Vitis AI quantized model for final interface checks.
    """
    try:
        with vitis_quantize.quantize_scope(CUSTOM_OBJECTS):
            return tf.keras.models.load_model(
                path,
                compile=False,
            )
    except TypeError:
        with vitis_quantize.quantize_scope():
            return tf.keras.models.load_model(
                path,
                custom_objects=CUSTOM_OBJECTS,
                compile=False,
            )


def inspect_generated_chain(save_dir: Path):
    """
    Reload the saved models and verify that they form a valid chain.
    """
    paths = {
        "conv1":
            save_dir / "quantized_conv1_standalone.h5",
        "primarycap_conv2d":
            save_dir / "quantized_primarycap_conv2d_standalone.h5",
        "primarycap_reshape":
            save_dir / "quantized_primarycap_reshape_standalone.h5",
    }

    models = {
        name: load_quantized_model(path)
        for name, path in paths.items()
    }

    for stage_name, model in models.items():
        validate_interface(
            model,
            stage_name,
        )

    conv1_out = normalize_shape(
        models["conv1"].output_shape
    )
    conv2d_in = normalize_shape(
        models["primarycap_conv2d"].input_shape
    )
    conv2d_out = normalize_shape(
        models["primarycap_conv2d"].output_shape
    )
    reshape_in = normalize_shape(
        models["primarycap_reshape"].input_shape
    )

    if conv1_out != conv2d_in:
        raise RuntimeError(
            "Generated chain is invalid:\n"
            f"Conv1 output: {conv1_out}\n"
            f"Conv2D input: {conv2d_in}"
        )

    if conv2d_out != reshape_in:
        raise RuntimeError(
            "Generated chain is invalid:\n"
            f"Conv2D output: {conv2d_out}\n"
            f"Reshape input: {reshape_in}"
        )

    print("\n============================================================")
    print("Generated quantized standalone chain")
    print("============================================================")
    print(
        f"Conv1:       {models['conv1'].input_shape} "
        f"-> {models['conv1'].output_shape}"
    )
    print(
        f"PrimaryConv: {models['primarycap_conv2d'].input_shape} "
        f"-> {models['primarycap_conv2d'].output_shape}"
    )
    print(
        f"Reshape:     {models['primarycap_reshape'].input_shape} "
        f"-> {models['primarycap_reshape'].output_shape}"
    )
    print("\nThe three quantized models can be chained sequentially.")

    del models
    clear_memory()


def main():
    parser = argparse.ArgumentParser(
        description=(
            "Quantize true standalone Conv1, PrimaryCaps Conv2D, and "
            "PrimaryCaps Reshape models using all requested calibration "
            "samples with bounded memory."
        )
    )

    parser.add_argument(
        "--standalone_dir",
        default=os.path.join(
            "models",
            "standalone",
        ),
    )

    parser.add_argument(
        "--save_dir",
        default=os.path.join(
            "models",
            "quant_standalone",
        ),
    )

    parser.add_argument(
        "--work_dir",
        default="quant_standalone_work",
        help=(
            "Directory for disk-backed intermediate calibration tensors."
        ),
    )

    parser.add_argument(
        "--calibration_count",
        type=int,
        default=10000,
        help="Number of MNIST test images used for calibration.",
    )

    parser.add_argument(
        "--generation_batch_size",
        type=int,
        default=4,
        help=(
            "Batch size used to generate disk-backed intermediate tensors."
        ),
    )

    parser.add_argument(
        "--calibration_batch_size",
        type=int,
        default=1,
        help=(
            "Batch size supplied to the Vitis AI quantizer."
        ),
    )

    parser.add_argument(
        "--dump",
        action="store_true",
    )

    parser.add_argument(
        "--dump_dir",
        default="dump_quant_standalone",
    )

    args = parser.parse_args()

    if args.calibration_count < 1:
        raise ValueError(
            "--calibration_count must be at least 1."
        )

    if args.generation_batch_size < 1:
        raise ValueError(
            "--generation_batch_size must be at least 1."
        )

    if args.calibration_batch_size < 1:
        raise ValueError(
            "--calibration_batch_size must be at least 1."
        )

    np.random.seed(0)
    tf.random.set_seed(0)

    standalone_dir = Path(args.standalone_dir)
    save_dir = Path(args.save_dir)
    work_dir = Path(args.work_dir)

    save_dir.mkdir(
        parents=True,
        exist_ok=True,
    )

    work_dir.mkdir(
        parents=True,
        exist_ok=True,
    )

    (_, _), (x_test, _) = load_mnist()

    calibration_count = min(
        args.calibration_count,
        len(x_test),
    )

    mnist_calibration = np.asarray(
        x_test[:calibration_count],
        dtype=np.float32,
    )

    print("\n============================================================")
    print("Calibration configuration")
    print("============================================================")
    print(f"Samples:                {calibration_count}")
    print(f"Generation batch size:  {args.generation_batch_size}")
    print(f"Quantizer batch size:   {args.calibration_batch_size}")
    print(f"MNIST shape:            {mnist_calibration.shape}")
    print(f"Work directory:         {work_dir.resolve()}")

    # ---------------------------------------------------------------
    # Stage 1: load Conv1 and create Conv1 calibration outputs.
    # ---------------------------------------------------------------

    conv1_float = load_float_model(
        standalone_dir / "conv1_standalone.h5",
        "conv1",
    )

    conv1_outputs = generate_intermediate_memmap(
        model=conv1_float,
        input_data=mnist_calibration,
        output_path=(
            work_dir /
            "conv1_outputs.float32.mmap"
        ),
        count=calibration_count,
        output_sample_shape=(20, 20, 256),
        batch_size=args.generation_batch_size,
        stage_name="Conv1",
    )

    # ---------------------------------------------------------------
    # Stage 2: load Conv2D and create Conv2D calibration outputs.
    # ---------------------------------------------------------------

    conv2d_float = load_float_model(
        standalone_dir / "primarycap_conv2d_standalone.h5",
        "primarycap_conv2d",
    )

    conv2d_outputs = generate_intermediate_memmap(
        model=conv2d_float,
        input_data=conv1_outputs,
        output_path=(
            work_dir /
            "primarycap_conv2d_outputs.float32.mmap"
        ),
        count=calibration_count,
        output_sample_shape=(6, 6, 256),
        batch_size=args.generation_batch_size,
        stage_name="PrimaryCaps Conv2D",
    )

    # ---------------------------------------------------------------
    # Build streamed calibration sequences.
    # ---------------------------------------------------------------

    conv1_sequence = CalibrationSequence(
        data=mnist_calibration,
        count=calibration_count,
        batch_size=args.calibration_batch_size,
        expected_sample_shape=(28, 28, 1),
        name="Conv1 calibration",
    )

    conv2d_sequence = CalibrationSequence(
        data=conv1_outputs,
        count=calibration_count,
        batch_size=args.calibration_batch_size,
        expected_sample_shape=(20, 20, 256),
        name="PrimaryCaps Conv2D calibration",
    )

    reshape_sequence = CalibrationSequence(
        data=conv2d_outputs,
        count=calibration_count,
        batch_size=args.calibration_batch_size,
        expected_sample_shape=(6, 6, 256),
        name="PrimaryCaps Reshape calibration",
    )

    # ---------------------------------------------------------------
    # Quantize Conv1.
    # ---------------------------------------------------------------

    q_conv1 = quantize_one_standalone_model(
        float_model=conv1_float,
        stage_name="conv1",
        output_model_path=(
            save_dir /
            "quantized_conv1_standalone.h5"
        ),
        calibration_sequence=conv1_sequence,
        dump_output_dir=(
            Path(args.dump_dir) / "conv1"
            if args.dump else None
        ),
    )

    del q_conv1
    del conv1_float
    clear_memory()

    # ---------------------------------------------------------------
    # Quantize PrimaryCaps Conv2D.
    # ---------------------------------------------------------------

    # Reload after clear_session to avoid retaining Conv1 graph state.
    conv2d_float = load_float_model(
        standalone_dir / "primarycap_conv2d_standalone.h5",
        "primarycap_conv2d",
    )

    q_conv2d = quantize_one_standalone_model(
        float_model=conv2d_float,
        stage_name="primarycap_conv2d",
        output_model_path=(
            save_dir /
            "quantized_primarycap_conv2d_standalone.h5"
        ),
        calibration_sequence=conv2d_sequence,
        dump_output_dir=(
            Path(args.dump_dir) / "primarycap_conv2d"
            if args.dump else None
        ),
    )

    del q_conv2d
    del conv2d_float
    clear_memory()

    # ---------------------------------------------------------------
    # Quantize PrimaryCaps Reshape.
    # ---------------------------------------------------------------

    reshape_float = load_float_model(
        standalone_dir / "primarycap_reshape_standalone.h5",
        "primarycap_reshape",
    )

    q_reshape = quantize_one_standalone_model(
        float_model=reshape_float,
        stage_name="primarycap_reshape",
        output_model_path=(
            save_dir /
            "quantized_primarycap_reshape_standalone.h5"
        ),
        calibration_sequence=reshape_sequence,
        dump_output_dir=(
            Path(args.dump_dir) / "primarycap_reshape"
            if args.dump else None
        ),
    )

    del q_reshape
    del reshape_float
    clear_memory()

    # Ensure memmaps are flushed before final checks.
    conv1_outputs.flush()
    conv2d_outputs.flush()

    inspect_generated_chain(
        save_dir
    )

    print("\n============================================================")
    print("Quantization complete")
    print("============================================================")

    for filename in [
        "quantized_conv1_standalone.h5",
        "quantized_primarycap_conv2d_standalone.h5",
        "quantized_primarycap_reshape_standalone.h5",
    ]:
        print(
            (save_dir / filename).resolve()
        )

    print("\nDisk-backed calibration files:")
    print(
        (
            work_dir /
            "conv1_outputs.float32.mmap"
        ).resolve()
    )
    print(
        (
            work_dir /
            "primarycap_conv2d_outputs.float32.mmap"
        ).resolve()
    )


if __name__ == "__main__":
    main()
