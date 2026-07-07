#!/usr/bin/env bash
set -Eeuo pipefail

# Build flow:
#
#   DigitCaps.cpp
#       -> digitcaps_accel.xo
#       -> digitcaps_accel.xclbin
#       -> bootable ZCU102 sd_card.img
#
# The generated SD-card image also contains:
#
#   09_digitcaps_input.txt
#   new_digitcaps_weights.txt
#   Vitis AI Runtime 2.5 AArch64 CentOS installer
#   CapsuleNetwork.exe, when HOST_APP is supplied
#
# Recommended invocation:
#
# HOST_APP="$HOME/p4p/P23CapsuleNetworkFPGA/accel/app/CapsuleNetwork/bin/CapsuleNetwork.exe" \
# ./standalone/build_digitcaps_sdcard.sh

###############################################################################
# Project paths
###############################################################################

P4P_ROOT="${P4P_ROOT:-$HOME/p4p}"

PL_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
STANDALONE_DIR="$PL_DIR/standalone"

SOURCE_FILE="${SOURCE_FILE:-$PL_DIR/DigitCaps.cpp}"

INPUT_FILE="${INPUT_FILE:-$PL_DIR/09_digitcaps_input.txt}"

WEIGHTS_FILE="${WEIGHTS_FILE:-$PL_DIR/new_digitcaps_weights.txt}"

VART_CENTOS_DIR="${VART_CENTOS_DIR:-$P4P_ROOT/vitis-ai-runtime/vitis-ai-runtime-2.5.0/2022.1/aarch64/centos}"

###############################################################################
# Build configuration
###############################################################################

KERNEL_NAME="${KERNEL_NAME:-digitcaps_accel}"

TARGET="${TARGET:-hw}"

KERNEL_FREQ_HZ="${KERNEL_FREQ_HZ:-150000000}"

LINK_JOBS="${LINK_JOBS:-4}"

###############################################################################
# Output paths
###############################################################################

BUILD_DIR="$STANDALONE_DIR/build"

COMPILE_DIR="$BUILD_DIR/compile"

LINK_DIR="$BUILD_DIR/link"

PACKAGE_DIR="$STANDALONE_DIR/package"

XO_FILE="$STANDALONE_DIR/digitcaps_accel.xo"

XCLBIN_FILE="$STANDALONE_DIR/digitcaps_accel.xclbin"

CONNECTIVITY_CFG="$STANDALONE_DIR/connectivity.cfg"

XRT_INI="$STANDALONE_DIR/xrt.ini"

README_FILE="$STANDALONE_DIR/README_SD.txt"

VART_ARCHIVE="$STANDALONE_DIR/vitis-ai-runtime-2.5.0-aarch64-centos.tar.gz"

###############################################################################
# Helper functions
###############################################################################

die() {
    echo "ERROR: $*" >&2
    exit 1
}

require_file() {
    [[ -f "$1" ]] || die "Required file not found: $1"
}

require_dir() {
    [[ -d "$1" ]] || die "Required directory not found: $1"
}

###############################################################################
# Build information
###############################################################################

echo "============================================================"
echo "DigitCaps standalone ZCU102 SD-card build"
echo "============================================================"
echo
echo "PL directory : $PL_DIR"
echo "Source       : $SOURCE_FILE"
echo "Input        : $INPUT_FILE"
echo "Weights      : $WEIGHTS_FILE"
echo "VART runtime : $VART_CENTOS_DIR"
echo "Frequency    : $KERNEL_FREQ_HZ Hz"
echo "Link jobs    : $LINK_JOBS"
echo "Output       : $STANDALONE_DIR"
echo

###############################################################################
# 1. Locate and source Vitis 2022.1
###############################################################################

VITIS_SETTINGS="${VITIS_SETTINGS:-}"

if [[ -z "$VITIS_SETTINGS" ]]; then

    for candidate in \
        "$P4P_ROOT/xilinx/Vitis/2022.1/settings64.sh" \
        "$P4P_ROOT/Xilinx/Vitis/2022.1/settings64.sh"
    do
        if [[ -f "$candidate" ]]; then
            VITIS_SETTINGS="$candidate"
            break
        fi
    done

fi

if [[ -z "$VITIS_SETTINGS" ]]; then

    VITIS_SETTINGS="$(
        find "$P4P_ROOT" \
            -type f \
            -path '*/Vitis/2022.1/settings64.sh' \
            -print \
            -quit \
            2>/dev/null || true
    )"

fi

require_file "$VITIS_SETTINGS"

echo "[1/7] Sourcing Vitis 2022.1"
echo "      $VITIS_SETTINGS"

# shellcheck disable=SC1090
source "$VITIS_SETTINGS"

command -v v++ >/dev/null 2>&1 || \
    die "v++ is not available after sourcing Vitis"

v++ --version | head -n 5

###############################################################################
# 2. Locate ZCU102 platform
###############################################################################

PLATFORM="${PLATFORM:-}"

if [[ -z "$PLATFORM" ]]; then

    PLATFORM="$(
        find \
            "$P4P_ROOT/xilinx" \
            "$P4P_ROOT/Xilinx" \
            -type f \
            -name '*.xpfm' \
            2>/dev/null |
        grep -i 'zcu102' |
        head -n 1 || true
    )"

fi

require_file "$PLATFORM"

echo
echo "[2/7] Platform"
echo "      $PLATFORM"

###############################################################################
# 3. Locate common Linux image
###############################################################################

COMMON_IMAGE="${COMMON_IMAGE:-}"

if [[ -z "$COMMON_IMAGE" ]]; then

    ROOTFS_FILE="$(
        find "$P4P_ROOT/zynqmp-common" \
            -type f \
            -name rootfs.ext4 \
            -print \
            -quit \
            2>/dev/null || true
    )"

    [[ -n "$ROOTFS_FILE" ]] || \
        die "rootfs.ext4 not found below $P4P_ROOT/zynqmp-common"

    COMMON_IMAGE="$(dirname "$ROOTFS_FILE")"

fi

require_file "$COMMON_IMAGE/Image"

require_file "$COMMON_IMAGE/rootfs.ext4"

require_file "$SOURCE_FILE"

require_file "$INPUT_FILE"

require_file "$WEIGHTS_FILE"

require_dir "$VART_CENTOS_DIR"

require_file "$VART_CENTOS_DIR/setup.sh"

require_file "$VART_CENTOS_DIR/libvart-2.5.0-r61.aarch64.rpm"

require_file "$VART_CENTOS_DIR/libxir-2.5.0-r61.aarch64.rpm"

require_file "$VART_CENTOS_DIR/libunilog-2.5.0-r61.aarch64.rpm"

require_file "$VART_CENTOS_DIR/libtarget-factory-2.5.0-r61.aarch64.rpm"

require_file "$VART_CENTOS_DIR/libvitis_ai_library-2.5.0-r61.aarch64.rpm"

echo
echo "[3/7] Common image"
echo "      $COMMON_IMAGE"
echo
echo "      Image:"
ls -lh "$COMMON_IMAGE/Image"
echo
echo "      rootfs.ext4:"
ls -lh "$COMMON_IMAGE/rootfs.ext4"

###############################################################################
# 4. Prepare build directories
###############################################################################

mkdir -p \
    "$STANDALONE_DIR" \
    "$COMPILE_DIR/temp" \
    "$COMPILE_DIR/reports" \
    "$COMPILE_DIR/logs" \
    "$LINK_DIR/temp" \
    "$LINK_DIR/reports" \
    "$LINK_DIR/logs"

rm -f \
    "$XO_FILE" \
    "$XCLBIN_FILE" \
    "$VART_ARCHIVE"

rm -rf "$PACKAGE_DIR"

mkdir -p "$PACKAGE_DIR"

###############################################################################
# Connectivity configuration
###############################################################################

cat > "$CONNECTIVITY_CFG" <<EOF
[connectivity]
nk=${KERNEL_NAME}:1:${KERNEL_NAME}_1
sp=${KERNEL_NAME}_1.input:HP0
sp=${KERNEL_NAME}_1.weights:HP0
sp=${KERNEL_NAME}_1.prediction:HP1
EOF

###############################################################################
# XRT runtime configuration
###############################################################################

cat > "$XRT_INI" <<'EOF'
[Runtime]
verbosity=1
EOF

###############################################################################
# SD-card README
###############################################################################

cat > "$README_FILE" <<EOF
DigitCaps standalone deployment package

Kernel:
  ${KERNEL_NAME}

Kernel frequency:
  ${KERNEL_FREQ_HZ} Hz

Packaged files:
  digitcaps_accel.xclbin
  xrt.ini
  09_digitcaps_input.txt
  new_digitcaps_weights.txt
  vitis-ai-runtime-2.5.0-aarch64-centos.tar.gz

Optional host:
  CapsuleNetwork.exe is included only when HOST_APP was supplied.

Tensor sizes:
  input      = 9,216 values
  weights    = 1,474,560 values
  prediction = 160 values

Memory mapping:
  input      -> HP0
  weights    -> HP0
  prediction -> HP1

Board-side VART installation:

  cd /run/media/mmcblk0p1

  tar -xzf vitis-ai-runtime-2.5.0-aarch64-centos.tar.gz

  cd centos

  chmod +x setup.sh

  ./setup.sh

  ldconfig

Firmware environment:

  export XLNX_VART_FIRMWARE="/run/media/mmcblk0p1/a.xclbin"

  export XLNX_ENABLE_FINGERPRINT_CHECK=0

Check executable dependencies:

  ldd /run/media/mmcblk0p1/CapsuleNetwork.exe | grep "not found"

Generated with Vitis 2022.1 for ZCU102.
EOF

###############################################################################
# 5. Archive Vitis AI Runtime
###############################################################################

echo
echo "[4/7] Creating Vitis AI Runtime archive"

tar -czf "$VART_ARCHIVE" \
    -C "$(dirname "$VART_CENTOS_DIR")" \
    "$(basename "$VART_CENTOS_DIR")"

require_file "$VART_ARCHIVE"

ls -lh "$VART_ARCHIVE"

###############################################################################
# 6. Compile DigitCaps.cpp into XO
###############################################################################

echo
echo "[5/7] Compiling DigitCaps.cpp -> digitcaps_accel.xo"

v++ \
    --compile \
    --target "$TARGET" \
    --platform "$PLATFORM" \
    --kernel "$KERNEL_NAME" \
    --save-temps \
    --temp_dir "$COMPILE_DIR/temp" \
    --report_dir "$COMPILE_DIR/reports" \
    --log_dir "$COMPILE_DIR/logs" \
    --output "$XO_FILE" \
    "$SOURCE_FILE"

require_file "$XO_FILE"

ls -lh "$XO_FILE"

###############################################################################
# 7. Link XO into XCLBIN
###############################################################################

echo
echo "[6/7] Linking digitcaps_accel.xo -> digitcaps_accel.xclbin"

v++ \
    --link \
    --target "$TARGET" \
    --platform "$PLATFORM" \
    --clock.defaultFreqHz "$KERNEL_FREQ_HZ" \
    --jobs "$LINK_JOBS" \
    --config "$CONNECTIVITY_CFG" \
    --save-temps \
    --temp_dir "$LINK_DIR/temp" \
    --report_dir "$LINK_DIR/reports" \
    --log_dir "$LINK_DIR/logs" \
    --output "$XCLBIN_FILE" \
    "$XO_FILE"

require_file "$XCLBIN_FILE"

ls -lh "$XCLBIN_FILE"

###############################################################################
# 8. Package bootable SD-card image
###############################################################################

echo
echo "[7/7] Packaging bootable SD-card image"

PACKAGE_ARGS=(
    --package

    --target "$TARGET"

    --platform "$PLATFORM"

    --package.out_dir "$PACKAGE_DIR"

    --package.rootfs "$COMMON_IMAGE/rootfs.ext4"

    --package.sd_file "$COMMON_IMAGE/Image"

    --package.sd_file "$XRT_INI"

    --package.sd_file "$README_FILE"

    --package.sd_file "$INPUT_FILE"

    --package.sd_file "$WEIGHTS_FILE"

    --package.sd_file "$VART_ARCHIVE"
)

###############################################################################
# Optional host application
###############################################################################

if [[ -n "${HOST_APP:-}" ]]; then

    require_file "$HOST_APP"

    if ! file "$HOST_APP" | grep -qi 'ARM aarch64'; then

        file "$HOST_APP"

        die "HOST_APP is not an ARM aarch64 executable: $HOST_APP"

    fi

    echo
    echo "Including host executable:"
    echo "  $HOST_APP"

    PACKAGE_ARGS+=(
        --package.sd_file "$HOST_APP"
    )

else

    echo
    echo "HOST_APP was not supplied."
    echo "The image will be generated without CapsuleNetwork.exe."

fi

###############################################################################
# Run packaging
###############################################################################

v++ \
    "${PACKAGE_ARGS[@]}" \
    "$XCLBIN_FILE"

###############################################################################
# Validate output
###############################################################################

SD_IMAGE="$PACKAGE_DIR/sd_card.img"

require_file "$SD_IMAGE"

echo
echo "============================================================"
echo "BUILD SUCCESSFUL"
echo "============================================================"
echo
echo "XO:"
echo "  $XO_FILE"
echo
echo "XCLBIN:"
echo "  $XCLBIN_FILE"
echo
echo "VART archive:"
echo "  $VART_ARCHIVE"
echo
echo "SD-card image:"
echo "  $SD_IMAGE"
echo

ls -lh \
    "$XO_FILE" \
    "$XCLBIN_FILE" \
    "$VART_ARCHIVE" \
    "$SD_IMAGE"

echo
echo "Flash sd_card.img to the whole SD-card device."