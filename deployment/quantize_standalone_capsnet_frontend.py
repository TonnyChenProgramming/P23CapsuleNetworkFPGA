#!/usr/bin/env python3
"""
Quantize the first three TRUE standalone CapsNet stages.

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

Critical detail:
Each standalone stage must be calibrated with representative data matching
its own input tensor:

    Conv1 calibration:
        MNIST images, shape (N, 28, 28, 1)

    PrimaryCaps Conv2D calibration:
        FLOAT Conv1 outputs, shape (N, 20, 20, 256)

    PrimaryCaps Reshape calibration:
        FLOAT PrimaryCaps Conv2D outputs, shape (N, 6, 6, 256)

Do not calibrate all three standalone layers directly with MNIST images.
"""

import os
import argparse
from pathlib import Path
from typing import Dict

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


def normalize_shape(shape):
    """
    Convert TensorShape/list shapes into a plain tuple.
    """
    if isinstance(shape, list):
        if len(shape) != 1:
            raise RuntimeError(
                f"Expected a single-input/single-output model, "
                f"but received {len(shape)} tensors."
            )
        shape = shape[0]

    return tuple(
        None if dim is None else int(dim)
        for dim in shape
    )


def validate_interface(model, stage_name):
    """
    Confirm a source model is truly standalone.
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

    validate_interface(
        model,
        stage_name,
    )

    print(f"Input shape:  {model.input_shape}")
    print(f"Output shape: {model.output_shape}")
    model.summary()

    return model


def run_model_in_batches(
    model,
    dataset: np.ndarray,
    batch_size: int,
    stage_name: str,
):
    """
    Run a float standalone model in batches to generate calibration data
    for the next stage.
    """
    dataset = np.asarray(
        dataset,
        dtype=np.float32,
    )

    print("\n============================================================")
    print(f"Generating calibration input for: {stage_name}")
    print("============================================================")
    print(f"Source dataset shape: {dataset.shape}")
    print(f"Batch size:           {batch_size}")

    outputs = model.predict(
        dataset,
        batch_size=batch_size,
        verbose=1,
    )

    outputs = np.asarray(
        outputs,
        dtype=np.float32,
    )

    if not np.all(np.isfinite(outputs)):
        raise RuntimeError(
            f"{stage_name}: generated calibration data contains NaN or Inf."
        )

    print(f"Generated shape:      {outputs.shape}")
    print(f"Minimum:              {outputs.min()}")
    print(f"Maximum:              {outputs.max()}")
    print(f"Mean:                 {outputs.mean()}")
    print(f"Standard deviation:   {outputs.std()}")

    return outputs


def quantize_one_standalone_model(
    float_model,
    stage_name: str,
    output_model_path: Path,
    calibration_data: np.ndarray,
    dump_output_dir=None,
):
    """
    Quantize one already-loaded standalone Keras model.
    """
    calibration_data = np.asarray(
        calibration_data,
        dtype=np.float32,
    )

    expected_input_shape = EXPECTED_INTERFACES[stage_name]["input"]

    if calibration_data.ndim != len(expected_input_shape):
        raise RuntimeError(
            f"{stage_name}: calibration rank {calibration_data.ndim} "
            f"does not match expected rank {len(expected_input_shape)}."
        )

    if tuple(calibration_data.shape[1:]) != tuple(expected_input_shape[1:]):
        raise RuntimeError(
            f"{stage_name}: calibration data shape "
            f"{calibration_data.shape} does not match model input "
            f"{expected_input_shape}."
        )

    print("\n============================================================")
    print(f"Quantizing standalone stage: {stage_name}")
    print("============================================================")
    print(f"Output model:       {output_model_path.resolve()}")
    print(f"Calibration shape:  {calibration_data.shape}")
    print(f"Calibration count:  {len(calibration_data)}")
    print(f"Calibration dtype:  {calibration_data.dtype}")
    print(f"Calibration min:    {calibration_data.min()}")
    print(f"Calibration max:    {calibration_data.max()}")

    quantizer = vitis_quantize.VitisQuantizer(
        float_model,
        quantize_strategy="pof2s",
        custom_objects=CUSTOM_OBJECTS,
    )

    quantized_model = quantizer.quantize_model(
        calib_dataset=calibration_data,
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

        print(f"Dumping first calibration sample to: "
              f"{dump_output_dir.resolve()}")

        vitis_quantize.VitisQuantizer.dump_model(
            model=quantized_model,
            dataset=calibration_data[0:1],
            output_dir=str(dump_output_dir),
            dump_float=True,
        )

    return quantized_model


def inspect_generated_chain(models):
    """
    Verify the three quantized outputs form a valid sequential chain.
    """
    conv1_model = models["conv1"]
    conv2d_model = models["primarycap_conv2d"]
    reshape_model = models["primarycap_reshape"]

    conv1_out = normalize_shape(conv1_model.output_shape)
    conv2d_in = normalize_shape(conv2d_model.input_shape)
    conv2d_out = normalize_shape(conv2d_model.output_shape)
    reshape_in = normalize_shape(reshape_model.input_shape)

    if conv1_out != conv2d_in:
        raise RuntimeError(
            "Generated quantized chain is invalid:\n"
            f"Conv1 output: {conv1_out}\n"
            f"Conv2D input: {conv2d_in}"
        )

    if conv2d_out != reshape_in:
        raise RuntimeError(
            "Generated quantized chain is invalid:\n"
            f"Conv2D output: {conv2d_out}\n"
            f"Reshape input: {reshape_in}"
        )

    print("\n============================================================")
    print("Generated quantized standalone chain")
    print("============================================================")
    print(
        f"Conv1:       {conv1_model.input_shape} "
        f"-> {conv1_model.output_shape}"
    )
    print(
        f"PrimaryConv: {conv2d_model.input_shape} "
        f"-> {conv2d_model.output_shape}"
    )
    print(
        f"Reshape:     {reshape_model.input_shape} "
        f"-> {reshape_model.output_shape}"
    )
    print("\nThe three quantized models can be chained sequentially.")


def main():
    parser = argparse.ArgumentParser(
        description=(
            "Quantize true standalone Conv1, PrimaryCaps Conv2D, and "
            "PrimaryCaps Reshape Keras models using correctly shaped "
            "calibration data."
        )
    )

    parser.add_argument(
        "--standalone_dir",
        default=os.path.join("models", "standalone"),
        help=(
            "Directory containing conv1_standalone.h5, "
            "primarycap_conv2d_standalone.h5, and "
            "primarycap_reshape_standalone.h5."
        ),
    )

    parser.add_argument(
        "--save_dir",
        default=os.path.join(
            "models",
            "quant_standalone",
        ),
        help=(
            "Directory for generated quantized standalone models. "
            "Default: models/quant_standalone"
        ),
    )

    parser.add_argument(
        "--calibration_count",
        type=int,
        default=10000,
        help=(
            "Number of MNIST test images used for calibration. "
            "Default: 10000"
        ),
    )

    parser.add_argument(
        "--batch_size",
        type=int,
        default=64,
        help=(
            "Batch size used to generate intermediate calibration tensors. "
            "Default: 64"
        ),
    )

    parser.add_argument(
        "--dump",
        action="store_true",
        help="Dump one sample from each quantized standalone stage.",
    )

    parser.add_argument(
        "--dump_dir",
        default="dump_quant_standalone",
        help="Root directory for optional quantizer dumps.",
    )

    args = parser.parse_args()

    np.random.seed(0)
    tf.random.set_seed(0)

    standalone_dir = Path(args.standalone_dir)
    save_dir = Path(args.save_dir)

    save_dir.mkdir(
        parents=True,
        exist_ok=True,
    )

    # ------------------------------------------------------------------
    # Load true standalone float models.
    # ------------------------------------------------------------------

    conv1_float = load_float_model(
        standalone_dir / "conv1_standalone.h5",
        "conv1",
    )

    conv2d_float = load_float_model(
        standalone_dir / "primarycap_conv2d_standalone.h5",
        "primarycap_conv2d",
    )

    reshape_float = load_float_model(
        standalone_dir / "primarycap_reshape_standalone.h5",
        "primarycap_reshape",
    )

    # ------------------------------------------------------------------
    # Build correctly-shaped calibration datasets.
    # ------------------------------------------------------------------

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
    print("Calibration source")
    print("============================================================")
    print(f"MNIST shape: {mnist_calibration.shape}")
    print(f"Count:       {calibration_count}")
    print(f"Dtype:       {mnist_calibration.dtype}")
    print(f"Minimum:     {mnist_calibration.min()}")
    print(f"Maximum:     {mnist_calibration.max()}")

    # Conv2D standalone input must be float Conv1 output.
    conv1_float_outputs = run_model_in_batches(
        model=conv1_float,
        dataset=mnist_calibration,
        batch_size=args.batch_size,
        stage_name="primarycap_conv2d",
    )

    # Reshape standalone input must be float PrimaryCaps Conv2D output.
    conv2d_float_outputs = run_model_in_batches(
        model=conv2d_float,
        dataset=conv1_float_outputs,
        batch_size=args.batch_size,
        stage_name="primarycap_reshape",
    )

    # ------------------------------------------------------------------
    # Quantize all three standalone stages.
    # ------------------------------------------------------------------

    generated_models = {}

    jobs = [
        {
            "stage_name": "conv1",
            "float_model": conv1_float,
            "calibration_data": mnist_calibration,
            "filename": "quantized_conv1_standalone.h5",
        },
        {
            "stage_name": "primarycap_conv2d",
            "float_model": conv2d_float,
            "calibration_data": conv1_float_outputs,
            "filename":
                "quantized_primarycap_conv2d_standalone.h5",
        },
        {
            "stage_name": "primarycap_reshape",
            "float_model": reshape_float,
            "calibration_data": conv2d_float_outputs,
            "filename":
                "quantized_primarycap_reshape_standalone.h5",
        },
    ]

    for job in jobs:
        dump_output_dir = None

        if args.dump:
            dump_output_dir = (
                Path(args.dump_dir)
                / job["stage_name"]
            )

        quantized_model = quantize_one_standalone_model(
            float_model=job["float_model"],
            stage_name=job["stage_name"],
            output_model_path=(
                save_dir / job["filename"]
            ),
            calibration_data=job["calibration_data"],
            dump_output_dir=dump_output_dir,
        )

        generated_models[job["stage_name"]] = quantized_model

    inspect_generated_chain(
        generated_models
    )

    print("\n============================================================")
    print("Quantization complete")
    print("============================================================")

    for filename in [
        "quantized_conv1_standalone.h5",
        "quantized_primarycap_conv2d_standalone.h5",
        "quantized_primarycap_reshape_standalone.h5",
    ]:
        print((save_dir / filename).resolve())


if __name__ == "__main__":
    main()
