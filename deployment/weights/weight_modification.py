#!/usr/bin/env python3
import numpy as np
from pathlib import Path

INPUT_FILE = Path("digitcaps_weights.txt")
OUTPUT_FILE = Path("new_digitcaps_weights.txt")

EXPECTED_COUNT = 1152 * 10 * 8 * 16  # 1,474,560


def main():
    print(f"Reading weights from: {INPUT_FILE}")

    if not INPUT_FILE.exists():
        raise FileNotFoundError(f"Cannot find {INPUT_FILE}")

    # np.loadtxt reads numbers separated by spaces, tabs, or newlines.
    # It does NOT care whether the original file is vertical or one-line.
    data = np.loadtxt(INPUT_FILE, dtype=np.float32)

    print(f"Loaded weight count: {data.size}")
    print(f"Expected count:      {EXPECTED_COUNT}")

    if data.size != EXPECTED_COUNT:
        raise ValueError(
            f"Weight count mismatch: got {data.size}, expected {EXPECTED_COUNT}"
        )

    print(f"Writing one-line weights to: {OUTPUT_FILE}")

    with open(OUTPUT_FILE, "w") as f:
        f.write(" ".join(f"{float(x):.10g}" for x in data))
        f.write("\n")

    print("Done.")
    print("No transpose was applied. Weight order is unchanged.")


if __name__ == "__main__":
    main()