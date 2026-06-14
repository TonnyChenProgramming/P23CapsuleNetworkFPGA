import os
import numpy as np

from capsulenet import CapsNet, load_mnist
from capsulelayers import CapsuleLayer, Length, Mask, SquashLayer


CUSTOM_OBJECTS = {
    "CapsuleLayer": CapsuleLayer,
    "Length": Length,
    "Mask": Mask,
    "SquashLayer": SquashLayer,
}


def main():
    weights_path = "models/trained_model.h5"
    output_path = "weights/digitcaps_weights.txt"

    print("Loading MNIST shape info...")
    (x_train, y_train), (x_test, y_test) = load_mnist()

    print("Building eval_model...")
    _, eval_model, _ = CapsNet(
        input_shape=x_test.shape[1:],
        n_class=10,
        routings=3,
    )

    print(f"Loading weights from: {weights_path}")
    eval_model.load_weights(weights_path)

    print("\n=== eval_model layers ===")
    for i, layer in enumerate(eval_model.layers):
        try:
            print(i, layer.name, layer.output_shape)
        except Exception:
            print(i, layer.name)

    digitcaps_layer = eval_model.get_layer("digitcaps")
    digitcaps_weights = digitcaps_layer.get_weights()

    print("\nNumber of weight arrays in digitcaps:", len(digitcaps_weights))

    for i, w in enumerate(digitcaps_weights):
        print(
            f"digitcaps weight[{i}] shape = {w.shape}, "
            f"min = {w.min()}, max = {w.max()}, "
            f"mean = {w.mean()}, std = {w.std()}"
        )

    W = digitcaps_weights[0]

    print("\nExpected DigitCaps weight shape should usually be:")
    print("(10, 1152, 16, 8)")
    print("Actual W.shape =", W.shape)

    flat = W.reshape(-1)

    print("Flattened weight count:", flat.size)
    print("Expected count:", 10 * 1152 * 16 * 8)

    if flat.size != 10 * 1152 * 16 * 8:
        raise RuntimeError("Unexpected DigitCaps weight count.")

    np.savetxt(output_path, flat, fmt="%.10f")

    print(f"\nSaved DigitCaps weights to: {output_path}")
    print("First 16 flattened values:")
    for i in range(16):
        print(i, flat[i])

    # Optional: compare with Nicholas' existing text file if available.
    possible_existing_paths = [
        "models/digitcaps_weights.txt",
        "../models/digitcaps_weights.txt",
        "../vitishls/parameters/digitcaps_weights.txt",
        "../parameters/digitcaps_weights.txt",
    ]

    for p in possible_existing_paths:
        if os.path.exists(p):
            print(f"\nComparing against existing file: {p}")
            old = np.loadtxt(p)

            print("existing count:", old.size)

            if old.size == flat.size:
                diff = old - flat
                print("max abs diff :", np.max(np.abs(diff)))
                print("mean abs diff:", np.mean(np.abs(diff)))
                print("first 16 existing:", old[:16])
                print("first 16 exported:", flat[:16])
            else:
                print("Existing file has different size, skip numeric compare.")


if __name__ == "__main__":
    main()