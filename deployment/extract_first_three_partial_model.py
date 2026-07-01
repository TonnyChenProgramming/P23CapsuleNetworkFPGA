import os
import argparse
import numpy as np

from keras import Model

from capsulenet import CapsNet, load_mnist


def extract_first_three_partial_models(evaluate=False):
    """
    Build the original CapsNet, load the trained weights, and extract
    three cumulative partial models:

        1. input -> conv1
        2. input -> conv1 -> primarycap_conv2d
        3. input -> conv1 -> primarycap_conv2d -> primarycap_reshape

    Returns:
        conv1_model
        primarycap_conv2d_model
        primarycap_reshape_model
        x_test
    """

    # Load MNIST dataset.
    (x_train, y_train), (x_test, y_test) = load_mnist()

    # Determine the number of classes.
    n_class = len(np.unique(np.argmax(y_train, axis=1)))

    # Rebuild the original pretrained CapsNet architecture.
    _, eval_model, _ = CapsNet(
        input_shape=x_test.shape[1:],
        n_class=n_class,
        routings=3,
    )

    # Load trained CapsNet weights.
    weights_path = os.path.join("models", "trained_model.h5")

    if not os.path.isfile(weights_path):
        raise FileNotFoundError(
            f"Could not find trained model weights: {weights_path}"
        )

    print(f"Loading trained weights from: {weights_path}")
    eval_model.load_weights(weights_path)

    print("\n=== Full eval_model ===")
    eval_model.summary()

    # ---------------------------------------------------------------
    # Model 1: input -> conv1
    # ---------------------------------------------------------------
    conv1_model = Model(
        inputs=eval_model.input,
        outputs=eval_model.get_layer("conv1").output,
        name="conv1_model",
    )

    print("\n=== conv1_model ===")
    conv1_model.summary()

    # ---------------------------------------------------------------
    # Model 2: input -> conv1 -> primarycap_conv2d
    # ---------------------------------------------------------------
    primarycap_conv2d_model = Model(
        inputs=eval_model.input,
        outputs=eval_model.get_layer("primarycap_conv2d").output,
        name="primarycap_conv2d_model",
    )

    print("\n=== primarycap_conv2d_model ===")
    primarycap_conv2d_model.summary()

    # ---------------------------------------------------------------
    # Model 3:
    # input -> conv1 -> primarycap_conv2d -> primarycap_reshape
    # ---------------------------------------------------------------
    primarycap_reshape_model = Model(
        inputs=eval_model.input,
        outputs=eval_model.get_layer("primarycap_reshape").output,
        name="primarycap_reshape_model",
    )

    print("\n=== primarycap_reshape_model ===")
    primarycap_reshape_model.summary()

    if evaluate:
        validate_partial_models(
            conv1_model=conv1_model,
            primarycap_conv2d_model=primarycap_conv2d_model,
            primarycap_reshape_model=primarycap_reshape_model,
            x_test=x_test,
        )

    return (
        conv1_model,
        primarycap_conv2d_model,
        primarycap_reshape_model,
    )


def print_output_statistics(model_name, output):
    """
    Print basic output information for one extracted model.
    """

    output = np.asarray(output)

    print(f"\n{model_name}")
    print(f"  output shape   = {output.shape}")
    print(f"  element count  = {output.size}")
    print(f"  minimum        = {output.min()}")
    print(f"  maximum        = {output.max()}")
    print(f"  mean           = {output.mean()}")
    print(f"  standard dev   = {output.std()}")
    print(f"  all finite     = {np.all(np.isfinite(output))}")


def validate_partial_models(
    conv1_model,
    primarycap_conv2d_model,
    primarycap_reshape_model,
    x_test,
):
    """
    Run one MNIST image through each extracted model.

    This is not classification-accuracy testing. These models output
    intermediate tensors rather than final class predictions.
    """

    print("\n=== Validating extracted partial models ===")

    sample = x_test[0:1]

    conv1_output = conv1_model.predict(
        sample,
        batch_size=1,
        verbose=0,
    )

    primarycap_conv2d_output = primarycap_conv2d_model.predict(
        sample,
        batch_size=1,
        verbose=0,
    )

    primarycap_reshape_output = primarycap_reshape_model.predict(
        sample,
        batch_size=1,
        verbose=0,
    )

    print_output_statistics(
        "conv1_model",
        conv1_output,
    )

    print_output_statistics(
        "primarycap_conv2d_model",
        primarycap_conv2d_output,
    )

    print_output_statistics(
        "primarycap_reshape_model",
        primarycap_reshape_output,
    )

    # Expected output shapes for one MNIST image.
    expected_shapes = {
        "conv1_model": (1, 20, 20, 256),
        "primarycap_conv2d_model": (1, 6, 6, 256),
        "primarycap_reshape_model": (1, 1152, 8),
    }

    actual_outputs = {
        "conv1_model": conv1_output,
        "primarycap_conv2d_model": primarycap_conv2d_output,
        "primarycap_reshape_model": primarycap_reshape_output,
    }

    for model_name, expected_shape in expected_shapes.items():
        actual_shape = actual_outputs[model_name].shape

        if actual_shape != expected_shape:
            raise RuntimeError(
                f"{model_name} produced shape {actual_shape}, "
                f"but expected {expected_shape}."
            )

        if not np.all(np.isfinite(actual_outputs[model_name])):
            raise RuntimeError(
                f"{model_name} output contains NaN or Inf values."
            )

    # Verify reshape preserves the same flattened values as Conv2D output.
    conv2d_flat = primarycap_conv2d_output.reshape(-1)
    reshape_flat = primarycap_reshape_output.reshape(-1)

    max_reshape_difference = np.max(
        np.abs(conv2d_flat - reshape_flat)
    )

    print("\nReshape consistency check:")
    print(
        f"  maximum difference between "
        f"primarycap_conv2d and primarycap_reshape = "
        f"{max_reshape_difference}"
    )

    if not np.allclose(
        conv2d_flat,
        reshape_flat,
        rtol=1e-6,
        atol=1e-7,
    ):
        raise RuntimeError(
            "primarycap_reshape does not preserve the flattened "
            "primarycap_conv2d output."
        )

    print("\nAll extracted-model validation checks passed.")


def main():
    parser = argparse.ArgumentParser(
        description=(
            "Extract the first three cumulative partial models "
            "from the trained Capsule Network."
        )
    )

    parser.add_argument(
        "-t",
        "--test",
        action="store_true",
        help="Run one MNIST sample through each extracted model.",
    )

    parser.add_argument(
        "--save_dir",
        default="models",
        help=(
            "Directory in which extracted models will be saved. "
            "Default: models"
        ),
    )

    args = parser.parse_args()

    print(args)

    os.makedirs(args.save_dir, exist_ok=True)

    (
        conv1_model,
        primarycap_conv2d_model,
        primarycap_reshape_model,
    ) = extract_first_three_partial_models(
        evaluate=args.test
    )

    # Output file paths.
    conv1_path = os.path.join(
        args.save_dir,
        "conv1_model.h5",
    )

    primarycap_conv2d_path = os.path.join(
        args.save_dir,
        "primarycap_conv2d_model.h5",
    )

    primarycap_reshape_path = os.path.join(
        args.save_dir,
        "primarycap_reshape_model.h5",
    )

    # Save all three models.
    print("\n=== Saving extracted models ===")

    conv1_model.save(conv1_path)
    print(f"Saved: {os.path.abspath(conv1_path)}")

    primarycap_conv2d_model.save(primarycap_conv2d_path)
    print(
        f"Saved: {os.path.abspath(primarycap_conv2d_path)}"
    )

    primarycap_reshape_model.save(primarycap_reshape_path)
    print(
        f"Saved: {os.path.abspath(primarycap_reshape_path)}"
    )

    print("\n=== Generated files ===")
    print(f"1. {os.path.abspath(conv1_path)}")
    print(f"2. {os.path.abspath(primarycap_conv2d_path)}")
    print(f"3. {os.path.abspath(primarycap_reshape_path)}")


if __name__ == "__main__":
    main()
