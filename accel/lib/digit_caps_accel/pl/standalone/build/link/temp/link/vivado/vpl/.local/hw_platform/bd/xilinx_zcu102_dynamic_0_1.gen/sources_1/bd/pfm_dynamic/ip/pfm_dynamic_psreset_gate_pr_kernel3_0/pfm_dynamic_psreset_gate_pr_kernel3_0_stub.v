// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3524922 Thu Apr 14 16:29:35 MDT 2022
// Date        : Fri Apr 15 17:16:52 2022
// Host        : 399467ad205a running 64-bit CentOS Linux release 7.4.1708 (Core)
// Command     : write_verilog -force -mode synth_stub
//               /proj/xbb/xrt-embedded/2022.1/hw/2022.1_0415_0430/Xilinx_Official_Platforms/xilinx_zcu102_base_dfx/hw/build/xilinx_zcu102_dynamic_0_1/xilinx_zcu102_dynamic_0_1.gen/sources_1/bd/pfm_dynamic/ip/pfm_dynamic_psreset_gate_pr_kernel3_0/pfm_dynamic_psreset_gate_pr_kernel3_0_stub.v
// Design      : pfm_dynamic_psreset_gate_pr_kernel3_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "proc_sys_reset,Vivado 2022.1" *)
module pfm_dynamic_psreset_gate_pr_kernel3_0(slowest_sync_clk, ext_reset_in, aux_reset_in, 
  mb_debug_sys_rst, dcm_locked, mb_reset, bus_struct_reset, peripheral_reset, 
  interconnect_aresetn, peripheral_aresetn)
/* synthesis syn_black_box black_box_pad_pin="slowest_sync_clk,ext_reset_in,aux_reset_in,mb_debug_sys_rst,dcm_locked,mb_reset,bus_struct_reset[0:0],peripheral_reset[0:0],interconnect_aresetn[0:0],peripheral_aresetn[0:0]" */;
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;
endmodule
