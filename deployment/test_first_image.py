import numpy as np
from keras import Model

from capsulenet import CapsNet, load_mnist
from capsulelayers import CapsuleLayer, Length, Mask, SquashLayer


def main():
    weights_path = "models/trained_model.h5"

    print("Loading MNIST...")
    (x_train, y_train), (x_test, y_test) = load_mnist()

    print("Building CapsNet eval model...")
    _, eval_model, _ = CapsNet(
        input_shape=x_test.shape[1:],
        n_class=10,
        routings=3,
    )

    print("Loading trained weights...")
    eval_model.load_weights(weights_path)

    # First MNIST test image
    x = x_test[0:1]
    y = y_test[0:1]

    true_label = int(np.argmax(y[0]))

    print("x shape:", x.shape)
    print("true label:", true_label)

    # eval_model output is usually [y_pred, x_recon]
    outputs = eval_model.predict(x)

    if isinstance(outputs, list):
        y_pred = outputs[0]
    else:
        y_pred = outputs

    pred_label = int(np.argmax(y_pred[0]))

    print("\nPrediction vector:")
    for i, v in enumerate(y_pred[0]):
        print(f"{i}: {v:.10f}")

    print("\nFinal prediction:", pred_label)
    print("True label:", true_label)

    # Also dump useful intermediate layers
    layer_names = [
        "primarycap_squash",
        "digitcaps",
        "capsnet",
    ]

    for name in layer_names:
        m = Model(inputs=eval_model.input, outputs=eval_model.get_layer(name).output)
        out = m.predict(x)

        print(f"\nLayer {name}: shape = {out.shape}")
        print("min/max:", out.min(), out.max())

        np.savetxt(
            f"first_image_{name}.txt",
            out.reshape(-1),
            fmt="%.10f",
        )

    print("\nSaved:")
    print("first_image_primarycap_squash.txt")
    print("first_image_digitcaps.txt")
    print("first_image_capsnet.txt")


if __name__ == "__main__":
    main()