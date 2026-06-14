from pathlib import Path
import numpy as np

pairs = [
    ("test/dump/output_conv_1.txt", "deployment/python_dump/conv1.txt"),
    ("test/dump/primcaps_conv_out.txt", "deployment/python_dump/primarycap_conv2d.txt"),
    ("test/dump/primcaps_reshape_out.txt", "deployment/python_dump/primarycap_reshape.txt"),
    ("test/dump/primcaps_squash_out.txt", "deployment/python_dump/primarycap_squash.txt"),
    ("test/dump/output_prim_caps.txt", "deployment/python_dump/primarycap_squash.txt"),
    ("test/dump/output_digit_caps.txt", "deployment/python_dump/digitcaps.txt"),
]

for cpp_file, py_file in pairs:
    cpp_path = Path(cpp_file)
    py_path = Path(py_file)

    print("\n==============================")
    print("C++:   ", cpp_path)
    print("Python:", py_path)

    if not cpp_path.exists():
        print("Missing C++ file")
        continue

    if not py_path.exists():
        print("Missing Python file")
        continue

    cpp = np.loadtxt(cpp_path).reshape(-1)
    py = np.loadtxt(py_path).reshape(-1)

    print("cpp length:", len(cpp))
    print("py length: ", len(py))

    n = min(len(cpp), len(py))
    cpp = cpp[:n]
    py = py[:n]

    diff = cpp - py

    print("compared length:", n)
    print("cpp nan:", np.isnan(cpp).sum())
    print("py nan: ", np.isnan(py).sum())
    print("max abs diff:", np.nanmax(np.abs(diff)))
    print("mean abs diff:", np.nanmean(np.abs(diff)))
    print("max rel diff:", np.nanmax(np.abs(diff) / (np.abs(py) + 1e-9)))
    print("first10 cpp:", cpp[:10])
    print("first10 py: ", py[:10])
    print("first10 diff:", diff[:10])