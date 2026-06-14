import os
import numpy as np


COMPARE_DUMP_DIR = "compare_dump"


COMPARISONS = [
    {
        "name": "Input image: Python vs board",
        "reference": "python_input_img0.txt",
        "board": "board_input_img0.txt",
    },
    {
        "name": "PrimaryCaps reshape: golden Python vs board DPU output",
        "reference": "golden_primarycap_reshape_img0.txt",
        "board": "board_primarycap_reshape_img0.txt",
    },
    {
        "name": "PrimaryCaps squash: golden Python vs board after CPU squash",
        "reference": "golden_primarycap_squash_img0.txt",
        "board": "board_primarycap_squash_img0.txt",
    },
    {
        "name": "PrimaryCaps squash: quantized Python vs board after CPU squash",
        "reference": "quant_partial_primarycap_squash_img0.txt",
        "board": "board_primarycap_squash_img0.txt",
    },
    {
        "name": "DigitCaps output: golden Python vs board",
        "reference": "golden_digitcaps_img0.txt",
        "board": "board_digitcaps_img0.txt",
    },
    {
        "name": "Final prediction: golden Python vs board",
        "reference": "golden_capsnet_prediction_img0.txt",
        "board": "board_prediction_img0.txt",
    },
]


def load_vector(path):
    data = np.loadtxt(path, dtype=np.float64)
    return data.reshape(-1)


def safe_cosine(a, b):
    a_norm = np.linalg.norm(a)
    b_norm = np.linalg.norm(b)

    if a_norm == 0 or b_norm == 0:
        return None

    return float(np.dot(a, b) / (a_norm * b_norm))


def safe_corr(a, b):
    if np.std(a) == 0 or np.std(b) == 0:
        return None

    return float(np.corrcoef(a, b)[0, 1])


def compare_vectors(name, ref_path, board_path):
    print("\n" + "=" * 80)
    print(name)
    print("=" * 80)

    if not os.path.exists(ref_path):
        print(f"Missing reference file: {ref_path}")
        return False

    if not os.path.exists(board_path):
        print(f"Missing board file:     {board_path}")
        return False

    ref = load_vector(ref_path)
    board = load_vector(board_path)

    print(f"Reference file: {ref_path}")
    print(f"Board file:     {board_path}")
    print(f"Reference shape: {ref.shape}")
    print(f"Board shape:     {board.shape}")

    if ref.shape != board.shape:
        print("\nResult: SHAPE MISMATCH")
        return False

    diff = ref - board
    abs_diff = np.abs(diff)

    cosine = safe_cosine(ref, board)
    corr = safe_corr(ref, board)

    print("\n--- Value ranges ---")
    print(f"Reference min/max: {ref.min(): .10f} / {ref.max(): .10f}")
    print(f"Board min/max:     {board.min(): .10f} / {board.max(): .10f}")
    print(f"Reference mean/std:{ref.mean(): .10f} / {ref.std(): .10f}")
    print(f"Board mean/std:    {board.mean(): .10f} / {board.std(): .10f}")

    print("\n--- Difference metrics ---")
    print(f"Max abs diff:      {abs_diff.max(): .10f}")
    print(f"Mean abs diff:     {abs_diff.mean(): .10f}")
    print(f"Median abs diff:   {np.median(abs_diff): .10f}")
    print(f"RMS diff:          {np.sqrt(np.mean(diff * diff)): .10f}")

    if cosine is not None:
        print(f"Cosine similarity: {cosine: .10f}")
    else:
        print("Cosine similarity: unavailable")

    if corr is not None:
        print(f"Correlation:       {corr: .10f}")
    else:
        print("Correlation:       unavailable")

    print("\n--- First 20 values ---")
    print("Reference:", ref[:20])
    print("Board:    ", board[:20])
    print("Diff:     ", diff[:20])

    worst_indices = np.argsort(abs_diff)[-10:][::-1]

    print("\n--- Worst 10 mismatches ---")
    print("index, reference, board, diff, abs_diff")
    for idx in worst_indices:
        print(
            f"{idx}, "
            f"{ref[idx]: .10f}, "
            f"{board[idx]: .10f}, "
            f"{diff[idx]: .10f}, "
            f"{abs_diff[idx]: .10f}"
        )

    if cosine is not None and corr is not None:
        if cosine > 0.99 and corr > 0.99:
            print("\nResult: GOOD MATCH")
        elif cosine > 0.95 and corr > 0.95:
            print("\nResult: CLOSE, but check scale/quantization error")
        else:
            print("\nResult: BAD MATCH, likely scale/layout/wrong-stage issue")
    else:
        print("\nResult: compared, but similarity score unavailable")

    return True


def main():
    print(f"Using dump folder: {COMPARE_DUMP_DIR}")

    completed = 0
    available = 0

    for item in COMPARISONS:
        ref_path = os.path.join(COMPARE_DUMP_DIR, item["reference"])
        board_path = os.path.join(COMPARE_DUMP_DIR, item["board"])

        if os.path.exists(ref_path) and os.path.exists(board_path):
            available += 1

        ok = compare_vectors(item["name"], ref_path, board_path)
        if ok:
            completed += 1

    print("\n" + "=" * 80)
    print("Summary")
    print("=" * 80)
    print(f"Available pairs: {available}/{len(COMPARISONS)}")
    print(f"Completed comparisons: {completed}/{len(COMPARISONS)}")

    print("\nMost important comparison for current debugging:")
    print(
        "compare_dump/quant_partial_primarycap_squash_img0.txt "
        "vs "
        "compare_dump/board_primarycap_squash_img0.txt"
    )


if __name__ == "__main__":
    main()