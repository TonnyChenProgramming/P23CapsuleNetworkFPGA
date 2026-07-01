#!/usr/bin/env python3
"""
Run a host-side hybrid CapsNet pipeline:

    MNIST image
      -> quantized_conv1_standalone.h5
      -> quantized_primarycap_conv2d_standalone.h5
      -> quantized_primarycap_reshape_standalone.h5
      -> primarycap_squash_standalone.h5
      -> digitcaps_standalone.h5
      -> capsnet_standalone.h5

The first three stages are Vitis AI quantized Keras models and are executed
directly on the host through TensorFlow/Keras. No XIR, VART, .xmodel, or
physical DPU is required.

The script processes the first N MNIST test images and writes every
intermediate tensor to disk as both .npy and flattened .txt files.
"""

import os
import json
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
    "quantized_conv1": {
        "input": (None, 28, 28, 1),
        "output": (None, 20, 20, 256),
    },
    "quantized_primarycap_conv2d": {
        "input": (None, 20, 20, 256),
        "output": (None, 6, 6, 256),
    },
    "quantized_primarycap_reshape": {
        "input": (None, 6, 6, 256),
        "output": (None, 1152, 8),
    },
    "primarycap_squash": {
        "input": (None, 1152, 8),
        "output": (None, 1152, 8),
    },
    "digitcaps": {
        "input": (None, 1152, 8),
        "output": (None, 10, 16),
    },
    "capsnet": {
        "input": (None, 10, 16),
        "output": (None, 10),
    },
}


def normalize_shape(shape) -> Tuple:
    """
    Convert Keras/TensorFlow shape objects into a plain tuple.
    """
    if isinstance(shape, list):
        if len(shape) != 1:
            raise RuntimeError(
                f"Expected one tensor, but received {len(shape)} tensors."
            )
        shape = shape[0]

    return tuple(
        None if dim is None else int(dim)
        for dim in shape
    )


def validate_interface(
    model: tf.keras.Model,
    stage_name: str,
):
    """
    Verify that a model has the expected standalone interface.
    """
    expected = EXPECTED_INTERFACES[stage_name]

    actual_input = normalize_shape(model.input_shape)
    actual_output = normalize_shape(model.output_shape)

    if actual_input != expected["input"]:
        raise RuntimeError(
            f"{stage_name}: unexpected input shape.\n"
            f"Expected: {expected['input']}\n"
            f"Actual:   {actual_input}"
        )

    if actual_output != expected["output"]:
        raise RuntimeError(
            f"{stage_name}: unexpected output shape.\n"
            f"Expected: {expected['output']}\n"
            f"Actual:   {actual_output}"
        )


def load_quantized_model(
    path: Path,
    stage_name: str,
) -> tf.keras.Model:
    """
    Load one Vitis AI quantized Keras model.
    """
    if not path.is_file():
        raise FileNotFoundError(
            f"Missing quantized model: {path.resolve()}"
        )

    print("\n============================================================")
    print(f"Loading quantized model: {stage_name}")
    print("============================================================")
    print(path.resolve())

    try:
        with vitis_quantize.quantize_scope(CUSTOM_OBJECTS):
            model = tf.keras.models.load_model(
                path,
                compile=False,
            )
    except TypeError:
        with vitis_quantize.quantize_scope():
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

    return model


def load_float_model(
    path: Path,
    stage_name: str,
) -> tf.keras.Model:
    """
    Load one floating-point standalone Keras model.
    """
    if not path.is_file():
        raise FileNotFoundError(
            f"Missing floating-point model: {path.resolve()}"
        )

    print("\n============================================================")
    print(f"Loading floating-point model: {stage_name}")
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

    return model


def infer(
    model: tf.keras.Model,
    input_tensor: np.ndarray,
    stage_name: str,
) -> np.ndarray:
    """
    Run deterministic inference for one stage.
    """
    input_tensor = np.asarray(
        input_tensor,
        dtype=np.float32,
    )

    expected_input_shape = list(
        normalize_shape(model.input_shape)
    )
    expected_input_shape[0] = input_tensor.shape[0]

    if tuple(input_tensor.shape) != tuple(expected_input_shape):
        raise RuntimeError(
            f"{stage_name}: input tensor shape mismatch.\n"
            f"Expected: {tuple(expected_input_shape)}\n"
            f"Actual:   {input_tensor.shape}"
        )

    output = model(
        input_tensor,
        training=False,
    )

    if isinstance(output, (list, tuple)):
        if len(output) != 1:
            raise RuntimeError(
                f"{stage_name}: model returned {len(output)} outputs."
            )
        output = output[0]

    output = np.asarray(
        output,
        dtype=np.float32,
    )

    if not np.all(np.isfinite(output)):
        raise RuntimeError(
            f"{stage_name}: output contains NaN or Inf."
        )

    return output


def save_tensor_txt(
    path: Path,
    array: np.ndarray,
):
    path.parent.mkdir(
        parents=True,
        exist_ok=True,
    )

    np.savetxt(
        path,
        np.asarray(array).reshape(-1),
        fmt="%.15f",
    )


def save_tensor_npy(
    path: Path,
    array: np.ndarray,
):
    path.parent.mkdir(
        parents=True,
        exist_ok=True,
    )

    np.save(
        path,
        np.asarray(array),
    )


def write_tensor_pair(
    image_dir: Path,
    prefix: str,
    array: np.ndarray,
):
    """
    Save one tensor in binary and human-readable formats.
    """
    save_tensor_npy(
        image_dir / f"{prefix}.npy",
        array,
    )

    save_tensor_txt(
        image_dir / f"{prefix}.txt",
        array,
    )


def tensor_statistics(
    array: np.ndarray,
) -> Dict[str, object]:
    array = np.asarray(array)

    return {
        "shape": list(array.shape),
        "element_count": int(array.size),
        "dtype": str(array.dtype),
        "minimum": float(np.min(array)),
        "maximum": float(np.max(array)),
        "mean": float(np.mean(array)),
        "standard_deviation": float(np.std(array)),
        "all_finite": bool(np.all(np.isfinite(array))),
    }


def compare_boundary(
    previous_output: np.ndarray,
    next_input: np.ndarray,
    boundary_name: str,
) -> Dict[str, object]:
    """
    Confirm that the exact tensor passed across a model boundary is preserved.
    """
    previous_output = np.asarray(previous_output)
    next_input = np.asarray(next_input)

    if previous_output.shape != next_input.shape:
        raise RuntimeError(
            f"{boundary_name}: boundary shape mismatch.\n"
            f"Previous output: {previous_output.shape}\n"
            f"Next input:      {next_input.shape}"
        )

    difference = np.abs(
        previous_output - next_input
    )

    return {
        "boundary": boundary_name,
        "shape": list(previous_output.shape),
        "mean_absolute_difference": float(np.mean(difference)),
        "maximum_absolute_difference": float(np.max(difference)),
        "exactly_equal": bool(
            np.array_equal(
                previous_output,
                next_input,
            )
        ),
    }


def main():
    parser = argparse.ArgumentParser(
        description=(
            "Run quantized standalone Conv1, PrimaryCaps Conv2D, and "
            "PrimaryCaps Reshape models followed by floating-point "
            "Squash, DigitCaps, and Length models."
        )
    )

    parser.add_argument(
        "--quant_dir",
        default=os.path.join(
            "models",
            "quant_standalone",
        ),
        help=(
            "Directory containing quantized_conv1_standalone.h5, "
            "quantized_primarycap_conv2d_standalone.h5, and "
            "quantized_primarycap_reshape_standalone.h5."
        ),
    )

    parser.add_argument(
        "--standalone_dir",
        default=os.path.join(
            "models",
            "standalone",
        ),
        help=(
            "Directory containing primarycap_squash_standalone.h5, "
            "digitcaps_standalone.h5, and capsnet_standalone.h5."
        ),
    )

    parser.add_argument(
        "--output_dir",
        default="hybrid_quant_standalone_first50",
        help="Directory for intermediate tensor dumps and summaries.",
    )

    parser.add_argument(
        "--num_images",
        type=int,
        default=50,
        help="Number of MNIST test images to process.",
    )

    args = parser.parse_args()

    if args.num_images < 1:
        raise ValueError(
            "--num_images must be at least 1."
        )

    np.random.seed(0)
    tf.random.set_seed(0)

    quant_dir = Path(args.quant_dir)
    standalone_dir = Path(args.standalone_dir)
    output_dir = Path(args.output_dir)

    output_dir.mkdir(
        parents=True,
        exist_ok=True,
    )

    # ------------------------------------------------------------------
    # Load quantized standalone front-end.
    # ------------------------------------------------------------------

    quantized_conv1_model = load_quantized_model(
        quant_dir / "quantized_conv1_standalone.h5",
        "quantized_conv1",
    )

    quantized_primarycap_conv2d_model = load_quantized_model(
        quant_dir / "quantized_primarycap_conv2d_standalone.h5",
        "quantized_primarycap_conv2d",
    )

    quantized_primarycap_reshape_model = load_quantized_model(
        quant_dir / "quantized_primarycap_reshape_standalone.h5",
        "quantized_primarycap_reshape",
    )

    # ------------------------------------------------------------------
    # Load floating-point standalone suffix.
    # ------------------------------------------------------------------

    primarycap_squash_model = load_float_model(
        standalone_dir / "primarycap_squash_standalone.h5",
        "primarycap_squash",
    )

    digitcaps_model = load_float_model(
        standalone_dir / "digitcaps_standalone.h5",
        "digitcaps",
    )

    capsnet_model = load_float_model(
        standalone_dir / "capsnet_standalone.h5",
        "capsnet",
    )

    # ------------------------------------------------------------------
    # Load MNIST.
    # ------------------------------------------------------------------

    (_, _), (x_test, y_test) = load_mnist()

    num_images = min(
        args.num_images,
        len(x_test),
    )

    images = np.asarray(
        x_test[:num_images],
        dtype=np.float32,
    )

    labels = np.argmax(
        y_test[:num_images],
        axis=1,
    ).astype(np.int64)

    predictions = []
    scores = []
    image_results = []

    manifest = {
        "num_images": num_images,
        "pipeline": [
            str(
                quant_dir /
                "quantized_conv1_standalone.h5"
            ),
            str(
                quant_dir /
                "quantized_primarycap_conv2d_standalone.h5"
            ),
            str(
                quant_dir /
                "quantized_primarycap_reshape_standalone.h5"
            ),
            str(
                standalone_dir /
                "primarycap_squash_standalone.h5"
            ),
            str(
                standalone_dir /
                "digitcaps_standalone.h5"
            ),
            str(
                standalone_dir /
                "capsnet_standalone.h5"
            ),
        ],
        "interfaces": {
            "quantized_conv1": {
                "input": list(
                    normalize_shape(
                        quantized_conv1_model.input_shape
                    )
                ),
                "output": list(
                    normalize_shape(
                        quantized_conv1_model.output_shape
                    )
                ),
            },
            "quantized_primarycap_conv2d": {
                "input": list(
                    normalize_shape(
                        quantized_primarycap_conv2d_model.input_shape
                    )
                ),
                "output": list(
                    normalize_shape(
                        quantized_primarycap_conv2d_model.output_shape
                    )
                ),
            },
            "quantized_primarycap_reshape": {
                "input": list(
                    normalize_shape(
                        quantized_primarycap_reshape_model.input_shape
                    )
                ),
                "output": list(
                    normalize_shape(
                        quantized_primarycap_reshape_model.output_shape
                    )
                ),
            },
            "primarycap_squash": {
                "input": list(
                    normalize_shape(
                        primarycap_squash_model.input_shape
                    )
                ),
                "output": list(
                    normalize_shape(
                        primarycap_squash_model.output_shape
                    )
                ),
            },
            "digitcaps": {
                "input": list(
                    normalize_shape(
                        digitcaps_model.input_shape
                    )
                ),
                "output": list(
                    normalize_shape(
                        digitcaps_model.output_shape
                    )
                ),
            },
            "capsnet": {
                "input": list(
                    normalize_shape(
                        capsnet_model.input_shape
                    )
                ),
                "output": list(
                    normalize_shape(
                        capsnet_model.output_shape
                    )
                ),
            },
        },
    }

    print(
        f"\n=== Processing first {num_images} MNIST test images ==="
    )

    # Run one image at a time so every image has its own dump directory.
    for index in range(num_images):
        image_dir = output_dir / f"img{index:02d}"
        image_dir.mkdir(
            parents=True,
            exist_ok=True,
        )

        mnist_input = images[index:index + 1]
        label = int(labels[index])

        write_tensor_pair(
            image_dir,
            "00_mnist_input_float",
            mnist_input,
        )

        # --------------------------------------------------------------
        # Quantized Conv1 standalone.
        # --------------------------------------------------------------

        conv1_input = mnist_input

        write_tensor_pair(
            image_dir,
            "01_quantized_conv1_input",
            conv1_input,
        )

        conv1_output = infer(
            quantized_conv1_model,
            conv1_input,
            "quantized_conv1",
        )

        write_tensor_pair(
            image_dir,
            "02_quantized_conv1_output",
            conv1_output,
        )

        # --------------------------------------------------------------
        # Quantized PrimaryCaps Conv2D standalone.
        # --------------------------------------------------------------

        primarycap_conv2d_input = conv1_output

        write_tensor_pair(
            image_dir,
            "03_quantized_primarycap_conv2d_input",
            primarycap_conv2d_input,
        )

        primarycap_conv2d_output = infer(
            quantized_primarycap_conv2d_model,
            primarycap_conv2d_input,
            "quantized_primarycap_conv2d",
        )

        write_tensor_pair(
            image_dir,
            "04_quantized_primarycap_conv2d_output",
            primarycap_conv2d_output,
        )

        # --------------------------------------------------------------
        # Quantized PrimaryCaps Reshape standalone.
        # --------------------------------------------------------------

        primarycap_reshape_input = primarycap_conv2d_output

        write_tensor_pair(
            image_dir,
            "05_quantized_primarycap_reshape_input",
            primarycap_reshape_input,
        )

        primarycap_reshape_output = infer(
            quantized_primarycap_reshape_model,
            primarycap_reshape_input,
            "quantized_primarycap_reshape",
        )

        write_tensor_pair(
            image_dir,
            "06_quantized_primarycap_reshape_output",
            primarycap_reshape_output,
        )

        # --------------------------------------------------------------
        # Floating-point PrimaryCaps Squash standalone.
        # --------------------------------------------------------------

        primarycap_squash_input = primarycap_reshape_output

        write_tensor_pair(
            image_dir,
            "07_primarycap_squash_input",
            primarycap_squash_input,
        )

        primarycap_squash_output = infer(
            primarycap_squash_model,
            primarycap_squash_input,
            "primarycap_squash",
        )

        write_tensor_pair(
            image_dir,
            "08_primarycap_squash_output",
            primarycap_squash_output,
        )

        # --------------------------------------------------------------
        # Floating-point DigitCaps standalone.
        # --------------------------------------------------------------

        digitcaps_input = primarycap_squash_output

        write_tensor_pair(
            image_dir,
            "09_digitcaps_input",
            digitcaps_input,
        )

        digitcaps_output = infer(
            digitcaps_model,
            digitcaps_input,
            "digitcaps",
        )

        write_tensor_pair(
            image_dir,
            "10_digitcaps_output",
            digitcaps_output,
        )

        # --------------------------------------------------------------
        # Floating-point Length/CapsNet standalone.
        # --------------------------------------------------------------

        capsnet_input = digitcaps_output

        write_tensor_pair(
            image_dir,
            "11_capsnet_input",
            capsnet_input,
        )

        capsnet_output = infer(
            capsnet_model,
            capsnet_input,
            "capsnet",
        )

        write_tensor_pair(
            image_dir,
            "12_capsnet_output",
            capsnet_output,
        )

        prediction = int(
            np.argmax(capsnet_output[0])
        )

        correct = bool(
            prediction == label
        )

        predictions.append(
            prediction
        )

        scores.append(
            capsnet_output[0].astype(float).tolist()
        )

        boundary_checks = [
            compare_boundary(
                conv1_output,
                primarycap_conv2d_input,
                "conv1_to_primarycap_conv2d",
            ),
            compare_boundary(
                primarycap_conv2d_output,
                primarycap_reshape_input,
                "primarycap_conv2d_to_reshape",
            ),
            compare_boundary(
                primarycap_reshape_output,
                primarycap_squash_input,
                "reshape_to_squash",
            ),
            compare_boundary(
                primarycap_squash_output,
                digitcaps_input,
                "squash_to_digitcaps",
            ),
            compare_boundary(
                digitcaps_output,
                capsnet_input,
                "digitcaps_to_capsnet",
            ),
        ]

        result = {
            "index": index,
            "label": label,
            "prediction": prediction,
            "correct": correct,
            "scores": scores[-1],
            "boundary_checks": boundary_checks,
            "tensor_statistics": {
                "mnist_input":
                    tensor_statistics(mnist_input),
                "quantized_conv1_output":
                    tensor_statistics(conv1_output),
                "quantized_primarycap_conv2d_output":
                    tensor_statistics(primarycap_conv2d_output),
                "quantized_primarycap_reshape_output":
                    tensor_statistics(primarycap_reshape_output),
                "primarycap_squash_output":
                    tensor_statistics(primarycap_squash_output),
                "digitcaps_output":
                    tensor_statistics(digitcaps_output),
                "capsnet_output":
                    tensor_statistics(capsnet_output),
            },
        }

        with open(
            image_dir / "result.json",
            "w",
            encoding="utf-8",
        ) as file:
            json.dump(
                result,
                file,
                indent=2,
            )

        image_results.append(
            result
        )

        print(
            f"img{index:02d}: "
            f"label={label}, "
            f"prediction={prediction}, "
            f"correct={correct}"
        )

    predictions = np.asarray(
        predictions,
        dtype=np.int64,
    )

    correct_count = int(
        np.sum(predictions == labels)
    )

    accuracy = float(
        correct_count / num_images
    )

    summary = {
        "num_images": num_images,
        "correct_count": correct_count,
        "accuracy": accuracy,
        "labels": labels.astype(int).tolist(),
        "predictions": predictions.astype(int).tolist(),
        "scores": scores,
    }

    with open(
        output_dir / "summary.json",
        "w",
        encoding="utf-8",
    ) as file:
        json.dump(
            summary,
            file,
            indent=2,
        )

    with open(
        output_dir / "pipeline_manifest.json",
        "w",
        encoding="utf-8",
    ) as file:
        json.dump(
            manifest,
            file,
            indent=2,
        )

    np.savetxt(
        output_dir / "labels.txt",
        labels,
        fmt="%d",
    )

    np.savetxt(
        output_dir / "predictions.txt",
        predictions,
        fmt="%d",
    )

    np.savetxt(
        output_dir / "capsnet_scores.txt",
        np.asarray(
            scores,
            dtype=np.float32,
        ),
        fmt="%.15f",
    )

    print("\n=== Hybrid CapsNet completed ===")
    print(f"Images processed: {num_images}")
    print(f"Correct:          {correct_count}")
    print(f"Accuracy:         {accuracy:.6f}")
    print(f"Output directory: {output_dir.resolve()}")


if __name__ == "__main__":
    main()