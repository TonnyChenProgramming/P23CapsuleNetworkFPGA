// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3524922 Thu Apr 14 16:29:35 MDT 2022
// Date        : Fri Apr 15 17:15:23 2022
// Host        : 399467ad205a running 64-bit CentOS Linux release 7.4.1708 (Core)
// Command     : write_verilog -force -mode synth_stub
//               /proj/xbb/xrt-embedded/2022.1/hw/2022.1_0415_0430/Xilinx_Official_Platforms/xilinx_zcu102_base_dfx/hw/build/xilinx_zcu102_dynamic_0_1/xilinx_zcu102_dynamic_0_1.gen/sources_1/bd/pfm_dynamic/ip/pfm_dynamic_debug_bridge_xsdbm_0/bd_0/ip/ip_0/bd_ebbe_xsdbm_0_stub.v
// Design      : bd_ebbe_xsdbm_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xsdbm_v3_0_0_xsdbm,Vivado 2022.1" *)
module bd_ebbe_xsdbm_0(update, capture, reset, runtest, tck, tms, tdi, sel, 
  shift, drck, tdo, bscanid_en, clk)
/* synthesis syn_black_box black_box_pad_pin="update,capture,reset,runtest,tck,tms,tdi,sel,shift,drck,tdo,bscanid_en,clk" */;
  input update;
  input capture;
  input reset;
  input runtest;
  input tck;
  input tms;
  input tdi;
  input sel;
  input shift;
  input drck;
  output tdo;
  input bscanid_en;
  input clk;
endmodule
