// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Tue Jul  7 21:07:05 2026
// Host        : tonny-ASUS-TUF-Dash-F15-FX516PE-FX516PE running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/tonny/p4p/P23CapsuleNetworkFPGA/accel/lib/digit_caps_accel/pl/standalone/build/link/temp/link/vivado/vpl/prj/prj.gen/my_rm/bd/pfm_dynamic/pfm_dynamic_stub.v
// Design      : pfm_dynamic
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module pfm_dynamic(bscanid_en, capture, clkwiz_kernel2_clk_out1, 
  clkwiz_kernel2_locked, clkwiz_kernel3_clk_out, clkwiz_kernel4_clk_out, 
  clkwiz_kernel5_clk_out, clkwiz_kernel6_clk_out, clkwiz_kernel_clk_out1, 
  clkwiz_kernel_locked, clkwiz_sysclks_clk_out2, clkwiz_sysclks_locked, drck, 
  interconnect_aximm_ddrmem2_M00_AXI_araddr, 
  interconnect_aximm_ddrmem2_M00_AXI_arburst, 
  interconnect_aximm_ddrmem2_M00_AXI_arcache, 
  interconnect_aximm_ddrmem2_M00_AXI_arid, interconnect_aximm_ddrmem2_M00_AXI_arlen, 
  interconnect_aximm_ddrmem2_M00_AXI_arlock, 
  interconnect_aximm_ddrmem2_M00_AXI_arprot, 
  interconnect_aximm_ddrmem2_M00_AXI_arqos, 
  interconnect_aximm_ddrmem2_M00_AXI_arready, 
  interconnect_aximm_ddrmem2_M00_AXI_arsize, 
  interconnect_aximm_ddrmem2_M00_AXI_arvalid, 
  interconnect_aximm_ddrmem2_M00_AXI_awaddr, 
  interconnect_aximm_ddrmem2_M00_AXI_awburst, 
  interconnect_aximm_ddrmem2_M00_AXI_awcache, 
  interconnect_aximm_ddrmem2_M00_AXI_awid, interconnect_aximm_ddrmem2_M00_AXI_awlen, 
  interconnect_aximm_ddrmem2_M00_AXI_awlock, 
  interconnect_aximm_ddrmem2_M00_AXI_awprot, 
  interconnect_aximm_ddrmem2_M00_AXI_awqos, 
  interconnect_aximm_ddrmem2_M00_AXI_awready, 
  interconnect_aximm_ddrmem2_M00_AXI_awsize, 
  interconnect_aximm_ddrmem2_M00_AXI_awvalid, interconnect_aximm_ddrmem2_M00_AXI_bid, 
  interconnect_aximm_ddrmem2_M00_AXI_bready, 
  interconnect_aximm_ddrmem2_M00_AXI_bresp, 
  interconnect_aximm_ddrmem2_M00_AXI_bvalid, 
  interconnect_aximm_ddrmem2_M00_AXI_rdata, interconnect_aximm_ddrmem2_M00_AXI_rid, 
  interconnect_aximm_ddrmem2_M00_AXI_rlast, 
  interconnect_aximm_ddrmem2_M00_AXI_rready, 
  interconnect_aximm_ddrmem2_M00_AXI_rresp, 
  interconnect_aximm_ddrmem2_M00_AXI_rvalid, 
  interconnect_aximm_ddrmem2_M00_AXI_wdata, interconnect_aximm_ddrmem2_M00_AXI_wlast, 
  interconnect_aximm_ddrmem2_M00_AXI_wready, 
  interconnect_aximm_ddrmem2_M00_AXI_wstrb, 
  interconnect_aximm_ddrmem2_M00_AXI_wvalid, 
  interconnect_aximm_ddrmem3_M00_AXI_araddr, 
  interconnect_aximm_ddrmem3_M00_AXI_arburst, 
  interconnect_aximm_ddrmem3_M00_AXI_arcache, 
  interconnect_aximm_ddrmem3_M00_AXI_arid, interconnect_aximm_ddrmem3_M00_AXI_arlen, 
  interconnect_aximm_ddrmem3_M00_AXI_arlock, 
  interconnect_aximm_ddrmem3_M00_AXI_arprot, 
  interconnect_aximm_ddrmem3_M00_AXI_arqos, 
  interconnect_aximm_ddrmem3_M00_AXI_arready, 
  interconnect_aximm_ddrmem3_M00_AXI_arsize, 
  interconnect_aximm_ddrmem3_M00_AXI_arvalid, 
  interconnect_aximm_ddrmem3_M00_AXI_awaddr, 
  interconnect_aximm_ddrmem3_M00_AXI_awburst, 
  interconnect_aximm_ddrmem3_M00_AXI_awcache, 
  interconnect_aximm_ddrmem3_M00_AXI_awid, interconnect_aximm_ddrmem3_M00_AXI_awlen, 
  interconnect_aximm_ddrmem3_M00_AXI_awlock, 
  interconnect_aximm_ddrmem3_M00_AXI_awprot, 
  interconnect_aximm_ddrmem3_M00_AXI_awqos, 
  interconnect_aximm_ddrmem3_M00_AXI_awready, 
  interconnect_aximm_ddrmem3_M00_AXI_awsize, 
  interconnect_aximm_ddrmem3_M00_AXI_awvalid, interconnect_aximm_ddrmem3_M00_AXI_bid, 
  interconnect_aximm_ddrmem3_M00_AXI_bready, 
  interconnect_aximm_ddrmem3_M00_AXI_bresp, 
  interconnect_aximm_ddrmem3_M00_AXI_bvalid, 
  interconnect_aximm_ddrmem3_M00_AXI_rdata, interconnect_aximm_ddrmem3_M00_AXI_rid, 
  interconnect_aximm_ddrmem3_M00_AXI_rlast, 
  interconnect_aximm_ddrmem3_M00_AXI_rready, 
  interconnect_aximm_ddrmem3_M00_AXI_rresp, 
  interconnect_aximm_ddrmem3_M00_AXI_rvalid, 
  interconnect_aximm_ddrmem3_M00_AXI_wdata, interconnect_aximm_ddrmem3_M00_AXI_wlast, 
  interconnect_aximm_ddrmem3_M00_AXI_wready, 
  interconnect_aximm_ddrmem3_M00_AXI_wstrb, 
  interconnect_aximm_ddrmem3_M00_AXI_wvalid, 
  interconnect_aximm_ddrmem4_M00_AXI_araddr, 
  interconnect_aximm_ddrmem4_M00_AXI_arburst, 
  interconnect_aximm_ddrmem4_M00_AXI_arcache, 
  interconnect_aximm_ddrmem4_M00_AXI_arid, interconnect_aximm_ddrmem4_M00_AXI_arlen, 
  interconnect_aximm_ddrmem4_M00_AXI_arlock, 
  interconnect_aximm_ddrmem4_M00_AXI_arprot, 
  interconnect_aximm_ddrmem4_M00_AXI_arqos, 
  interconnect_aximm_ddrmem4_M00_AXI_arready, 
  interconnect_aximm_ddrmem4_M00_AXI_arsize, 
  interconnect_aximm_ddrmem4_M00_AXI_arvalid, 
  interconnect_aximm_ddrmem4_M00_AXI_awaddr, 
  interconnect_aximm_ddrmem4_M00_AXI_awburst, 
  interconnect_aximm_ddrmem4_M00_AXI_awcache, 
  interconnect_aximm_ddrmem4_M00_AXI_awid, interconnect_aximm_ddrmem4_M00_AXI_awlen, 
  interconnect_aximm_ddrmem4_M00_AXI_awlock, 
  interconnect_aximm_ddrmem4_M00_AXI_awprot, 
  interconnect_aximm_ddrmem4_M00_AXI_awqos, 
  interconnect_aximm_ddrmem4_M00_AXI_awready, 
  interconnect_aximm_ddrmem4_M00_AXI_awsize, 
  interconnect_aximm_ddrmem4_M00_AXI_awvalid, interconnect_aximm_ddrmem4_M00_AXI_bid, 
  interconnect_aximm_ddrmem4_M00_AXI_bready, 
  interconnect_aximm_ddrmem4_M00_AXI_bresp, 
  interconnect_aximm_ddrmem4_M00_AXI_bvalid, 
  interconnect_aximm_ddrmem4_M00_AXI_rdata, interconnect_aximm_ddrmem4_M00_AXI_rid, 
  interconnect_aximm_ddrmem4_M00_AXI_rlast, 
  interconnect_aximm_ddrmem4_M00_AXI_rready, 
  interconnect_aximm_ddrmem4_M00_AXI_rresp, 
  interconnect_aximm_ddrmem4_M00_AXI_rvalid, 
  interconnect_aximm_ddrmem4_M00_AXI_wdata, interconnect_aximm_ddrmem4_M00_AXI_wlast, 
  interconnect_aximm_ddrmem4_M00_AXI_wready, 
  interconnect_aximm_ddrmem4_M00_AXI_wstrb, 
  interconnect_aximm_ddrmem4_M00_AXI_wvalid, 
  interconnect_aximm_ddrmem5_M00_AXI_araddr, 
  interconnect_aximm_ddrmem5_M00_AXI_arburst, 
  interconnect_aximm_ddrmem5_M00_AXI_arcache, 
  interconnect_aximm_ddrmem5_M00_AXI_arid, interconnect_aximm_ddrmem5_M00_AXI_arlen, 
  interconnect_aximm_ddrmem5_M00_AXI_arlock, 
  interconnect_aximm_ddrmem5_M00_AXI_arprot, 
  interconnect_aximm_ddrmem5_M00_AXI_arqos, 
  interconnect_aximm_ddrmem5_M00_AXI_arready, 
  interconnect_aximm_ddrmem5_M00_AXI_arsize, 
  interconnect_aximm_ddrmem5_M00_AXI_arvalid, 
  interconnect_aximm_ddrmem5_M00_AXI_awaddr, 
  interconnect_aximm_ddrmem5_M00_AXI_awburst, 
  interconnect_aximm_ddrmem5_M00_AXI_awcache, 
  interconnect_aximm_ddrmem5_M00_AXI_awid, interconnect_aximm_ddrmem5_M00_AXI_awlen, 
  interconnect_aximm_ddrmem5_M00_AXI_awlock, 
  interconnect_aximm_ddrmem5_M00_AXI_awprot, 
  interconnect_aximm_ddrmem5_M00_AXI_awqos, 
  interconnect_aximm_ddrmem5_M00_AXI_awready, 
  interconnect_aximm_ddrmem5_M00_AXI_awsize, 
  interconnect_aximm_ddrmem5_M00_AXI_awvalid, interconnect_aximm_ddrmem5_M00_AXI_bid, 
  interconnect_aximm_ddrmem5_M00_AXI_bready, 
  interconnect_aximm_ddrmem5_M00_AXI_bresp, 
  interconnect_aximm_ddrmem5_M00_AXI_bvalid, 
  interconnect_aximm_ddrmem5_M00_AXI_rdata, interconnect_aximm_ddrmem5_M00_AXI_rid, 
  interconnect_aximm_ddrmem5_M00_AXI_rlast, 
  interconnect_aximm_ddrmem5_M00_AXI_rready, 
  interconnect_aximm_ddrmem5_M00_AXI_rresp, 
  interconnect_aximm_ddrmem5_M00_AXI_rvalid, 
  interconnect_aximm_ddrmem5_M00_AXI_wdata, interconnect_aximm_ddrmem5_M00_AXI_wlast, 
  interconnect_aximm_ddrmem5_M00_AXI_wready, 
  interconnect_aximm_ddrmem5_M00_AXI_wstrb, 
  interconnect_aximm_ddrmem5_M00_AXI_wvalid, pr_reset_n, 
  regslice_control_userpf_M_AXI_araddr, regslice_control_userpf_M_AXI_arprot, 
  regslice_control_userpf_M_AXI_arready, regslice_control_userpf_M_AXI_arvalid, 
  regslice_control_userpf_M_AXI_awaddr, regslice_control_userpf_M_AXI_awprot, 
  regslice_control_userpf_M_AXI_awready, regslice_control_userpf_M_AXI_awvalid, 
  regslice_control_userpf_M_AXI_bready, regslice_control_userpf_M_AXI_bresp, 
  regslice_control_userpf_M_AXI_bvalid, regslice_control_userpf_M_AXI_rdata, 
  regslice_control_userpf_M_AXI_rready, regslice_control_userpf_M_AXI_rresp, 
  regslice_control_userpf_M_AXI_rvalid, regslice_control_userpf_M_AXI_wdata, 
  regslice_control_userpf_M_AXI_wready, regslice_control_userpf_M_AXI_wstrb, 
  regslice_control_userpf_M_AXI_wvalid, regslice_data_hpm0fpd_M_AXI1_araddr, 
  regslice_data_hpm0fpd_M_AXI1_arburst, regslice_data_hpm0fpd_M_AXI1_arcache, 
  regslice_data_hpm0fpd_M_AXI1_arid, regslice_data_hpm0fpd_M_AXI1_arlen, 
  regslice_data_hpm0fpd_M_AXI1_arlock, regslice_data_hpm0fpd_M_AXI1_arprot, 
  regslice_data_hpm0fpd_M_AXI1_arqos, regslice_data_hpm0fpd_M_AXI1_arready, 
  regslice_data_hpm0fpd_M_AXI1_arregion, regslice_data_hpm0fpd_M_AXI1_arsize, 
  regslice_data_hpm0fpd_M_AXI1_arvalid, regslice_data_hpm0fpd_M_AXI1_awaddr, 
  regslice_data_hpm0fpd_M_AXI1_awburst, regslice_data_hpm0fpd_M_AXI1_awcache, 
  regslice_data_hpm0fpd_M_AXI1_awid, regslice_data_hpm0fpd_M_AXI1_awlen, 
  regslice_data_hpm0fpd_M_AXI1_awlock, regslice_data_hpm0fpd_M_AXI1_awprot, 
  regslice_data_hpm0fpd_M_AXI1_awqos, regslice_data_hpm0fpd_M_AXI1_awready, 
  regslice_data_hpm0fpd_M_AXI1_awregion, regslice_data_hpm0fpd_M_AXI1_awsize, 
  regslice_data_hpm0fpd_M_AXI1_awvalid, regslice_data_hpm0fpd_M_AXI1_bid, 
  regslice_data_hpm0fpd_M_AXI1_bready, regslice_data_hpm0fpd_M_AXI1_bresp, 
  regslice_data_hpm0fpd_M_AXI1_bvalid, regslice_data_hpm0fpd_M_AXI1_rdata, 
  regslice_data_hpm0fpd_M_AXI1_rid, regslice_data_hpm0fpd_M_AXI1_rlast, 
  regslice_data_hpm0fpd_M_AXI1_rready, regslice_data_hpm0fpd_M_AXI1_rresp, 
  regslice_data_hpm0fpd_M_AXI1_rvalid, regslice_data_hpm0fpd_M_AXI1_wdata, 
  regslice_data_hpm0fpd_M_AXI1_wlast, regslice_data_hpm0fpd_M_AXI1_wready, 
  regslice_data_hpm0fpd_M_AXI1_wstrb, regslice_data_hpm0fpd_M_AXI1_wvalid, reset, 
  runtest, sel, shift, tck, tdi, tdo, tms, update, xlconcat_interrupt_dout)
/* synthesis syn_black_box black_box_pad_pin="bscanid_en,capture,clkwiz_kernel2_clk_out1,clkwiz_kernel2_locked,clkwiz_kernel3_clk_out,clkwiz_kernel4_clk_out,clkwiz_kernel5_clk_out,clkwiz_kernel6_clk_out,clkwiz_kernel_clk_out1,clkwiz_kernel_locked,clkwiz_sysclks_clk_out2,clkwiz_sysclks_locked,drck,interconnect_aximm_ddrmem2_M00_AXI_araddr[31:0],interconnect_aximm_ddrmem2_M00_AXI_arburst[1:0],interconnect_aximm_ddrmem2_M00_AXI_arcache[3:0],interconnect_aximm_ddrmem2_M00_AXI_arid[5:0],interconnect_aximm_ddrmem2_M00_AXI_arlen[7:0],interconnect_aximm_ddrmem2_M00_AXI_arlock[0:0],interconnect_aximm_ddrmem2_M00_AXI_arprot[2:0],interconnect_aximm_ddrmem2_M00_AXI_arqos[3:0],interconnect_aximm_ddrmem2_M00_AXI_arready,interconnect_aximm_ddrmem2_M00_AXI_arsize[2:0],interconnect_aximm_ddrmem2_M00_AXI_arvalid,interconnect_aximm_ddrmem2_M00_AXI_awaddr[31:0],interconnect_aximm_ddrmem2_M00_AXI_awburst[1:0],interconnect_aximm_ddrmem2_M00_AXI_awcache[3:0],interconnect_aximm_ddrmem2_M00_AXI_awid[5:0],interconnect_aximm_ddrmem2_M00_AXI_awlen[7:0],interconnect_aximm_ddrmem2_M00_AXI_awlock[0:0],interconnect_aximm_ddrmem2_M00_AXI_awprot[2:0],interconnect_aximm_ddrmem2_M00_AXI_awqos[3:0],interconnect_aximm_ddrmem2_M00_AXI_awready,interconnect_aximm_ddrmem2_M00_AXI_awsize[2:0],interconnect_aximm_ddrmem2_M00_AXI_awvalid,interconnect_aximm_ddrmem2_M00_AXI_bid[5:0],interconnect_aximm_ddrmem2_M00_AXI_bready,interconnect_aximm_ddrmem2_M00_AXI_bresp[1:0],interconnect_aximm_ddrmem2_M00_AXI_bvalid,interconnect_aximm_ddrmem2_M00_AXI_rdata[127:0],interconnect_aximm_ddrmem2_M00_AXI_rid[5:0],interconnect_aximm_ddrmem2_M00_AXI_rlast,interconnect_aximm_ddrmem2_M00_AXI_rready,interconnect_aximm_ddrmem2_M00_AXI_rresp[1:0],interconnect_aximm_ddrmem2_M00_AXI_rvalid,interconnect_aximm_ddrmem2_M00_AXI_wdata[127:0],interconnect_aximm_ddrmem2_M00_AXI_wlast,interconnect_aximm_ddrmem2_M00_AXI_wready,interconnect_aximm_ddrmem2_M00_AXI_wstrb[15:0],interconnect_aximm_ddrmem2_M00_AXI_wvalid,interconnect_aximm_ddrmem3_M00_AXI_araddr[31:0],interconnect_aximm_ddrmem3_M00_AXI_arburst[1:0],interconnect_aximm_ddrmem3_M00_AXI_arcache[3:0],interconnect_aximm_ddrmem3_M00_AXI_arid[5:0],interconnect_aximm_ddrmem3_M00_AXI_arlen[7:0],interconnect_aximm_ddrmem3_M00_AXI_arlock[0:0],interconnect_aximm_ddrmem3_M00_AXI_arprot[2:0],interconnect_aximm_ddrmem3_M00_AXI_arqos[3:0],interconnect_aximm_ddrmem3_M00_AXI_arready,interconnect_aximm_ddrmem3_M00_AXI_arsize[2:0],interconnect_aximm_ddrmem3_M00_AXI_arvalid,interconnect_aximm_ddrmem3_M00_AXI_awaddr[31:0],interconnect_aximm_ddrmem3_M00_AXI_awburst[1:0],interconnect_aximm_ddrmem3_M00_AXI_awcache[3:0],interconnect_aximm_ddrmem3_M00_AXI_awid[5:0],interconnect_aximm_ddrmem3_M00_AXI_awlen[7:0],interconnect_aximm_ddrmem3_M00_AXI_awlock[0:0],interconnect_aximm_ddrmem3_M00_AXI_awprot[2:0],interconnect_aximm_ddrmem3_M00_AXI_awqos[3:0],interconnect_aximm_ddrmem3_M00_AXI_awready,interconnect_aximm_ddrmem3_M00_AXI_awsize[2:0],interconnect_aximm_ddrmem3_M00_AXI_awvalid,interconnect_aximm_ddrmem3_M00_AXI_bid[5:0],interconnect_aximm_ddrmem3_M00_AXI_bready,interconnect_aximm_ddrmem3_M00_AXI_bresp[1:0],interconnect_aximm_ddrmem3_M00_AXI_bvalid,interconnect_aximm_ddrmem3_M00_AXI_rdata[127:0],interconnect_aximm_ddrmem3_M00_AXI_rid[5:0],interconnect_aximm_ddrmem3_M00_AXI_rlast,interconnect_aximm_ddrmem3_M00_AXI_rready,interconnect_aximm_ddrmem3_M00_AXI_rresp[1:0],interconnect_aximm_ddrmem3_M00_AXI_rvalid,interconnect_aximm_ddrmem3_M00_AXI_wdata[127:0],interconnect_aximm_ddrmem3_M00_AXI_wlast,interconnect_aximm_ddrmem3_M00_AXI_wready,interconnect_aximm_ddrmem3_M00_AXI_wstrb[15:0],interconnect_aximm_ddrmem3_M00_AXI_wvalid,interconnect_aximm_ddrmem4_M00_AXI_araddr[31:0],interconnect_aximm_ddrmem4_M00_AXI_arburst[1:0],interconnect_aximm_ddrmem4_M00_AXI_arcache[3:0],interconnect_aximm_ddrmem4_M00_AXI_arid[5:0],interconnect_aximm_ddrmem4_M00_AXI_arlen[7:0],interconnect_aximm_ddrmem4_M00_AXI_arlock[0:0],interconnect_aximm_ddrmem4_M00_AXI_arprot[2:0],interconnect_aximm_ddrmem4_M00_AXI_arqos[3:0],interconnect_aximm_ddrmem4_M00_AXI_arready,interconnect_aximm_ddrmem4_M00_AXI_arsize[2:0],interconnect_aximm_ddrmem4_M00_AXI_arvalid,interconnect_aximm_ddrmem4_M00_AXI_awaddr[31:0],interconnect_aximm_ddrmem4_M00_AXI_awburst[1:0],interconnect_aximm_ddrmem4_M00_AXI_awcache[3:0],interconnect_aximm_ddrmem4_M00_AXI_awid[5:0],interconnect_aximm_ddrmem4_M00_AXI_awlen[7:0],interconnect_aximm_ddrmem4_M00_AXI_awlock[0:0],interconnect_aximm_ddrmem4_M00_AXI_awprot[2:0],interconnect_aximm_ddrmem4_M00_AXI_awqos[3:0],interconnect_aximm_ddrmem4_M00_AXI_awready,interconnect_aximm_ddrmem4_M00_AXI_awsize[2:0],interconnect_aximm_ddrmem4_M00_AXI_awvalid,interconnect_aximm_ddrmem4_M00_AXI_bid[5:0],interconnect_aximm_ddrmem4_M00_AXI_bready,interconnect_aximm_ddrmem4_M00_AXI_bresp[1:0],interconnect_aximm_ddrmem4_M00_AXI_bvalid,interconnect_aximm_ddrmem4_M00_AXI_rdata[127:0],interconnect_aximm_ddrmem4_M00_AXI_rid[5:0],interconnect_aximm_ddrmem4_M00_AXI_rlast,interconnect_aximm_ddrmem4_M00_AXI_rready,interconnect_aximm_ddrmem4_M00_AXI_rresp[1:0],interconnect_aximm_ddrmem4_M00_AXI_rvalid,interconnect_aximm_ddrmem4_M00_AXI_wdata[127:0],interconnect_aximm_ddrmem4_M00_AXI_wlast,interconnect_aximm_ddrmem4_M00_AXI_wready,interconnect_aximm_ddrmem4_M00_AXI_wstrb[15:0],interconnect_aximm_ddrmem4_M00_AXI_wvalid,interconnect_aximm_ddrmem5_M00_AXI_araddr[31:0],interconnect_aximm_ddrmem5_M00_AXI_arburst[1:0],interconnect_aximm_ddrmem5_M00_AXI_arcache[3:0],interconnect_aximm_ddrmem5_M00_AXI_arid[5:0],interconnect_aximm_ddrmem5_M00_AXI_arlen[7:0],interconnect_aximm_ddrmem5_M00_AXI_arlock[0:0],interconnect_aximm_ddrmem5_M00_AXI_arprot[2:0],interconnect_aximm_ddrmem5_M00_AXI_arqos[3:0],interconnect_aximm_ddrmem5_M00_AXI_arready,interconnect_aximm_ddrmem5_M00_AXI_arsize[2:0],interconnect_aximm_ddrmem5_M00_AXI_arvalid,interconnect_aximm_ddrmem5_M00_AXI_awaddr[31:0],interconnect_aximm_ddrmem5_M00_AXI_awburst[1:0],interconnect_aximm_ddrmem5_M00_AXI_awcache[3:0],interconnect_aximm_ddrmem5_M00_AXI_awid[5:0],interconnect_aximm_ddrmem5_M00_AXI_awlen[7:0],interconnect_aximm_ddrmem5_M00_AXI_awlock[0:0],interconnect_aximm_ddrmem5_M00_AXI_awprot[2:0],interconnect_aximm_ddrmem5_M00_AXI_awqos[3:0],interconnect_aximm_ddrmem5_M00_AXI_awready,interconnect_aximm_ddrmem5_M00_AXI_awsize[2:0],interconnect_aximm_ddrmem5_M00_AXI_awvalid,interconnect_aximm_ddrmem5_M00_AXI_bid[5:0],interconnect_aximm_ddrmem5_M00_AXI_bready,interconnect_aximm_ddrmem5_M00_AXI_bresp[1:0],interconnect_aximm_ddrmem5_M00_AXI_bvalid,interconnect_aximm_ddrmem5_M00_AXI_rdata[127:0],interconnect_aximm_ddrmem5_M00_AXI_rid[5:0],interconnect_aximm_ddrmem5_M00_AXI_rlast,interconnect_aximm_ddrmem5_M00_AXI_rready,interconnect_aximm_ddrmem5_M00_AXI_rresp[1:0],interconnect_aximm_ddrmem5_M00_AXI_rvalid,interconnect_aximm_ddrmem5_M00_AXI_wdata[127:0],interconnect_aximm_ddrmem5_M00_AXI_wlast,interconnect_aximm_ddrmem5_M00_AXI_wready,interconnect_aximm_ddrmem5_M00_AXI_wstrb[15:0],interconnect_aximm_ddrmem5_M00_AXI_wvalid,pr_reset_n[0:0],regslice_control_userpf_M_AXI_araddr[31:0],regslice_control_userpf_M_AXI_arprot[2:0],regslice_control_userpf_M_AXI_arready,regslice_control_userpf_M_AXI_arvalid,regslice_control_userpf_M_AXI_awaddr[31:0],regslice_control_userpf_M_AXI_awprot[2:0],regslice_control_userpf_M_AXI_awready,regslice_control_userpf_M_AXI_awvalid,regslice_control_userpf_M_AXI_bready,regslice_control_userpf_M_AXI_bresp[1:0],regslice_control_userpf_M_AXI_bvalid,regslice_control_userpf_M_AXI_rdata[31:0],regslice_control_userpf_M_AXI_rready,regslice_control_userpf_M_AXI_rresp[1:0],regslice_control_userpf_M_AXI_rvalid,regslice_control_userpf_M_AXI_wdata[31:0],regslice_control_userpf_M_AXI_wready,regslice_control_userpf_M_AXI_wstrb[3:0],regslice_control_userpf_M_AXI_wvalid,regslice_data_hpm0fpd_M_AXI1_araddr[31:0],regslice_data_hpm0fpd_M_AXI1_arburst[1:0],regslice_data_hpm0fpd_M_AXI1_arcache[3:0],regslice_data_hpm0fpd_M_AXI1_arid[15:0],regslice_data_hpm0fpd_M_AXI1_arlen[7:0],regslice_data_hpm0fpd_M_AXI1_arlock[0:0],regslice_data_hpm0fpd_M_AXI1_arprot[2:0],regslice_data_hpm0fpd_M_AXI1_arqos[3:0],regslice_data_hpm0fpd_M_AXI1_arready,regslice_data_hpm0fpd_M_AXI1_arregion[3:0],regslice_data_hpm0fpd_M_AXI1_arsize[2:0],regslice_data_hpm0fpd_M_AXI1_arvalid,regslice_data_hpm0fpd_M_AXI1_awaddr[31:0],regslice_data_hpm0fpd_M_AXI1_awburst[1:0],regslice_data_hpm0fpd_M_AXI1_awcache[3:0],regslice_data_hpm0fpd_M_AXI1_awid[15:0],regslice_data_hpm0fpd_M_AXI1_awlen[7:0],regslice_data_hpm0fpd_M_AXI1_awlock[0:0],regslice_data_hpm0fpd_M_AXI1_awprot[2:0],regslice_data_hpm0fpd_M_AXI1_awqos[3:0],regslice_data_hpm0fpd_M_AXI1_awready,regslice_data_hpm0fpd_M_AXI1_awregion[3:0],regslice_data_hpm0fpd_M_AXI1_awsize[2:0],regslice_data_hpm0fpd_M_AXI1_awvalid,regslice_data_hpm0fpd_M_AXI1_bid[15:0],regslice_data_hpm0fpd_M_AXI1_bready,regslice_data_hpm0fpd_M_AXI1_bresp[1:0],regslice_data_hpm0fpd_M_AXI1_bvalid,regslice_data_hpm0fpd_M_AXI1_rdata[127:0],regslice_data_hpm0fpd_M_AXI1_rid[15:0],regslice_data_hpm0fpd_M_AXI1_rlast,regslice_data_hpm0fpd_M_AXI1_rready,regslice_data_hpm0fpd_M_AXI1_rresp[1:0],regslice_data_hpm0fpd_M_AXI1_rvalid,regslice_data_hpm0fpd_M_AXI1_wdata[127:0],regslice_data_hpm0fpd_M_AXI1_wlast,regslice_data_hpm0fpd_M_AXI1_wready,regslice_data_hpm0fpd_M_AXI1_wstrb[15:0],regslice_data_hpm0fpd_M_AXI1_wvalid,reset,runtest,sel,shift,tck,tdi,tdo,tms,update,xlconcat_interrupt_dout[31:0]" */;
  input bscanid_en;
  input capture;
  input clkwiz_kernel2_clk_out1;
  input clkwiz_kernel2_locked;
  input clkwiz_kernel3_clk_out;
  input clkwiz_kernel4_clk_out;
  input clkwiz_kernel5_clk_out;
  input clkwiz_kernel6_clk_out;
  input clkwiz_kernel_clk_out1;
  input clkwiz_kernel_locked;
  input clkwiz_sysclks_clk_out2;
  input clkwiz_sysclks_locked;
  input drck;
  output [31:0]interconnect_aximm_ddrmem2_M00_AXI_araddr;
  output [1:0]interconnect_aximm_ddrmem2_M00_AXI_arburst;
  output [3:0]interconnect_aximm_ddrmem2_M00_AXI_arcache;
  output [5:0]interconnect_aximm_ddrmem2_M00_AXI_arid;
  output [7:0]interconnect_aximm_ddrmem2_M00_AXI_arlen;
  output [0:0]interconnect_aximm_ddrmem2_M00_AXI_arlock;
  output [2:0]interconnect_aximm_ddrmem2_M00_AXI_arprot;
  output [3:0]interconnect_aximm_ddrmem2_M00_AXI_arqos;
  input interconnect_aximm_ddrmem2_M00_AXI_arready;
  output [2:0]interconnect_aximm_ddrmem2_M00_AXI_arsize;
  output interconnect_aximm_ddrmem2_M00_AXI_arvalid;
  output [31:0]interconnect_aximm_ddrmem2_M00_AXI_awaddr;
  output [1:0]interconnect_aximm_ddrmem2_M00_AXI_awburst;
  output [3:0]interconnect_aximm_ddrmem2_M00_AXI_awcache;
  output [5:0]interconnect_aximm_ddrmem2_M00_AXI_awid;
  output [7:0]interconnect_aximm_ddrmem2_M00_AXI_awlen;
  output [0:0]interconnect_aximm_ddrmem2_M00_AXI_awlock;
  output [2:0]interconnect_aximm_ddrmem2_M00_AXI_awprot;
  output [3:0]interconnect_aximm_ddrmem2_M00_AXI_awqos;
  input interconnect_aximm_ddrmem2_M00_AXI_awready;
  output [2:0]interconnect_aximm_ddrmem2_M00_AXI_awsize;
  output interconnect_aximm_ddrmem2_M00_AXI_awvalid;
  input [5:0]interconnect_aximm_ddrmem2_M00_AXI_bid;
  output interconnect_aximm_ddrmem2_M00_AXI_bready;
  input [1:0]interconnect_aximm_ddrmem2_M00_AXI_bresp;
  input interconnect_aximm_ddrmem2_M00_AXI_bvalid;
  input [127:0]interconnect_aximm_ddrmem2_M00_AXI_rdata;
  input [5:0]interconnect_aximm_ddrmem2_M00_AXI_rid;
  input interconnect_aximm_ddrmem2_M00_AXI_rlast;
  output interconnect_aximm_ddrmem2_M00_AXI_rready;
  input [1:0]interconnect_aximm_ddrmem2_M00_AXI_rresp;
  input interconnect_aximm_ddrmem2_M00_AXI_rvalid;
  output [127:0]interconnect_aximm_ddrmem2_M00_AXI_wdata;
  output interconnect_aximm_ddrmem2_M00_AXI_wlast;
  input interconnect_aximm_ddrmem2_M00_AXI_wready;
  output [15:0]interconnect_aximm_ddrmem2_M00_AXI_wstrb;
  output interconnect_aximm_ddrmem2_M00_AXI_wvalid;
  output [31:0]interconnect_aximm_ddrmem3_M00_AXI_araddr;
  output [1:0]interconnect_aximm_ddrmem3_M00_AXI_arburst;
  output [3:0]interconnect_aximm_ddrmem3_M00_AXI_arcache;
  output [5:0]interconnect_aximm_ddrmem3_M00_AXI_arid;
  output [7:0]interconnect_aximm_ddrmem3_M00_AXI_arlen;
  output [0:0]interconnect_aximm_ddrmem3_M00_AXI_arlock;
  output [2:0]interconnect_aximm_ddrmem3_M00_AXI_arprot;
  output [3:0]interconnect_aximm_ddrmem3_M00_AXI_arqos;
  input interconnect_aximm_ddrmem3_M00_AXI_arready;
  output [2:0]interconnect_aximm_ddrmem3_M00_AXI_arsize;
  output interconnect_aximm_ddrmem3_M00_AXI_arvalid;
  output [31:0]interconnect_aximm_ddrmem3_M00_AXI_awaddr;
  output [1:0]interconnect_aximm_ddrmem3_M00_AXI_awburst;
  output [3:0]interconnect_aximm_ddrmem3_M00_AXI_awcache;
  output [5:0]interconnect_aximm_ddrmem3_M00_AXI_awid;
  output [7:0]interconnect_aximm_ddrmem3_M00_AXI_awlen;
  output [0:0]interconnect_aximm_ddrmem3_M00_AXI_awlock;
  output [2:0]interconnect_aximm_ddrmem3_M00_AXI_awprot;
  output [3:0]interconnect_aximm_ddrmem3_M00_AXI_awqos;
  input interconnect_aximm_ddrmem3_M00_AXI_awready;
  output [2:0]interconnect_aximm_ddrmem3_M00_AXI_awsize;
  output interconnect_aximm_ddrmem3_M00_AXI_awvalid;
  input [5:0]interconnect_aximm_ddrmem3_M00_AXI_bid;
  output interconnect_aximm_ddrmem3_M00_AXI_bready;
  input [1:0]interconnect_aximm_ddrmem3_M00_AXI_bresp;
  input interconnect_aximm_ddrmem3_M00_AXI_bvalid;
  input [127:0]interconnect_aximm_ddrmem3_M00_AXI_rdata;
  input [5:0]interconnect_aximm_ddrmem3_M00_AXI_rid;
  input interconnect_aximm_ddrmem3_M00_AXI_rlast;
  output interconnect_aximm_ddrmem3_M00_AXI_rready;
  input [1:0]interconnect_aximm_ddrmem3_M00_AXI_rresp;
  input interconnect_aximm_ddrmem3_M00_AXI_rvalid;
  output [127:0]interconnect_aximm_ddrmem3_M00_AXI_wdata;
  output interconnect_aximm_ddrmem3_M00_AXI_wlast;
  input interconnect_aximm_ddrmem3_M00_AXI_wready;
  output [15:0]interconnect_aximm_ddrmem3_M00_AXI_wstrb;
  output interconnect_aximm_ddrmem3_M00_AXI_wvalid;
  output [31:0]interconnect_aximm_ddrmem4_M00_AXI_araddr;
  output [1:0]interconnect_aximm_ddrmem4_M00_AXI_arburst;
  output [3:0]interconnect_aximm_ddrmem4_M00_AXI_arcache;
  output [5:0]interconnect_aximm_ddrmem4_M00_AXI_arid;
  output [7:0]interconnect_aximm_ddrmem4_M00_AXI_arlen;
  output [0:0]interconnect_aximm_ddrmem4_M00_AXI_arlock;
  output [2:0]interconnect_aximm_ddrmem4_M00_AXI_arprot;
  output [3:0]interconnect_aximm_ddrmem4_M00_AXI_arqos;
  input interconnect_aximm_ddrmem4_M00_AXI_arready;
  output [2:0]interconnect_aximm_ddrmem4_M00_AXI_arsize;
  output interconnect_aximm_ddrmem4_M00_AXI_arvalid;
  output [31:0]interconnect_aximm_ddrmem4_M00_AXI_awaddr;
  output [1:0]interconnect_aximm_ddrmem4_M00_AXI_awburst;
  output [3:0]interconnect_aximm_ddrmem4_M00_AXI_awcache;
  output [5:0]interconnect_aximm_ddrmem4_M00_AXI_awid;
  output [7:0]interconnect_aximm_ddrmem4_M00_AXI_awlen;
  output [0:0]interconnect_aximm_ddrmem4_M00_AXI_awlock;
  output [2:0]interconnect_aximm_ddrmem4_M00_AXI_awprot;
  output [3:0]interconnect_aximm_ddrmem4_M00_AXI_awqos;
  input interconnect_aximm_ddrmem4_M00_AXI_awready;
  output [2:0]interconnect_aximm_ddrmem4_M00_AXI_awsize;
  output interconnect_aximm_ddrmem4_M00_AXI_awvalid;
  input [5:0]interconnect_aximm_ddrmem4_M00_AXI_bid;
  output interconnect_aximm_ddrmem4_M00_AXI_bready;
  input [1:0]interconnect_aximm_ddrmem4_M00_AXI_bresp;
  input interconnect_aximm_ddrmem4_M00_AXI_bvalid;
  input [127:0]interconnect_aximm_ddrmem4_M00_AXI_rdata;
  input [5:0]interconnect_aximm_ddrmem4_M00_AXI_rid;
  input interconnect_aximm_ddrmem4_M00_AXI_rlast;
  output interconnect_aximm_ddrmem4_M00_AXI_rready;
  input [1:0]interconnect_aximm_ddrmem4_M00_AXI_rresp;
  input interconnect_aximm_ddrmem4_M00_AXI_rvalid;
  output [127:0]interconnect_aximm_ddrmem4_M00_AXI_wdata;
  output interconnect_aximm_ddrmem4_M00_AXI_wlast;
  input interconnect_aximm_ddrmem4_M00_AXI_wready;
  output [15:0]interconnect_aximm_ddrmem4_M00_AXI_wstrb;
  output interconnect_aximm_ddrmem4_M00_AXI_wvalid;
  output [31:0]interconnect_aximm_ddrmem5_M00_AXI_araddr;
  output [1:0]interconnect_aximm_ddrmem5_M00_AXI_arburst;
  output [3:0]interconnect_aximm_ddrmem5_M00_AXI_arcache;
  output [5:0]interconnect_aximm_ddrmem5_M00_AXI_arid;
  output [7:0]interconnect_aximm_ddrmem5_M00_AXI_arlen;
  output [0:0]interconnect_aximm_ddrmem5_M00_AXI_arlock;
  output [2:0]interconnect_aximm_ddrmem5_M00_AXI_arprot;
  output [3:0]interconnect_aximm_ddrmem5_M00_AXI_arqos;
  input interconnect_aximm_ddrmem5_M00_AXI_arready;
  output [2:0]interconnect_aximm_ddrmem5_M00_AXI_arsize;
  output interconnect_aximm_ddrmem5_M00_AXI_arvalid;
  output [31:0]interconnect_aximm_ddrmem5_M00_AXI_awaddr;
  output [1:0]interconnect_aximm_ddrmem5_M00_AXI_awburst;
  output [3:0]interconnect_aximm_ddrmem5_M00_AXI_awcache;
  output [5:0]interconnect_aximm_ddrmem5_M00_AXI_awid;
  output [7:0]interconnect_aximm_ddrmem5_M00_AXI_awlen;
  output [0:0]interconnect_aximm_ddrmem5_M00_AXI_awlock;
  output [2:0]interconnect_aximm_ddrmem5_M00_AXI_awprot;
  output [3:0]interconnect_aximm_ddrmem5_M00_AXI_awqos;
  input interconnect_aximm_ddrmem5_M00_AXI_awready;
  output [2:0]interconnect_aximm_ddrmem5_M00_AXI_awsize;
  output interconnect_aximm_ddrmem5_M00_AXI_awvalid;
  input [5:0]interconnect_aximm_ddrmem5_M00_AXI_bid;
  output interconnect_aximm_ddrmem5_M00_AXI_bready;
  input [1:0]interconnect_aximm_ddrmem5_M00_AXI_bresp;
  input interconnect_aximm_ddrmem5_M00_AXI_bvalid;
  input [127:0]interconnect_aximm_ddrmem5_M00_AXI_rdata;
  input [5:0]interconnect_aximm_ddrmem5_M00_AXI_rid;
  input interconnect_aximm_ddrmem5_M00_AXI_rlast;
  output interconnect_aximm_ddrmem5_M00_AXI_rready;
  input [1:0]interconnect_aximm_ddrmem5_M00_AXI_rresp;
  input interconnect_aximm_ddrmem5_M00_AXI_rvalid;
  output [127:0]interconnect_aximm_ddrmem5_M00_AXI_wdata;
  output interconnect_aximm_ddrmem5_M00_AXI_wlast;
  input interconnect_aximm_ddrmem5_M00_AXI_wready;
  output [15:0]interconnect_aximm_ddrmem5_M00_AXI_wstrb;
  output interconnect_aximm_ddrmem5_M00_AXI_wvalid;
  input [0:0]pr_reset_n;
  input [31:0]regslice_control_userpf_M_AXI_araddr;
  input [2:0]regslice_control_userpf_M_AXI_arprot;
  output regslice_control_userpf_M_AXI_arready;
  input regslice_control_userpf_M_AXI_arvalid;
  input [31:0]regslice_control_userpf_M_AXI_awaddr;
  input [2:0]regslice_control_userpf_M_AXI_awprot;
  output regslice_control_userpf_M_AXI_awready;
  input regslice_control_userpf_M_AXI_awvalid;
  input regslice_control_userpf_M_AXI_bready;
  output [1:0]regslice_control_userpf_M_AXI_bresp;
  output regslice_control_userpf_M_AXI_bvalid;
  output [31:0]regslice_control_userpf_M_AXI_rdata;
  input regslice_control_userpf_M_AXI_rready;
  output [1:0]regslice_control_userpf_M_AXI_rresp;
  output regslice_control_userpf_M_AXI_rvalid;
  input [31:0]regslice_control_userpf_M_AXI_wdata;
  output regslice_control_userpf_M_AXI_wready;
  input [3:0]regslice_control_userpf_M_AXI_wstrb;
  input regslice_control_userpf_M_AXI_wvalid;
  input [31:0]regslice_data_hpm0fpd_M_AXI1_araddr;
  input [1:0]regslice_data_hpm0fpd_M_AXI1_arburst;
  input [3:0]regslice_data_hpm0fpd_M_AXI1_arcache;
  input [15:0]regslice_data_hpm0fpd_M_AXI1_arid;
  input [7:0]regslice_data_hpm0fpd_M_AXI1_arlen;
  input [0:0]regslice_data_hpm0fpd_M_AXI1_arlock;
  input [2:0]regslice_data_hpm0fpd_M_AXI1_arprot;
  input [3:0]regslice_data_hpm0fpd_M_AXI1_arqos;
  output regslice_data_hpm0fpd_M_AXI1_arready;
  input [3:0]regslice_data_hpm0fpd_M_AXI1_arregion;
  input [2:0]regslice_data_hpm0fpd_M_AXI1_arsize;
  input regslice_data_hpm0fpd_M_AXI1_arvalid;
  input [31:0]regslice_data_hpm0fpd_M_AXI1_awaddr;
  input [1:0]regslice_data_hpm0fpd_M_AXI1_awburst;
  input [3:0]regslice_data_hpm0fpd_M_AXI1_awcache;
  input [15:0]regslice_data_hpm0fpd_M_AXI1_awid;
  input [7:0]regslice_data_hpm0fpd_M_AXI1_awlen;
  input [0:0]regslice_data_hpm0fpd_M_AXI1_awlock;
  input [2:0]regslice_data_hpm0fpd_M_AXI1_awprot;
  input [3:0]regslice_data_hpm0fpd_M_AXI1_awqos;
  output regslice_data_hpm0fpd_M_AXI1_awready;
  input [3:0]regslice_data_hpm0fpd_M_AXI1_awregion;
  input [2:0]regslice_data_hpm0fpd_M_AXI1_awsize;
  input regslice_data_hpm0fpd_M_AXI1_awvalid;
  output [15:0]regslice_data_hpm0fpd_M_AXI1_bid;
  input regslice_data_hpm0fpd_M_AXI1_bready;
  output [1:0]regslice_data_hpm0fpd_M_AXI1_bresp;
  output regslice_data_hpm0fpd_M_AXI1_bvalid;
  output [127:0]regslice_data_hpm0fpd_M_AXI1_rdata;
  output [15:0]regslice_data_hpm0fpd_M_AXI1_rid;
  output regslice_data_hpm0fpd_M_AXI1_rlast;
  input regslice_data_hpm0fpd_M_AXI1_rready;
  output [1:0]regslice_data_hpm0fpd_M_AXI1_rresp;
  output regslice_data_hpm0fpd_M_AXI1_rvalid;
  input [127:0]regslice_data_hpm0fpd_M_AXI1_wdata;
  input regslice_data_hpm0fpd_M_AXI1_wlast;
  output regslice_data_hpm0fpd_M_AXI1_wready;
  input [15:0]regslice_data_hpm0fpd_M_AXI1_wstrb;
  input regslice_data_hpm0fpd_M_AXI1_wvalid;
  input reset;
  input runtest;
  input sel;
  input shift;
  input tck;
  input tdi;
  output tdo;
  input tms;
  input update;
  output [31:0]xlconcat_interrupt_dout;
endmodule
