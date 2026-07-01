import os
import argparse
import numpy as np
import tensorflow as tf

from keras import Model, Input
from keras import backend as K

from capsulenet import CapsNet, load_mnist


CUMULATIVE_LAYER_NAMES = [
    "conv1",
    "primarycap_conv2d",
    "primarycap_reshape",
    "primarycap_squash",
    "digitcaps",
    "capsnet",
]

EXPECTED_SHAPES = {
    "conv1": (None, 20, 20, 256),
    "primarycap_conv2d": (None, 6, 6, 256),
    "primarycap_reshape": (None, 1152, 8),
    "primarycap_squash": (None, 1152, 8),
    "digitcaps": (None, 10, 16),
    "capsnet": (None, 10),
}


def ensure_required_layers(model):
    available = {layer.name for layer in model.layers}
    missing = [
        name for name in CUMULATIVE_LAYER_NAMES
        if name not in available
    ]

    if missing:
        print("\nAvailable layers:")
        for layer in model.layers:
            print(f"  {layer.name:<30} {layer.__class__.__name__}")

        raise RuntimeError(
            "Missing required layers: " + ", ".join(missing)
        )


def load_full_capsnet(weights_path):
    """
    Rebuild and load the original evaluation CapsNet.
    """
    (x_train, y_train), (x_test, y_test) = load_mnist()
    n_class = y_train.shape[1]

    _, eval_model, _ = CapsNet(
        input_shape=x_test.shape[1:],
        n_class=n_class,
        routings=3,
    )

    if not os.path.isfile(weights_path):
        raise FileNotFoundError(
            f"Could not find weights: {os.path.abspath(weights_path)}"
        )

    print(f"Loading trained weights from: {os.path.abspath(weights_path)}")
    eval_model.load_weights(weights_path)

    ensure_required_layers(eval_model)

    return eval_model, x_test, y_test


def build_cumulative_models(full_model):
    """
    Build cumulative models that all accept an MNIST image as input.

    Example:
        digitcaps_cumulative:
            image -> conv1 -> primarycap_conv2d -> reshape
                  -> squash -> digitcaps
    """
    models = {}

    for layer_name in CUMULATIVE_LAYER_NAMES:
        models[layer_name] = Model(
            inputs=full_model.input,
            outputs=full_model.get_layer(layer_name).output,
            name=f"{layer_name}_cumulative",
        )

    return models


def clone_stage_layer(source_layer, stage_input, stage_name):
    """
    Apply an existing trained layer to a new Input tensor.

    This creates a true standalone stage model while copying the
    source layer weights.
    """
    config = source_layer.get_config()
    config["name"] = f"{source_layer.name}_standalone_layer"

    cloned_layer = source_layer.__class__.from_config(config)
    stage_output = cloned_layer(stage_input)

    if source_layer.get_weights():
        cloned_layer.set_weights(source_layer.get_weights())

    return Model(
        inputs=stage_input,
        outputs=stage_output,
        name=stage_name,
    )


def build_standalone_models(full_model):
    """
    Build true standalone stage models.

    Each model accepts only the output tensor from the previous stage:

        conv1:
            (28, 28, 1) -> (20, 20, 256)

        primarycap_conv2d:
            (20, 20, 256) -> (6, 6, 256)

        primarycap_reshape:
            (6, 6, 256) -> (1152, 8)

        primarycap_squash:
            (1152, 8) -> (1152, 8)

        digitcaps:
            (1152, 8) -> (10, 16)

        capsnet:
            (10, 16) -> (10,)
    """
    standalone = {}

    # conv1
    inp = Input(shape=(28, 28, 1), name="conv1_input")
    standalone["conv1"] = clone_stage_layer(
        full_model.get_layer("conv1"),
        inp,
        "conv1_standalone",
    )

    # primarycap_conv2d
    inp = Input(shape=(20, 20, 256), name="primarycap_conv2d_input")
    standalone["primarycap_conv2d"] = clone_stage_layer(
        full_model.get_layer("primarycap_conv2d"),
        inp,
        "primarycap_conv2d_standalone",
    )

    # primarycap_reshape
    inp = Input(shape=(6, 6, 256), name="primarycap_reshape_input")
    standalone["primarycap_reshape"] = clone_stage_layer(
        full_model.get_layer("primarycap_reshape"),
        inp,
        "primarycap_reshape_standalone",
    )

    # primarycap_squash
    inp = Input(shape=(1152, 8), name="primarycap_squash_input")
    standalone["primarycap_squash"] = clone_stage_layer(
        full_model.get_layer("primarycap_squash"),
        inp,
        "primarycap_squash_standalone",
    )

    # digitcaps
    inp = Input(shape=(1152, 8), name="digitcaps_input")
    standalone["digitcaps"] = clone_stage_layer(
        full_model.get_layer("digitcaps"),
        inp,
        "digitcaps_standalone",
    )

    # capsnet length
    inp = Input(shape=(10, 16), name="capsnet_input")
    standalone["capsnet"] = clone_stage_layer(
        full_model.get_layer("capsnet"),
        inp,
        "capsnet_standalone",
    )

    return standalone


def validate_model_shapes(models, batch_size):
    for name, model in models.items():
        expected = list(EXPECTED_SHAPES[name])
        expected[0] = batch_size
        actual = tuple(model.output_shape)

        if actual[1:] != tuple(expected[1:]):
            raise RuntimeError(
                f"{model.name} output shape {actual} does not match "
                f"expected (*, {expected[1:]})."
            )


def compare_arrays(name, reference, candidate, rtol, atol):
    reference = np.asarray(reference)
    candidate = np.asarray(candidate)

    if reference.shape != candidate.shape:
        raise RuntimeError(
            f"{name}: shape mismatch: "
            f"reference={reference.shape}, candidate={candidate.shape}"
        )

    diff = np.abs(reference - candidate)

    print(f"\n{name}")
    print(f"  shape                    = {reference.shape}")
    print(f"  mean absolute difference = {diff.mean():.12e}")
    print(f"  max absolute difference  = {diff.max():.12e}")
    print(f"  all finite               = "
          f"{np.all(np.isfinite(candidate))}")

    if not np.all(np.isfinite(candidate)):
        raise RuntimeError(f"{name}: candidate contains NaN or Inf.")

    if not np.allclose(reference, candidate, rtol=rtol, atol=atol):
        mismatch_count = np.count_nonzero(
            ~np.isclose(reference, candidate, rtol=rtol, atol=atol)
        )
        raise RuntimeError(
            f"{name}: numerical mismatch. "
            f"{mismatch_count}/{reference.size} elements exceed tolerance."
        )


def run_standalone_chain(standalone_models, images):
    """
    Run images through all six standalone models in sequence.
    """
    outputs = {}

    x = images

    for name in CUMULATIVE_LAYER_NAMES:
        x = standalone_models[name](x, training=False).numpy()
        outputs[name] = x

    return outputs


def run_cumulative_models(cumulative_models, images):
    """
    Run every cumulative model from the same image input.
    """
    outputs = {}

    for name in CUMULATIVE_LAYER_NAMES:
        outputs[name] = cumulative_models[name](
            images,
            training=False,
        ).numpy()

    return outputs


def validate_first_ten(
    full_model,
    cumulative_models,
    standalone_models,
    x_test,
    y_test,
    rtol,
    atol,
):
    """
    Validate the first 10 MNIST samples.

    Checks:
      1. Full CapsNet final output.
      2. Every cumulative model output.
      3. Every standalone stage chained in sequence.
      4. Cumulative output == chained standalone output at every stage.
      5. Full CapsNet output == cumulative capsnet output.
      6. Full CapsNet output == standalone-chain capsnet output.
      7. Predicted classes are identical.
    """
    images = np.asarray(x_test[:10], dtype=np.float32)
    labels = np.argmax(y_test[:10], axis=1)

    print("\n=== Running first 10 MNIST samples ===")

    # Full evaluation model may have multiple outputs.
    full_raw = full_model(images, training=False)

    if isinstance(full_raw, (list, tuple)):
        full_capsnet = np.asarray(full_raw[0])
    else:
        full_capsnet = np.asarray(full_raw)

    cumulative_outputs = run_cumulative_models(
        cumulative_models,
        images,
    )

    standalone_outputs = run_standalone_chain(
        standalone_models,
        images,
    )

    # Compare each standalone stage against the matching cumulative model.
    for name in CUMULATIVE_LAYER_NAMES:
        compare_arrays(
            name=f"{name}: cumulative vs standalone chain",
            reference=cumulative_outputs[name],
            candidate=standalone_outputs[name],
            rtol=rtol,
            atol=atol,
        )

    # Compare final outputs against full CapsNet.
    compare_arrays(
        name="full CapsNet vs cumulative capsnet",
        reference=full_capsnet,
        candidate=cumulative_outputs["capsnet"],
        rtol=rtol,
        atol=atol,
    )

    compare_arrays(
        name="full CapsNet vs standalone-chain capsnet",
        reference=full_capsnet,
        candidate=standalone_outputs["capsnet"],
        rtol=rtol,
        atol=atol,
    )

    full_pred = np.argmax(full_capsnet, axis=1)
    cumulative_pred = np.argmax(
        cumulative_outputs["capsnet"],
        axis=1,
    )
    standalone_pred = np.argmax(
        standalone_outputs["capsnet"],
        axis=1,
    )

    print("\n=== First 10 predictions ===")
    print("index | label | full | cumulative | standalone")
    print("------+-------+------+------------+-----------")

    for i in range(10):
        print(
            f"{i:5d} | "
            f"{labels[i]:5d} | "
            f"{full_pred[i]:4d} | "
            f"{cumulative_pred[i]:10d} | "
            f"{standalone_pred[i]:9d}"
        )

    if not np.array_equal(full_pred, cumulative_pred):
        raise RuntimeError(
            "Full-model and cumulative-model predictions differ."
        )

    if not np.array_equal(full_pred, standalone_pred):
        raise RuntimeError(
            "Full-model and standalone-chain predictions differ."
        )

    print("\nAll first-10 MNIST consistency checks passed.")


def save_models(models, directory, suffix):
    os.makedirs(directory, exist_ok=True)

    saved = []

    for name, model in models.items():
        path = os.path.join(
            directory,
            f"{name}_{suffix}.h5",
        )

        model.save(path)
        saved.append(os.path.abspath(path))
        print(f"Saved: {os.path.abspath(path)}")

    return saved


def main():
    parser = argparse.ArgumentParser(
        description=(
            "Create cumulative and true standalone CapsNet partial models, "
            "then validate the first 10 MNIST samples against the full model."
        )
    )

    parser.add_argument(
        "--weights",
        default=os.path.join("models", "trained_model.h5"),
        help="Path to trained CapsNet weights.",
    )

    parser.add_argument(
        "--save_dir",
        default="models",
        help="Base output directory.",
    )

    parser.add_argument(
        "--rtol",
        type=float,
        default=1e-5,
        help="Relative tolerance for numerical comparisons.",
    )

    parser.add_argument(
        "--atol",
        type=float,
        default=1e-6,
        help="Absolute tolerance for numerical comparisons.",
    )

    parser.add_argument(
        "--skip_test",
        action="store_true",
        help="Save models without running the first-10 consistency test.",
    )

    args = parser.parse_args()

    np.random.seed(0)
    tf.random.set_seed(0)

    full_model, x_test, y_test = load_full_capsnet(
        args.weights
    )

    print("\n=== Building cumulative models ===")
    cumulative_models = build_cumulative_models(full_model)

    print("\n=== Building standalone stage models ===")
    standalone_models = build_standalone_models(full_model)

    validate_model_shapes(cumulative_models, batch_size=10)
    validate_model_shapes(standalone_models, batch_size=10)

    cumulative_dir = os.path.join(
        args.save_dir,
        "cumulative",
    )
    standalone_dir = os.path.join(
        args.save_dir,
        "standalone",
    )

    print("\n=== Saving cumulative models ===")
    save_models(
        cumulative_models,
        cumulative_dir,
        "cumulative",
    )

    print("\n=== Saving standalone models ===")
    save_models(
        standalone_models,
        standalone_dir,
        "standalone",
    )

    if not args.skip_test:
        validate_first_ten(
            full_model=full_model,
            cumulative_models=cumulative_models,
            standalone_models=standalone_models,
            x_test=x_test,
            y_test=y_test,
            rtol=args.rtol,
            atol=args.atol,
        )

    print("\n=== Completed successfully ===")
    print(f"Cumulative models: {os.path.abspath(cumulative_dir)}")
    print(f"Standalone models: {os.path.abspath(standalone_dir)}")


if __name__ == "__main__":
    main()
