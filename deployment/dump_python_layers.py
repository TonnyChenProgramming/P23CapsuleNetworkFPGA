import os
import numpy as np
import tensorflow as tf
from keras import Model

from tensorflow_model_optimization.quantization.keras import vitis_quantize

from capsulenet import CapsNet, load_mnist
from capsulelayers import Length, Mask, CapsuleLayer, SquashLayer


CUSTOM_OBJECTS = {
    "Length": Length,
    "Mask": Mask,
    "CapsuleLayer": CapsuleLayer,
    "SquashLayer": SquashLayer,
}


def dump_txt(path, array):
    array = np.asarray(array).reshape(-1)
    np.savetxt(path, array, fmt="%.10f")
    print(f"Saved {path}")
    print(f"  shape_flat = {array.shape}")
    print(f"  min        = {array.min()}")
    print(f"  max        = {array.max()}")
    print(f"  mean       = {array.mean()}")
    print(f"  std        = {array.std()}")


def dump_model_output(model, x, name, out_dir):
    print(f"\nRunning {name}...")
    y = model.predict(x, batch_size=1)
    dump_txt(os.path.join(out_dir, f"{name}.txt"), y)
    return y


def main():
    out_dir = "compare_dump"
    os.makedirs(out_dir, exist_ok=True)

    image_index = 0

    print("Loading MNIST...")
    (x_train, y_train), (x_test, y_test) = load_mnist()

    x = x_test[image_index:image_index + 1]
    y = y_test[image_index:image_index + 1]

    true_label = int(np.argmax(y[0]))
    print(f"Using MNIST test image index {image_index}")
    print(f"True label = {true_label}")

    np.savetxt(
        os.path.join(out_dir, "python_input_img0.txt"),
        x.reshape(-1),
        fmt="%.10f",
    )

    print("\nBuilding golden full CapsNet...")
    _, eval_model, _ = CapsNet(
        input_shape=x_test.shape[1:],
        n_class=len(np.unique(np.argmax(y_train, 1))),
        routings=3,
    )

    print("Loading golden weights: models/trained_model.h5")
    eval_model.load_weights("models/trained_model.h5")

    print("\nCreating golden intermediate models...")

    golden_conv1_model = Model(
        inputs=eval_model.input,
        outputs=eval_model.get_layer("conv1").output,
    )

    golden_primarycap_conv2d_model = Model(
        inputs=eval_model.input,
        outputs=eval_model.get_layer("primarycap_conv2d").output,
    )

    golden_primarycap_reshape_model = Model(
        inputs=eval_model.input,
        outputs=eval_model.get_layer("primarycap_reshape").output,
    )

    golden_primarycap_squash_model = Model(
        inputs=eval_model.input,
        outputs=eval_model.get_layer("primarycap_squash").output,
    )

    golden_digitcaps_model = Model(
        inputs=eval_model.input,
        outputs=eval_model.get_layer("digitcaps").output,
    )

    golden_capsnet_model = Model(
        inputs=eval_model.input,
        outputs=eval_model.get_layer("capsnet").output,
    )

    print("\n=== Dumping golden float Keras intermediates ===")

    golden_conv1 = dump_model_output(
        golden_conv1_model,
        x,
        "golden_conv1_img0",
        out_dir,
    )

    golden_primarycap_conv2d = dump_model_output(
        golden_primarycap_conv2d_model,
        x,
        "golden_primarycap_conv2d_img0",
        out_dir,
    )

    golden_primarycap_reshape = dump_model_output(
        golden_primarycap_reshape_model,
        x,
        "golden_primarycap_reshape_img0",
        out_dir,
    )

    golden_primarycap_squash = dump_model_output(
        golden_primarycap_squash_model,
        x,
        "golden_primarycap_squash_img0",
        out_dir,
    )

    golden_digitcaps = dump_model_output(
        golden_digitcaps_model,
        x,
        "golden_digitcaps_img0",
        out_dir,
    )

    golden_capsnet = dump_model_output(
        golden_capsnet_model,
        x,
        "golden_capsnet_prediction_img0",
        out_dir,
    )

    print("\nGolden prediction:")
    print("  pred =", int(np.argmax(golden_capsnet[0])))
    print("  raw  =", golden_capsnet[0])

    print("\n=== Dumping partial_model.h5 output ===")

    golden_partial = tf.keras.models.load_model(
        "models/partial_model.h5",
        custom_objects=CUSTOM_OBJECTS,
        compile=False,
    )

    partial_squash = dump_model_output(
        golden_partial,
        x,
        "partial_model_primarycap_squash_img0",
        out_dir,
    )

    print("\n=== Dumping quantized_partial_model.h5 output ===")

    with vitis_quantize.quantize_scope(CUSTOM_OBJECTS):
        quant_partial = tf.keras.models.load_model(
            "models/quant/quantized_partial_model.h5",
            custom_objects=CUSTOM_OBJECTS,
            compile=False,
        )

    quant_partial_squash = dump_model_output(
        quant_partial,
        x,
        "quant_partial_primarycap_squash_img0",
        out_dir,
    )

    print("\n=== Dumping DigitCaps weights from golden model ===")

    digitcaps_weights = eval_model.get_layer("digitcaps").get_weights()[0]
    dump_txt(
        os.path.join(out_dir, "golden_digitcaps_weights_flat.txt"),
        digitcaps_weights,
    )

    print("\n=== Summary ===")
    print(f"True label: {true_label}")
    print(f"Golden prediction: {int(np.argmax(golden_capsnet[0]))}")
    print("Reference files saved in compare_dump/")

    print("\nImportant files for board comparison:")
    print("  golden_primarycap_reshape_img0.txt")
    print("  golden_primarycap_squash_img0.txt")
    print("  quant_partial_primarycap_squash_img0.txt")
    print("  golden_digitcaps_img0.txt")
    print("  golden_capsnet_prediction_img0.txt")
    print("  golden_digitcaps_weights_flat.txt")


if __name__ == "__main__":
    main()