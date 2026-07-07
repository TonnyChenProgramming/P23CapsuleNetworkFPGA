#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/tonny/p4p/xilinx/Vitis/2022.1/bin:/home/tonny/p4p/xilinx/Vitis/2022.1/bin:/home/tonny/p4p/xilinx/Vitis/2022.1/bin:/home/tonny/p4p/xilinx/Vitis/2022.1/bin:/home/tonny/p4p/xilinx/Vivado/2022.1/bin
else
  PATH=/home/tonny/p4p/xilinx/Vitis/2022.1/bin:/home/tonny/p4p/xilinx/Vitis/2022.1/bin:/home/tonny/p4p/xilinx/Vitis/2022.1/bin:/home/tonny/p4p/xilinx/Vitis/2022.1/bin:/home/tonny/p4p/xilinx/Vivado/2022.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/tonny/p4p/P23CapsuleNetworkFPGA/accel/lib/digit_caps_accel/pl/standalone/build/link/temp/link/vivado/vpl/prj/prj.runs/pfm_dynamic_digitcaps_accel_1_0_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log pfm_dynamic_digitcaps_accel_1_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source pfm_dynamic_digitcaps_accel_1_0.tcl
