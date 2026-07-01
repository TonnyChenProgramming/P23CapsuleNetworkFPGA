#!/usr/bin/env python3
import os
import shutil
import struct
import argparse
import numpy as np

from keras import models

from capsulenet import CapsNet, load_mnist
from capsulelayers import CapsuleLayer, Length, Mask, SquashLayer


CUSTOM_OBJECTS = {
    "CapsuleLayer": CapsuleLayer,
    "Length": Length,
    "Mask": Mask,
    "SquashLayer": SquashLayer,
}


# ---------------------------------------------------------------------
# Dump helpers
# ---------------------------------------------------------------------

def setup_dump_root(root):
    if os.path.exists(root):
        shutil.rmtree(root)

    os.makedirs(root, exist_ok=True)
    print(f"[PY DUMP] dump root = {root}")


def make_img_dir(root, image_index):
    d = os.path.join(root, f"img{image_index}")
    os.makedirs(d, exist_ok=True)
    return d


def dump_array(root, image_index, name, array):
    path = os.path.join(make_img_dir(root, image_index), name + ".txt")

    arr = np.asarray(array, dtype=np.float32).reshape(-1)

    np.savetxt(path, arr, fmt="%.10g")

    print(f"[PY DUMP] wrote {arr.size:8d} floats to {path}")


# ---------------------------------------------------------------------
# MNIST IDX readers
# ---------------------------------------------------------------------

def read_mnist_images_idx3(path, count):
    with open(path, "rb") as f:
        magic, num, rows, cols = struct.unpack(">IIII", f.read(16))

        if magic != 2051:
            raise RuntimeError(f"Bad MNIST image magic number: {magic}")

        if count > num:
            raise RuntimeError(
                f"Requested {count} images, but file only contains {num}"
            )

        raw = np.frombuffer(f.read(count * rows * cols), dtype=np.uint8)

    images = raw.reshape(count, rows, cols, 1).astype(np.float32) / 255.0

    print("[PY] loaded MNIST images from IDX file")
    print("[PY] images shape:", images.shape)
    print("[PY] images dtype :", images.dtype)

    return images


def read_mnist_labels_idx1(path, count):
    with open(path, "rb") as f:
        magic, num = struct.unpack(">II", f.read(8))

        if magic != 2049:
            raise RuntimeError(f"Bad MNIST label magic number: {magic}")

        if count > num:
            raise RuntimeError(
                f"Requested {count} labels, but file only contains {num}"
            )

        labels = np.frombuffer(f.read(count), dtype=np.uint8)

    print("[PY] loaded MNIST labels from IDX file")
    print("[PY] labels:", labels.tolist())

    return labels


# ---------------------------------------------------------------------
# Main reference dump logic
# ---------------------------------------------------------------------

def build_reference_models(weights_path):
    print("Loading MNIST shape info from capsulenet.load_mnist()...")
    (x_train, y_train), (x_test, y_test) = load_mnist()

    print("Building CapsNet eval_model...")
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

    # These layer names come from capsulenet.py / capsulelayers.py:
    #
    # primarycap_reshape:
    #   output before PrimaryCaps squash
    #
    # primarycap_squash:
    #   output after PrimaryCaps squash
    #
    # digitcaps:
    #   output after dynamic routing, shape [N, 10, 16]
    #
    # capsnet:
    #   Length output, shape [N, 10]
    #
    # In the uploaded capsulelayers.py, PrimaryCap creates
    # primarycap_conv2d -> primarycap_reshape -> primarycap_squash. :contentReference[oaicite:0]{index=0}
    primarycap_reshape_layer = eval_model.get_layer("primarycap_reshape")
    primarycap_squash_layer = eval_model.get_layer("primarycap_squash")
    digitcaps_layer = eval_model.get_layer("digitcaps")
    length_layer = eval_model.get_layer("capsnet")

    intermediate_model = models.Model(
        inputs=eval_model.input,
        outputs=[
            primarycap_reshape_layer.output,
            primarycap_squash_layer.output,
            digitcaps_layer.output,
            length_layer.output,
        ],
        name="capsnet_intermediate_model",
    )

    return eval_model, intermediate_model


def load_input_images_and_labels(args):
    """
    Prefer IDX files because the board also reads t10k-images-idx3-ubyte.
    This gives the cleanest comparison against board dump file 00.
    """
    if args.mnist_images is not None and args.mnist_labels is not None:
        images = read_mnist_images_idx3(args.mnist_images, args.num_images)
        labels = read_mnist_labels_idx1(args.mnist_labels, args.num_images)
        return images, labels

    print("[PY] No IDX paths provided. Falling back to capsulenet.load_mnist().")
    (_, _), (x_test, y_test) = load_mnist()

    images = x_test[:args.num_images].astype(np.float32)
    labels = np.argmax(y_test[:args.num_images], axis=1).astype(np.uint8)

    print("[PY] loaded images from keras MNIST")
    print("[PY] images shape:", images.shape)
    print("[PY] labels:", labels.tolist())

    return images, labels


def export_digitcaps_weights(eval_model, output_path):
    """
    Optional: keep your original weight export behavior.

    Keras CapsuleLayer stores W as:
        [10, 1152, 16, 8]

    This is the HLS-style layout you previously observed.
    """
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

    print("\nExpected DigitCaps weight shape:")
    print("(10, 1152, 16, 8)")
    print("Actual W.shape =", W.shape)

    flat = W.reshape(-1)

    print("Flattened weight count:", flat.size)
    print("Expected count:", 10 * 1152 * 16 * 8)

    if flat.size != 10 * 1152 * 16 * 8:
        raise RuntimeError("Unexpected DigitCaps weight count.")

    out_dir = os.path.dirname(output_path)
    if out_dir:
        os.makedirs(out_dir, exist_ok=True)

    np.savetxt(output_path, flat, fmt="%.10f")

    print(f"\nSaved DigitCaps weights to: {output_path}")
    print("First 16 flattened values:")
    for i in range(16):
        print(i, flat[i])


def dump_intermediates(args, eval_model, intermediate_model, images, labels):
    setup_dump_root(args.dump_root)

    # 00: input image after load.
    # Must match board-side 00_input_image_after_mnist_load.txt first.
    for image_index in range(args.num_images):
        dump_array(
            args.dump_root,
            image_index,
            "00_input_image_after_mnist_load",
            images[image_index],
        )

    print("\n[PY] Running intermediate_model.predict()...")

    outputs = intermediate_model.predict(
        images,
        batch_size=args.predict_batch_size,
    )

    primarycap_before_squash = np.asarray(outputs[0], dtype=np.float32)
    primarycap_after_squash = np.asarray(outputs[1], dtype=np.float32)
    digitcaps_output = np.asarray(outputs[2], dtype=np.float32)
    lengths_output = np.asarray(outputs[3], dtype=np.float32)

    print("[PY] primarycap_before_squash shape:", primarycap_before_squash.shape)
    print("[PY] primarycap_after_squash  shape:", primarycap_after_squash.shape)
    print("[PY] digitcaps_output        shape:", digitcaps_output.shape)
    print("[PY] lengths_output          shape:", lengths_output.shape)

    # Expected:
    # primarycap_before_squash: [N, 1152, 8]
    # primarycap_after_squash : [N, 1152, 8]
    # digitcaps_output        : [N, 10, 16]
    # lengths_output          : [N, 10]

    correct = 0

    for image_index in range(args.num_images):
        pc_before = primarycap_before_squash[image_index].astype(np.float32)
        pc_after = primarycap_after_squash[image_index].astype(np.float32)
        digitcaps = digitcaps_output[image_index].astype(np.float32)
        lengths = lengths_output[image_index].astype(np.float32)

        # Board-equivalent dumps.
        dump_array(
            args.dump_root,
            image_index,
            "01_primarycap_dpu_output_before_squash",
            pc_before,
        )

        dump_array(
            args.dump_root,
            image_index,
            "02_primarycap_after_cpu_squash_digitcaps_input",
            pc_after,
        )

        # This mirrors the C++ pointer current_primcaps.
        # It should be identical to file 02.
        dump_array(
            args.dump_root,
            image_index,
            "03_digitcaps_input_current_primcaps",
            pc_after,
        )

        prediction_before = np.zeros((10, 16), dtype=np.float32)

        dump_array(
            args.dump_root,
            image_index,
            "04_prediction_before_digitcaps",
            prediction_before,
        )

        # Keep same name as board hardware dump so direct folder comparison works.
        dump_array(
            args.dump_root,
            image_index,
            "05_prediction_after_hw_digitcaps",
            digitcaps,
        )

        dump_array(
            args.dump_root,
            image_index,
            "06_digitcaps_lengths_after_magnitude",
            lengths,
        )

        pred = int(np.argmax(lengths))
        label = int(labels[image_index])

        if pred == label:
            correct += 1

        print(f"\n========== img{image_index} ==========")
        print("true label:", label)
        print("prediction:", pred)
        print("correct:", pred == label)
        print("pc_before min/max:", float(pc_before.min()), float(pc_before.max()))
        print("pc_after  min/max:", float(pc_after.min()), float(pc_after.max()))
        print("digitcaps min/max:", float(digitcaps.min()), float(digitcaps.max()))
        print("lengths:", lengths)

    print("\n========== PY reference summary ==========")
    print("correct:", correct, "/", args.num_images)
    print("accuracy:", correct / args.num_images)
    print("dump root:", args.dump_root)
    print("==========================================")


def parse_args():
    parser = argparse.ArgumentParser(
        description="Generate CapsNet Python reference intermediate dumps."
    )

    parser.add_argument(
        "--weights",
        default="../models/trained_model.h5",
        help="Path to trained_model.h5 weights file.",
    )

    parser.add_argument(
        "--dump_root",
        default="dump_capsnet_py",
        help="Output dump folder.",
    )

    parser.add_argument(
        "--num_images",
        type=int,
        default=10,
        help="Number of test images to dump.",
    )

    parser.add_argument(
        "--mnist_images",
        default="../MNIST/t10k-images-idx3-ubyte",
        help="Path to MNIST t10k-images-idx3-ubyte. Use empty string to fallback to keras MNIST.",
    )

    parser.add_argument(
        "--mnist_labels",
        default="../MNIST/t10k-labels-idx1-ubyte",
        help="Path to MNIST t10k-labels-idx1-ubyte. Use empty string to fallback to keras MNIST.",
    )

    parser.add_argument(
        "--predict_batch_size",
        type=int,
        default=1,
        help="Batch size for Keras predict.",
    )

    parser.add_argument(
        "--export_weights",
        action="store_true",
        help="Also export DigitCaps weights to txt.",
    )

    parser.add_argument(
        "--export_weights_path",
        default="../weights/digitcaps_weights_from_reference.txt",
        help="Output path for exported DigitCaps weights if --export_weights is used.",
    )

    args = parser.parse_args()

    # Allow empty string to disable IDX files.
    if args.mnist_images == "":
        args.mnist_images = None
    if args.mnist_labels == "":
        args.mnist_labels = None

    return args


def main():
    args = parse_args()

    print("========== CapsNet Python Reference Intermediate Dump ==========")
    print("weights            :", args.weights)
    print("dump_root          :", args.dump_root)
    print("num_images         :", args.num_images)
    print("mnist_images       :", args.mnist_images)
    print("mnist_labels       :", args.mnist_labels)
    print("predict_batch_size :", args.predict_batch_size)
    print("export_weights     :", args.export_weights)
    print("===============================================================")

    eval_model, intermediate_model = build_reference_models(args.weights)

    images, labels = load_input_images_and_labels(args)

    dump_intermediates(
        args,
        eval_model,
        intermediate_model,
        images,
        labels,
    )

    if args.export_weights:
        export_digitcaps_weights(eval_model, args.export_weights_path)


if __name__ == "__main__":
    main()