#!/usr/bin/env python3
import argparse
import os
import numpy as np
import tensorflow as tf


NUM_PRIMARY_CAPS = 1152
PRIMARY_CAPS_DIM = 8
NUM_DIGITS = 10
DIGIT_CAPS_DIM = 16
ROUTING_ITERS = 3


def squash(vectors, axis=-1, eps=1e-7):
    s_squared_norm = np.sum(np.square(vectors), axis=axis, keepdims=True)
    scale = s_squared_norm / (1.0 + s_squared_norm) / np.sqrt(s_squared_norm + eps)
    return scale * vectors


def softmax(x, axis):
    x = x - np.max(x, axis=axis, keepdims=True)
    e = np.exp(x)
    return e / np.sum(e, axis=axis, keepdims=True)


def load_partial_model(path):
    class SquashLayer(tf.keras.layers.Layer):
        def call(self, vectors, axis=-1):
            s_squared_norm = tf.reduce_sum(tf.square(vectors), axis, keepdims=True)
            scale = s_squared_norm / (1.0 + s_squared_norm) / tf.sqrt(
                s_squared_norm + tf.keras.backend.epsilon()
            )
            return scale * vectors

    return tf.keras.models.load_model(
        path,
        compile=False,
        custom_objects={"SquashLayer": SquashLayer},
    )


def get_primarycaps_output(model, x):
    y = model.predict(x, batch_size=10, verbose=1)
    y = np.asarray(y, dtype=np.float32)

    print("[INFO] raw partial model output shape:", y.shape)

    if y.ndim == 2 and y.shape[1] == NUM_PRIMARY_CAPS * PRIMARY_CAPS_DIM:
        y = y.reshape(y.shape[0], NUM_PRIMARY_CAPS, PRIMARY_CAPS_DIM)
    elif y.ndim == 3 and y.shape[1:] == (NUM_PRIMARY_CAPS, PRIMARY_CAPS_DIM):
        pass
    else:
        raise ValueError(
            f"Unexpected partial model output shape {y.shape}. "
            f"Expected (N, 9216) or (N, 1152, 8)."
        )

    print("[INFO] primarycaps output shape:", y.shape)
    return y.astype(np.float32)


def load_digitcaps_weights_reference_layout(path):
    raw = np.loadtxt(path, dtype=np.float32).reshape(-1)

    expected = NUM_DIGITS * NUM_PRIMARY_CAPS * DIGIT_CAPS_DIM * PRIMARY_CAPS_DIM

    print("[INFO] raw weight count:", raw.size)
    print("[INFO] expected weight count:", expected)

    if raw.size != expected:
        raise ValueError(f"Wrong weight count: got {raw.size}, expected {expected}")

    # Keras reference:
    # W[digit][input_capsule][digit_dim][input_dim]
    # W[10][1152][16][8]
    W = raw.reshape(
        NUM_DIGITS,
        NUM_PRIMARY_CAPS,
        DIGIT_CAPS_DIM,
        PRIMARY_CAPS_DIM,
    )

    print("[INFO] W reference layout:", W.shape)
    return W.astype(np.float32)


def dynamic_routing_reference(primarycaps, W, routings=3):
    batch = primarycaps.shape[0]

    # inputs_hat[b][j][i][o] =
    #     sum_d W[j][i][o][d] * primarycaps[b][i][d]
    inputs_hat = np.einsum("jiod,bid->bjio", W, primarycaps)
    inputs_hat = inputs_hat[..., np.newaxis]

    print("[INFO] inputs_hat shape:", inputs_hat.shape)

    b = np.zeros(
        (batch, NUM_DIGITS, NUM_PRIMARY_CAPS, 1, 1),
        dtype=np.float32,
    )

    for r in range(routings):
        # Same as Keras:
        # c = layers.Softmax(axis=1)(b)
        # Softmax over digit capsule axis.
        c = softmax(b, axis=1)

        outputs = c * inputs_hat
        outputs = np.sum(outputs, axis=2, keepdims=True)

        # outputs shape:
        # [batch, digit, 1, digit_dim, 1]
        outputs = squash(outputs, axis=-2)

        print(f"[INFO] routing iter {r + 1}, outputs shape:", outputs.shape)

        if r < routings - 1:
            agreement = np.sum(
                inputs_hat * outputs,
                axis=3,
                keepdims=True,
            )
            b = b + agreement

    outputs = np.squeeze(outputs, axis=(2, 4))

    return outputs.astype(np.float32), inputs_hat.astype(np.float32)


def save_flat_txt(path, arr):
    arr = np.asarray(arr, dtype=np.float32)
    np.savetxt(path, arr.reshape(-1), fmt="%.9g")
    print("[SAVE]", path, "shape =", arr.shape, "flat_count =", arr.size)


def print_debug(name, arr, count=32):
    flat = arr.reshape(-1)
    print(f"\n===== {name} =====")
    print("shape:", arr.shape)
    for i in range(min(count, flat.size)):
        print(f"{i:04d}: {flat[i]: .8f}")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--model", default="models/partial_model.h5")
    parser.add_argument("--weights", default="digitcaps_weights.txt")
    parser.add_argument("--out-dir", default="compare_dump")
    parser.add_argument("--prefix", default="python_ref_first10")
    args = parser.parse_args()

    os.makedirs(args.out_dir, exist_ok=True)

    print("[INFO] TensorFlow:", tf.__version__)
    print("[INFO] model:", args.model)
    print("[INFO] weights:", args.weights)
    print("[INFO] out_dir:", args.out_dir)

    (_, _), (x_test, y_test) = tf.keras.datasets.mnist.load_data()

    x = x_test[:10].astype(np.float32) / 255.0
    x = np.expand_dims(x, axis=-1)

    y_true = y_test[:10].astype(np.int32)

    print("[INFO] x shape:", x.shape)
    print("[INFO] y_true:", y_true)

    model = load_partial_model(args.model)
    model.summary()

    primarycaps = get_primarycaps_output(model, x)

    W = load_digitcaps_weights_reference_layout(args.weights)

    digitcaps, inputs_hat = dynamic_routing_reference(
        primarycaps,
        W,
        routings=ROUTING_ITERS,
    )

    lengths = np.sqrt(np.sum(np.square(digitcaps), axis=-1) + 1e-7).astype(np.float32)
    pred = np.argmax(lengths, axis=1).astype(np.int32)

    print_debug("primarycaps image 0", primarycaps[0], count=64)
    print_debug("W reference layout", W, count=64)
    print_debug("inputs_hat image 0", inputs_hat[0], count=64)
    print_debug("digitcaps image 0", digitcaps[0], count=160)
    print_debug("lengths", lengths, count=100)

    print("\n===== FINAL RESULT =====")
    for i in range(10):
        print(
            f"image {i}: true={y_true[i]}, pred={pred[i]}, "
            f"lengths={np.array2string(lengths[i], precision=6, suppress_small=False)}"
        )

    base = os.path.join(args.out_dir, args.prefix)

    # Python-friendly binary dumps.
    np.save(base + "_primarycaps.npy", primarycaps)
    np.save(base + "_weights_ref_layout.npy", W)
    np.save(base + "_inputs_hat.npy", inputs_hat)
    np.save(base + "_digitcaps.npy", digitcaps)
    np.save(base + "_lengths.npy", lengths)
    np.save(base + "_pred.npy", pred)
    np.save(base + "_true.npy", y_true)

    # C++-friendly flat text dumps.
    save_flat_txt(base + "_primarycaps.txt", primarycaps)
    save_flat_txt(base + "_weights_ref_layout.txt", W)
    save_flat_txt(base + "_inputs_hat.txt", inputs_hat)
    save_flat_txt(base + "_digitcaps.txt", digitcaps)
    save_flat_txt(base + "_lengths.txt", lengths)

    np.savetxt(base + "_pred.txt", pred, fmt="%d")
    np.savetxt(base + "_true.txt", y_true, fmt="%d")

    # Also create simpler names for your C++ testbench.
    save_flat_txt(os.path.join(args.out_dir, "first10_primarycaps_from_h5.txt"), primarycaps)
    save_flat_txt(os.path.join(args.out_dir, "first10_weights_ref_layout.txt"), W)
    save_flat_txt(os.path.join(args.out_dir, "first10_python_inputs_hat.txt"), inputs_hat)
    save_flat_txt(os.path.join(args.out_dir, "first10_python_digitcaps.txt"), digitcaps)
    save_flat_txt(os.path.join(args.out_dir, "first10_python_lengths.txt"), lengths)

    np.savetxt(os.path.join(args.out_dir, "first10_python_pred.txt"), pred, fmt="%d")
    np.savetxt(os.path.join(args.out_dir, "first10_labels.txt"), y_true, fmt="%d")

    print("\n[INFO] Done.")
    print("[INFO] Main files for C++:")
    print("  compare_dump/first10_primarycaps_from_h5.txt")
    print("  compare_dump/first10_weights_ref_layout.txt")
    print("  compare_dump/first10_python_inputs_hat.txt")
    print("  compare_dump/first10_python_digitcaps.txt")
    print("  compare_dump/first10_python_lengths.txt")
    print("  compare_dump/first10_python_pred.txt")
    print("  compare_dump/first10_labels.txt")


if __name__ == "__main__":
    main()