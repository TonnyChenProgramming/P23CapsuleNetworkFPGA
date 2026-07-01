import os
import argparse
import tensorflow as tf

from tensorflow_model_optimization.quantization.keras import vitis_quantize

from capsulenet import load_mnist
from capsulelayers import Length, Mask, CapsuleLayer, SquashLayer


CUSTOM_OBJECTS = {
    "Length": Length,
    "Mask": Mask,
    "CapsuleLayer": CapsuleLayer,
    "SquashLayer": SquashLayer,
}


def quantize_one_model(
    input_model_path,
    output_model_path,
    calibration_data,
    dump_output_dir=None,
):
    """
    Load, calibrate, quantize, and save one extracted Keras model.

    Args:
        input_model_path:
            Path to the floating-point .h5 model.

        output_model_path:
            Path for the generated quantized .h5 model.

        calibration_data:
            Representative input images used by Vitis AI calibration.

        dump_output_dir:
            Optional directory for dumping quantized layer outputs.
    """

    print("\n============================================================")
    print("Quantizing model")
    print("============================================================")
    print(f"Input model:  {os.path.abspath(input_model_path)}")
    print(f"Output model: {os.path.abspath(output_model_path)}")

    if not os.path.isfile(input_model_path):
        raise FileNotFoundError(
            f"Input model does not exist: {input_model_path}"
        )

    print("\nLoading floating-point Keras model...")

    float_model = tf.keras.models.load_model(
        input_model_path,
        custom_objects=CUSTOM_OBJECTS,
        compile=False,
    )

    print("\nFloating-point model summary:")
    float_model.summary()

    print("\nCreating Vitis AI quantizer...")

    quantizer = vitis_quantize.VitisQuantizer(
        float_model,
        quantize_strategy="pof2s",
        custom_objects=CUSTOM_OBJECTS,
    )

    print("\nRunning calibration and quantization...")
    print(f"Calibration dataset shape: {calibration_data.shape}")
    print(f"Calibration image count:   {len(calibration_data)}")

    quantized_model = quantizer.quantize_model(
        calib_dataset=calibration_data,
        add_shape_info=True,
        separate_conv_act=False,
    )

    output_directory = os.path.dirname(output_model_path)

    if output_directory:
        os.makedirs(output_directory, exist_ok=True)

    print("\nSaving quantized model...")

    quantized_model.save(output_model_path)

    print(f"Saved quantized model:")
    print(f"  {os.path.abspath(output_model_path)}")

    if dump_output_dir is not None:
        os.makedirs(dump_output_dir, exist_ok=True)

        print("\nDumping quantized model outputs...")
        print(f"Dump directory:")
        print(f"  {os.path.abspath(dump_output_dir)}")

        # Dump one image only. Calibration still uses all 10,000 images.
        vitis_quantize.VitisQuantizer.dump_model(
            model=quantized_model,
            dataset=calibration_data[0:1],
            output_dir=dump_output_dir,
            dump_float=True,
        )

    return quantized_model


def main():
    parser = argparse.ArgumentParser(
        description=(
            "Quantize the first three extracted CapsNet partial models "
            "using all 10,000 MNIST test images for calibration."
        )
    )

    parser.add_argument(
        "--model_dir",
        default="models",
        help=(
            "Directory containing conv1_model.h5, "
            "primarycap_conv2d_model.h5, and "
            "primarycap_reshape_model.h5. "
            "Default: models"
        ),
    )

    parser.add_argument(
        "--save_dir",
        default=os.path.join("models", "quant"),
        help=(
            "Directory in which the quantized models will be saved. "
            "Default: models/quant"
        ),
    )

    parser.add_argument(
        "--dump",
        action="store_true",
        help=(
            "Dump one sample of each quantized model's layer outputs "
            "for debugging."
        ),
    )

    parser.add_argument(
        "--dump_dir",
        default="dump_results",
        help=(
            "Root directory for dumped quantization outputs. "
            "Default: dump_results"
        ),
    )

    args = parser.parse_args()

    print(args)

    print("\nLoading MNIST dataset...")

    (_, _), (x_test, _) = load_mnist()

    # Use all 10,000 MNIST test samples, matching the original quantizer.
    calibration_data = x_test

    print("\n=== Calibration dataset ===")
    print(f"Shape:       {calibration_data.shape}")
    print(f"Image count: {len(calibration_data)}")
    print(f"Data type:   {calibration_data.dtype}")
    print(f"Minimum:     {calibration_data.min()}")
    print(f"Maximum:     {calibration_data.max()}")

    if len(calibration_data) != 10000:
        print(
            "Warning: expected 10,000 MNIST test samples, "
            f"but found {len(calibration_data)}."
        )

    os.makedirs(args.save_dir, exist_ok=True)

    model_jobs = [
        {
            "input_filename": "conv1_model.h5",
            "output_filename": "quantized_conv1_model.h5",
            "dump_subdirectory": "conv1_model",
        },
        {
            "input_filename": "primarycap_conv2d_model.h5",
            "output_filename": "quantized_primarycap_conv2d_model.h5",
            "dump_subdirectory": "primarycap_conv2d_model",
        },
        {
            "input_filename": "primarycap_reshape_model.h5",
            "output_filename": "quantized_primarycap_reshape_model.h5",
            "dump_subdirectory": "primarycap_reshape_model",
        },
    ]

    generated_models = []

    for job in model_jobs:
        input_model_path = os.path.join(
            args.model_dir,
            job["input_filename"],
        )

        output_model_path = os.path.join(
            args.save_dir,
            job["output_filename"],
        )

        dump_output_dir = None

        if args.dump:
            dump_output_dir = os.path.join(
                args.dump_dir,
                job["dump_subdirectory"],
            )

        quantize_one_model(
            input_model_path=input_model_path,
            output_model_path=output_model_path,
            calibration_data=calibration_data,
            dump_output_dir=dump_output_dir,
        )

        generated_models.append(output_model_path)

    print("\n============================================================")
    print("Quantization complete")
    print("============================================================")

    for model_path in generated_models:
        print(os.path.abspath(model_path))


if __name__ == "__main__":
    main()

