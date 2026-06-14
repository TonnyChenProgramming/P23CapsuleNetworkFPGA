import os
import numpy as np
import tensorflow as tf
from keras import Model

from capsulenet import CapsNet, load_mnist
from capsulelayers import Length, Mask, CapsuleLayer, SquashLayer
from tensorflow_model_optimization.quantization.keras import vitis_quantize

CUSTOM_OBJECTS = {
    "Length": Length,
    "Mask": Mask,
    "CapsuleLayer": CapsuleLayer,
    "SquashLayer": SquashLayer,
}


def summarize_diff(name, golden, quant):
    golden = golden.reshape(golden.shape[0], -1)
    quant = quant.reshape(quant.shape[0], -1)

    diff = golden - quant

    max_abs = np.max(np.abs(diff))
    mean_abs = np.mean(np.abs(diff))
    rms = np.sqrt(np.mean(diff * diff))

    cosine = []
    corr = []

    for i in range(golden.shape[0]):
        g = golden[i]
        q = quant[i]

        g_norm = np.linalg.norm(g)
        q_norm = np.linalg.norm(q)

        if g_norm > 0 and q_norm > 0:
            cosine.append(np.dot(g, q) / (g_norm * q_norm))

        if np.std(g) > 0 and np.std(q) > 0:
            corr.append(np.corrcoef(g, q)[0, 1])

    print("\n===", name, "===")
    print("golden shape:", golden.shape)
    print("quant shape :", quant.shape)
    print("golden min/max:", golden.min(), golden.max())
    print("quant  min/max:", quant.min(), quant.max())
    print("max abs diff :", max_abs)
    print("mean abs diff:", mean_abs)
    print("RMS diff     :", rms)
    print("mean cosine  :", np.mean(cosine))
    print("mean corr    :", np.mean(corr))


def main():
    num_images = 1000
    batch_size = 100

    print("Loading MNIST...")
    (x_train, y_train), (x_test, y_test) = load_mnist()

    x = x_test[:num_images]
    y = y_test[:num_images]

    print("Loading golden partial model...")
    golden_partial = tf.keras.models.load_model(
        "models/partial_model.h5",
        custom_objects=CUSTOM_OBJECTS,
        compile=False,
    )

    print("Loading quantized partial model...")
    with vitis_quantize.quantize_scope(CUSTOM_OBJECTS):
        quant_partial = tf.keras.models.load_model(
            "models/quant/quantized_partial_model.h5",
            custom_objects=CUSTOM_OBJECTS,
            compile=False,
        )

    print("Running golden partial inference...")
    golden_out = golden_partial.predict(x, batch_size=batch_size)

    print("Running quantized partial inference...")
    quant_out = quant_partial.predict(x, batch_size=batch_size)

    summarize_diff("primarycap_squash: golden partial vs quantized partial",
                   golden_out, quant_out)

    os.makedirs("compare_dump", exist_ok=True)

    np.savetxt("compare_dump/golden_partial_squash_img0.txt",
               golden_out[0].reshape(-1))
    np.savetxt("compare_dump/quant_partial_squash_img0.txt",
               quant_out[0].reshape(-1))

    print("\nSaved:")
    print("compare_dump/golden_partial_squash_img0.txt")
    print("compare_dump/quant_partial_squash_img0.txt")

    # Now test whether quantized partial output still works with golden DigitCaps.
    print("\nBuilding DigitCaps tail model from trained_model.h5...")

    _, eval_model, _ = CapsNet(
        input_shape=x_test.shape[1:],
        n_class=len(np.unique(np.argmax(y_train, 1))),
        routings=3,
    )

    eval_model.load_weights("models/trained_model.h5")

    tail_input = tf.keras.Input(shape=(1152, 8), name="tail_primarycap_squash_input")
    digitcaps_out = eval_model.get_layer("digitcaps")(tail_input)
    capsnet_out = eval_model.get_layer("capsnet")(digitcaps_out)
    tail_model = Model(inputs=tail_input, outputs=capsnet_out)

    print("Running golden full model prediction...")
    full_pred = eval_model.predict(x, batch_size=batch_size)

    if isinstance(full_pred, list):
        full_pred = full_pred[0]

    print("Running hybrid prediction: quantized partial output + golden DigitCaps...")
    hybrid_pred = tail_model.predict(quant_out, batch_size=batch_size)

    golden_acc = np.mean(np.argmax(full_pred, axis=1) == np.argmax(y, axis=1))
    hybrid_acc = np.mean(np.argmax(hybrid_pred, axis=1) == np.argmax(y, axis=1))

    print("\n=== Classification check ===")
    print("Golden full model acc on", num_images, "images:", golden_acc)
    print("Quant partial + golden DigitCaps acc on", num_images, "images:", hybrid_acc)

    print("\nImage 0:")
    print("true label:", np.argmax(y[0]))
    print("golden pred:", np.argmax(full_pred[0]), full_pred[0])
    print("hybrid pred:", np.argmax(hybrid_pred[0]), hybrid_pred[0])

    np.savetxt("compare_dump/golden_capsnet_pred_img0.txt",
               full_pred[0].reshape(-1))
    np.savetxt("compare_dump/hybrid_quant_partial_capsnet_pred_img0.txt",
               hybrid_pred[0].reshape(-1))


if __name__ == "__main__":
    main()