DigitCaps standalone deployment package

Kernel:
  digitcaps_accel

Kernel frequency:
  150000000 Hz

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
