//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Tue Jul  7 21:03:09 2026
//Host        : tonny-ASUS-TUF-Dash-F15-FX516PE-FX516PE running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target pfm_dynamic.bd
//Design      : pfm_dynamic
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module interrupt_concat_imp_1SXQM3I
   (In0,
    xlconcat_interrupt_dout);
  input [0:0]In0;
  output [31:0]xlconcat_interrupt_dout;

  wire [0:0]In0_1;
  wire [31:0]xlconcat_interrupt_0_dout;
  wire [0:0]xlconstant_gnd_dout;

  assign In0_1 = In0[0];
  assign xlconcat_interrupt_dout[31:0] = xlconcat_interrupt_0_dout;
  pfm_dynamic_xlconcat_interrupt_0_0 xlconcat_interrupt_0
       (.In0(In0_1),
        .In1(xlconstant_gnd_dout),
        .In10(xlconstant_gnd_dout),
        .In11(xlconstant_gnd_dout),
        .In12(xlconstant_gnd_dout),
        .In13(xlconstant_gnd_dout),
        .In14(xlconstant_gnd_dout),
        .In15(xlconstant_gnd_dout),
        .In16(xlconstant_gnd_dout),
        .In17(xlconstant_gnd_dout),
        .In18(xlconstant_gnd_dout),
        .In19(xlconstant_gnd_dout),
        .In2(xlconstant_gnd_dout),
        .In20(xlconstant_gnd_dout),
        .In21(xlconstant_gnd_dout),
        .In22(xlconstant_gnd_dout),
        .In23(xlconstant_gnd_dout),
        .In24(xlconstant_gnd_dout),
        .In25(xlconstant_gnd_dout),
        .In26(xlconstant_gnd_dout),
        .In27(xlconstant_gnd_dout),
        .In28(xlconstant_gnd_dout),
        .In29(xlconstant_gnd_dout),
        .In3(xlconstant_gnd_dout),
        .In30(xlconstant_gnd_dout),
        .In31(xlconstant_gnd_dout),
        .In4(xlconstant_gnd_dout),
        .In5(xlconstant_gnd_dout),
        .In6(xlconstant_gnd_dout),
        .In7(xlconstant_gnd_dout),
        .In8(xlconstant_gnd_dout),
        .In9(xlconstant_gnd_dout),
        .dout(xlconcat_interrupt_0_dout));
  pfm_dynamic_xlconstant_gnd_0 xlconstant_gnd
       (.dout(xlconstant_gnd_dout));
endmodule

module m00_couplers_imp_1A4N1A0
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_ds_to_m00_regslice_ARADDR;
  wire [1:0]auto_ds_to_m00_regslice_ARBURST;
  wire [3:0]auto_ds_to_m00_regslice_ARCACHE;
  wire [7:0]auto_ds_to_m00_regslice_ARLEN;
  wire [0:0]auto_ds_to_m00_regslice_ARLOCK;
  wire [2:0]auto_ds_to_m00_regslice_ARPROT;
  wire [3:0]auto_ds_to_m00_regslice_ARQOS;
  wire auto_ds_to_m00_regslice_ARREADY;
  wire [3:0]auto_ds_to_m00_regslice_ARREGION;
  wire [2:0]auto_ds_to_m00_regslice_ARSIZE;
  wire auto_ds_to_m00_regslice_ARVALID;
  wire [63:0]auto_ds_to_m00_regslice_AWADDR;
  wire [1:0]auto_ds_to_m00_regslice_AWBURST;
  wire [3:0]auto_ds_to_m00_regslice_AWCACHE;
  wire [7:0]auto_ds_to_m00_regslice_AWLEN;
  wire [0:0]auto_ds_to_m00_regslice_AWLOCK;
  wire [2:0]auto_ds_to_m00_regslice_AWPROT;
  wire [3:0]auto_ds_to_m00_regslice_AWQOS;
  wire auto_ds_to_m00_regslice_AWREADY;
  wire [3:0]auto_ds_to_m00_regslice_AWREGION;
  wire [2:0]auto_ds_to_m00_regslice_AWSIZE;
  wire auto_ds_to_m00_regslice_AWVALID;
  wire auto_ds_to_m00_regslice_BREADY;
  wire [1:0]auto_ds_to_m00_regslice_BRESP;
  wire auto_ds_to_m00_regslice_BVALID;
  wire [127:0]auto_ds_to_m00_regslice_RDATA;
  wire auto_ds_to_m00_regslice_RLAST;
  wire auto_ds_to_m00_regslice_RREADY;
  wire [1:0]auto_ds_to_m00_regslice_RRESP;
  wire auto_ds_to_m00_regslice_RVALID;
  wire [127:0]auto_ds_to_m00_regslice_WDATA;
  wire auto_ds_to_m00_regslice_WLAST;
  wire auto_ds_to_m00_regslice_WREADY;
  wire [15:0]auto_ds_to_m00_regslice_WSTRB;
  wire auto_ds_to_m00_regslice_WVALID;
  wire [63:0]auto_rs_w_to_auto_ds_ARADDR;
  wire [1:0]auto_rs_w_to_auto_ds_ARBURST;
  wire [3:0]auto_rs_w_to_auto_ds_ARCACHE;
  wire [1:0]auto_rs_w_to_auto_ds_ARID;
  wire [7:0]auto_rs_w_to_auto_ds_ARLEN;
  wire [0:0]auto_rs_w_to_auto_ds_ARLOCK;
  wire [2:0]auto_rs_w_to_auto_ds_ARPROT;
  wire [3:0]auto_rs_w_to_auto_ds_ARQOS;
  wire auto_rs_w_to_auto_ds_ARREADY;
  wire [3:0]auto_rs_w_to_auto_ds_ARREGION;
  wire [2:0]auto_rs_w_to_auto_ds_ARSIZE;
  wire auto_rs_w_to_auto_ds_ARVALID;
  wire [63:0]auto_rs_w_to_auto_ds_AWADDR;
  wire [1:0]auto_rs_w_to_auto_ds_AWBURST;
  wire [3:0]auto_rs_w_to_auto_ds_AWCACHE;
  wire [1:0]auto_rs_w_to_auto_ds_AWID;
  wire [7:0]auto_rs_w_to_auto_ds_AWLEN;
  wire [0:0]auto_rs_w_to_auto_ds_AWLOCK;
  wire [2:0]auto_rs_w_to_auto_ds_AWPROT;
  wire [3:0]auto_rs_w_to_auto_ds_AWQOS;
  wire auto_rs_w_to_auto_ds_AWREADY;
  wire [3:0]auto_rs_w_to_auto_ds_AWREGION;
  wire [2:0]auto_rs_w_to_auto_ds_AWSIZE;
  wire auto_rs_w_to_auto_ds_AWVALID;
  wire [1:0]auto_rs_w_to_auto_ds_BID;
  wire auto_rs_w_to_auto_ds_BREADY;
  wire [1:0]auto_rs_w_to_auto_ds_BRESP;
  wire auto_rs_w_to_auto_ds_BVALID;
  wire [511:0]auto_rs_w_to_auto_ds_RDATA;
  wire [1:0]auto_rs_w_to_auto_ds_RID;
  wire auto_rs_w_to_auto_ds_RLAST;
  wire auto_rs_w_to_auto_ds_RREADY;
  wire [1:0]auto_rs_w_to_auto_ds_RRESP;
  wire auto_rs_w_to_auto_ds_RVALID;
  wire [511:0]auto_rs_w_to_auto_ds_WDATA;
  wire auto_rs_w_to_auto_ds_WLAST;
  wire auto_rs_w_to_auto_ds_WREADY;
  wire [63:0]auto_rs_w_to_auto_ds_WSTRB;
  wire auto_rs_w_to_auto_ds_WVALID;
  wire [63:0]m00_couplers_to_auto_rs_w_ARADDR;
  wire [1:0]m00_couplers_to_auto_rs_w_ARBURST;
  wire [3:0]m00_couplers_to_auto_rs_w_ARCACHE;
  wire [1:0]m00_couplers_to_auto_rs_w_ARID;
  wire [7:0]m00_couplers_to_auto_rs_w_ARLEN;
  wire [0:0]m00_couplers_to_auto_rs_w_ARLOCK;
  wire [2:0]m00_couplers_to_auto_rs_w_ARPROT;
  wire [3:0]m00_couplers_to_auto_rs_w_ARQOS;
  wire m00_couplers_to_auto_rs_w_ARREADY;
  wire [3:0]m00_couplers_to_auto_rs_w_ARREGION;
  wire [2:0]m00_couplers_to_auto_rs_w_ARSIZE;
  wire m00_couplers_to_auto_rs_w_ARVALID;
  wire [63:0]m00_couplers_to_auto_rs_w_AWADDR;
  wire [1:0]m00_couplers_to_auto_rs_w_AWBURST;
  wire [3:0]m00_couplers_to_auto_rs_w_AWCACHE;
  wire [1:0]m00_couplers_to_auto_rs_w_AWID;
  wire [7:0]m00_couplers_to_auto_rs_w_AWLEN;
  wire [0:0]m00_couplers_to_auto_rs_w_AWLOCK;
  wire [2:0]m00_couplers_to_auto_rs_w_AWPROT;
  wire [3:0]m00_couplers_to_auto_rs_w_AWQOS;
  wire m00_couplers_to_auto_rs_w_AWREADY;
  wire [3:0]m00_couplers_to_auto_rs_w_AWREGION;
  wire [2:0]m00_couplers_to_auto_rs_w_AWSIZE;
  wire m00_couplers_to_auto_rs_w_AWVALID;
  wire [1:0]m00_couplers_to_auto_rs_w_BID;
  wire m00_couplers_to_auto_rs_w_BREADY;
  wire [1:0]m00_couplers_to_auto_rs_w_BRESP;
  wire m00_couplers_to_auto_rs_w_BVALID;
  wire [511:0]m00_couplers_to_auto_rs_w_RDATA;
  wire [1:0]m00_couplers_to_auto_rs_w_RID;
  wire m00_couplers_to_auto_rs_w_RLAST;
  wire m00_couplers_to_auto_rs_w_RREADY;
  wire [1:0]m00_couplers_to_auto_rs_w_RRESP;
  wire m00_couplers_to_auto_rs_w_RVALID;
  wire [511:0]m00_couplers_to_auto_rs_w_WDATA;
  wire m00_couplers_to_auto_rs_w_WLAST;
  wire m00_couplers_to_auto_rs_w_WREADY;
  wire [63:0]m00_couplers_to_auto_rs_w_WSTRB;
  wire m00_couplers_to_auto_rs_w_WVALID;
  wire [63:0]m00_regslice_to_m00_couplers_ARADDR;
  wire [1:0]m00_regslice_to_m00_couplers_ARBURST;
  wire [3:0]m00_regslice_to_m00_couplers_ARCACHE;
  wire [7:0]m00_regslice_to_m00_couplers_ARLEN;
  wire [0:0]m00_regslice_to_m00_couplers_ARLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_ARPROT;
  wire [3:0]m00_regslice_to_m00_couplers_ARQOS;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire [2:0]m00_regslice_to_m00_couplers_ARSIZE;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [63:0]m00_regslice_to_m00_couplers_AWADDR;
  wire [1:0]m00_regslice_to_m00_couplers_AWBURST;
  wire [3:0]m00_regslice_to_m00_couplers_AWCACHE;
  wire [7:0]m00_regslice_to_m00_couplers_AWLEN;
  wire [0:0]m00_regslice_to_m00_couplers_AWLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_AWPROT;
  wire [3:0]m00_regslice_to_m00_couplers_AWQOS;
  wire m00_regslice_to_m00_couplers_AWREADY;
  wire [2:0]m00_regslice_to_m00_couplers_AWSIZE;
  wire m00_regslice_to_m00_couplers_AWVALID;
  wire m00_regslice_to_m00_couplers_BREADY;
  wire [1:0]m00_regslice_to_m00_couplers_BRESP;
  wire m00_regslice_to_m00_couplers_BVALID;
  wire [127:0]m00_regslice_to_m00_couplers_RDATA;
  wire m00_regslice_to_m00_couplers_RLAST;
  wire m00_regslice_to_m00_couplers_RREADY;
  wire [1:0]m00_regslice_to_m00_couplers_RRESP;
  wire m00_regslice_to_m00_couplers_RVALID;
  wire [127:0]m00_regslice_to_m00_couplers_WDATA;
  wire m00_regslice_to_m00_couplers_WLAST;
  wire m00_regslice_to_m00_couplers_WREADY;
  wire [15:0]m00_regslice_to_m00_couplers_WSTRB;
  wire m00_regslice_to_m00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = m00_regslice_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_regslice_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_regslice_to_m00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = m00_regslice_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = m00_regslice_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_regslice_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_regslice_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m00_regslice_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = m00_regslice_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_regslice_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_regslice_to_m00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = m00_regslice_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = m00_regslice_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_regslice_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_regslice_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m00_regslice_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[127:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wlast = m00_regslice_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = m00_regslice_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_rs_w_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_rs_w_AWREADY;
  assign S_AXI_bid[1:0] = m00_couplers_to_auto_rs_w_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_rs_w_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_rs_w_BVALID;
  assign S_AXI_rdata[511:0] = m00_couplers_to_auto_rs_w_RDATA;
  assign S_AXI_rid[1:0] = m00_couplers_to_auto_rs_w_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_rs_w_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_rs_w_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_rs_w_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_rs_w_WREADY;
  assign m00_couplers_to_auto_rs_w_ARADDR = S_AXI_araddr[63:0];
  assign m00_couplers_to_auto_rs_w_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_rs_w_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_rs_w_ARID = S_AXI_arid[1:0];
  assign m00_couplers_to_auto_rs_w_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_rs_w_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_rs_w_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_rs_w_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_rs_w_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_rs_w_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_rs_w_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_rs_w_AWADDR = S_AXI_awaddr[63:0];
  assign m00_couplers_to_auto_rs_w_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_rs_w_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_rs_w_AWID = S_AXI_awid[1:0];
  assign m00_couplers_to_auto_rs_w_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_rs_w_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_rs_w_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_rs_w_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_rs_w_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_rs_w_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_rs_w_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_rs_w_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_rs_w_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_rs_w_WDATA = S_AXI_wdata[511:0];
  assign m00_couplers_to_auto_rs_w_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_rs_w_WSTRB = S_AXI_wstrb[63:0];
  assign m00_couplers_to_auto_rs_w_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[127:0];
  assign m00_regslice_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
  pfm_dynamic_auto_ds_1 auto_ds
       (.m_axi_araddr(auto_ds_to_m00_regslice_ARADDR),
        .m_axi_arburst(auto_ds_to_m00_regslice_ARBURST),
        .m_axi_arcache(auto_ds_to_m00_regslice_ARCACHE),
        .m_axi_arlen(auto_ds_to_m00_regslice_ARLEN),
        .m_axi_arlock(auto_ds_to_m00_regslice_ARLOCK),
        .m_axi_arprot(auto_ds_to_m00_regslice_ARPROT),
        .m_axi_arqos(auto_ds_to_m00_regslice_ARQOS),
        .m_axi_arready(auto_ds_to_m00_regslice_ARREADY),
        .m_axi_arregion(auto_ds_to_m00_regslice_ARREGION),
        .m_axi_arsize(auto_ds_to_m00_regslice_ARSIZE),
        .m_axi_arvalid(auto_ds_to_m00_regslice_ARVALID),
        .m_axi_awaddr(auto_ds_to_m00_regslice_AWADDR),
        .m_axi_awburst(auto_ds_to_m00_regslice_AWBURST),
        .m_axi_awcache(auto_ds_to_m00_regslice_AWCACHE),
        .m_axi_awlen(auto_ds_to_m00_regslice_AWLEN),
        .m_axi_awlock(auto_ds_to_m00_regslice_AWLOCK),
        .m_axi_awprot(auto_ds_to_m00_regslice_AWPROT),
        .m_axi_awqos(auto_ds_to_m00_regslice_AWQOS),
        .m_axi_awready(auto_ds_to_m00_regslice_AWREADY),
        .m_axi_awregion(auto_ds_to_m00_regslice_AWREGION),
        .m_axi_awsize(auto_ds_to_m00_regslice_AWSIZE),
        .m_axi_awvalid(auto_ds_to_m00_regslice_AWVALID),
        .m_axi_bready(auto_ds_to_m00_regslice_BREADY),
        .m_axi_bresp(auto_ds_to_m00_regslice_BRESP),
        .m_axi_bvalid(auto_ds_to_m00_regslice_BVALID),
        .m_axi_rdata(auto_ds_to_m00_regslice_RDATA),
        .m_axi_rlast(auto_ds_to_m00_regslice_RLAST),
        .m_axi_rready(auto_ds_to_m00_regslice_RREADY),
        .m_axi_rresp(auto_ds_to_m00_regslice_RRESP),
        .m_axi_rvalid(auto_ds_to_m00_regslice_RVALID),
        .m_axi_wdata(auto_ds_to_m00_regslice_WDATA),
        .m_axi_wlast(auto_ds_to_m00_regslice_WLAST),
        .m_axi_wready(auto_ds_to_m00_regslice_WREADY),
        .m_axi_wstrb(auto_ds_to_m00_regslice_WSTRB),
        .m_axi_wvalid(auto_ds_to_m00_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(auto_rs_w_to_auto_ds_ARADDR),
        .s_axi_arburst(auto_rs_w_to_auto_ds_ARBURST),
        .s_axi_arcache(auto_rs_w_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(auto_rs_w_to_auto_ds_ARID),
        .s_axi_arlen(auto_rs_w_to_auto_ds_ARLEN),
        .s_axi_arlock(auto_rs_w_to_auto_ds_ARLOCK),
        .s_axi_arprot(auto_rs_w_to_auto_ds_ARPROT),
        .s_axi_arqos(auto_rs_w_to_auto_ds_ARQOS),
        .s_axi_arready(auto_rs_w_to_auto_ds_ARREADY),
        .s_axi_arregion(auto_rs_w_to_auto_ds_ARREGION),
        .s_axi_arsize(auto_rs_w_to_auto_ds_ARSIZE),
        .s_axi_arvalid(auto_rs_w_to_auto_ds_ARVALID),
        .s_axi_awaddr(auto_rs_w_to_auto_ds_AWADDR),
        .s_axi_awburst(auto_rs_w_to_auto_ds_AWBURST),
        .s_axi_awcache(auto_rs_w_to_auto_ds_AWCACHE),
        .s_axi_awid(auto_rs_w_to_auto_ds_AWID),
        .s_axi_awlen(auto_rs_w_to_auto_ds_AWLEN),
        .s_axi_awlock(auto_rs_w_to_auto_ds_AWLOCK),
        .s_axi_awprot(auto_rs_w_to_auto_ds_AWPROT),
        .s_axi_awqos(auto_rs_w_to_auto_ds_AWQOS),
        .s_axi_awready(auto_rs_w_to_auto_ds_AWREADY),
        .s_axi_awregion(auto_rs_w_to_auto_ds_AWREGION),
        .s_axi_awsize(auto_rs_w_to_auto_ds_AWSIZE),
        .s_axi_awvalid(auto_rs_w_to_auto_ds_AWVALID),
        .s_axi_bid(auto_rs_w_to_auto_ds_BID),
        .s_axi_bready(auto_rs_w_to_auto_ds_BREADY),
        .s_axi_bresp(auto_rs_w_to_auto_ds_BRESP),
        .s_axi_bvalid(auto_rs_w_to_auto_ds_BVALID),
        .s_axi_rdata(auto_rs_w_to_auto_ds_RDATA),
        .s_axi_rid(auto_rs_w_to_auto_ds_RID),
        .s_axi_rlast(auto_rs_w_to_auto_ds_RLAST),
        .s_axi_rready(auto_rs_w_to_auto_ds_RREADY),
        .s_axi_rresp(auto_rs_w_to_auto_ds_RRESP),
        .s_axi_rvalid(auto_rs_w_to_auto_ds_RVALID),
        .s_axi_wdata(auto_rs_w_to_auto_ds_WDATA),
        .s_axi_wlast(auto_rs_w_to_auto_ds_WLAST),
        .s_axi_wready(auto_rs_w_to_auto_ds_WREADY),
        .s_axi_wstrb(auto_rs_w_to_auto_ds_WSTRB),
        .s_axi_wvalid(auto_rs_w_to_auto_ds_WVALID));
  pfm_dynamic_auto_rs_w_2 auto_rs_w
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_rs_w_to_auto_ds_ARADDR),
        .m_axi_arburst(auto_rs_w_to_auto_ds_ARBURST),
        .m_axi_arcache(auto_rs_w_to_auto_ds_ARCACHE),
        .m_axi_arid(auto_rs_w_to_auto_ds_ARID),
        .m_axi_arlen(auto_rs_w_to_auto_ds_ARLEN),
        .m_axi_arlock(auto_rs_w_to_auto_ds_ARLOCK),
        .m_axi_arprot(auto_rs_w_to_auto_ds_ARPROT),
        .m_axi_arqos(auto_rs_w_to_auto_ds_ARQOS),
        .m_axi_arready(auto_rs_w_to_auto_ds_ARREADY),
        .m_axi_arregion(auto_rs_w_to_auto_ds_ARREGION),
        .m_axi_arsize(auto_rs_w_to_auto_ds_ARSIZE),
        .m_axi_arvalid(auto_rs_w_to_auto_ds_ARVALID),
        .m_axi_awaddr(auto_rs_w_to_auto_ds_AWADDR),
        .m_axi_awburst(auto_rs_w_to_auto_ds_AWBURST),
        .m_axi_awcache(auto_rs_w_to_auto_ds_AWCACHE),
        .m_axi_awid(auto_rs_w_to_auto_ds_AWID),
        .m_axi_awlen(auto_rs_w_to_auto_ds_AWLEN),
        .m_axi_awlock(auto_rs_w_to_auto_ds_AWLOCK),
        .m_axi_awprot(auto_rs_w_to_auto_ds_AWPROT),
        .m_axi_awqos(auto_rs_w_to_auto_ds_AWQOS),
        .m_axi_awready(auto_rs_w_to_auto_ds_AWREADY),
        .m_axi_awregion(auto_rs_w_to_auto_ds_AWREGION),
        .m_axi_awsize(auto_rs_w_to_auto_ds_AWSIZE),
        .m_axi_awvalid(auto_rs_w_to_auto_ds_AWVALID),
        .m_axi_bid(auto_rs_w_to_auto_ds_BID),
        .m_axi_bready(auto_rs_w_to_auto_ds_BREADY),
        .m_axi_bresp(auto_rs_w_to_auto_ds_BRESP),
        .m_axi_bvalid(auto_rs_w_to_auto_ds_BVALID),
        .m_axi_rdata(auto_rs_w_to_auto_ds_RDATA),
        .m_axi_rid(auto_rs_w_to_auto_ds_RID),
        .m_axi_rlast(auto_rs_w_to_auto_ds_RLAST),
        .m_axi_rready(auto_rs_w_to_auto_ds_RREADY),
        .m_axi_rresp(auto_rs_w_to_auto_ds_RRESP),
        .m_axi_rvalid(auto_rs_w_to_auto_ds_RVALID),
        .m_axi_wdata(auto_rs_w_to_auto_ds_WDATA),
        .m_axi_wlast(auto_rs_w_to_auto_ds_WLAST),
        .m_axi_wready(auto_rs_w_to_auto_ds_WREADY),
        .m_axi_wstrb(auto_rs_w_to_auto_ds_WSTRB),
        .m_axi_wvalid(auto_rs_w_to_auto_ds_WVALID),
        .s_axi_araddr(m00_couplers_to_auto_rs_w_ARADDR),
        .s_axi_arburst(m00_couplers_to_auto_rs_w_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_rs_w_ARCACHE),
        .s_axi_arid(m00_couplers_to_auto_rs_w_ARID),
        .s_axi_arlen(m00_couplers_to_auto_rs_w_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_rs_w_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_rs_w_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_rs_w_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_rs_w_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_rs_w_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_rs_w_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_rs_w_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_rs_w_AWADDR),
        .s_axi_awburst(m00_couplers_to_auto_rs_w_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_rs_w_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_rs_w_AWID),
        .s_axi_awlen(m00_couplers_to_auto_rs_w_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_rs_w_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_rs_w_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_rs_w_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_rs_w_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_rs_w_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_rs_w_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_rs_w_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_rs_w_BID),
        .s_axi_bready(m00_couplers_to_auto_rs_w_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_rs_w_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_rs_w_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_rs_w_RDATA),
        .s_axi_rid(m00_couplers_to_auto_rs_w_RID),
        .s_axi_rlast(m00_couplers_to_auto_rs_w_RLAST),
        .s_axi_rready(m00_couplers_to_auto_rs_w_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_rs_w_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_rs_w_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_rs_w_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_rs_w_WLAST),
        .s_axi_wready(m00_couplers_to_auto_rs_w_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_rs_w_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_rs_w_WVALID));
  pfm_dynamic_m00_regslice_4 m00_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m00_regslice_to_m00_couplers_ARADDR),
        .m_axi_arburst(m00_regslice_to_m00_couplers_ARBURST),
        .m_axi_arcache(m00_regslice_to_m00_couplers_ARCACHE),
        .m_axi_arlen(m00_regslice_to_m00_couplers_ARLEN),
        .m_axi_arlock(m00_regslice_to_m00_couplers_ARLOCK),
        .m_axi_arprot(m00_regslice_to_m00_couplers_ARPROT),
        .m_axi_arqos(m00_regslice_to_m00_couplers_ARQOS),
        .m_axi_arready(m00_regslice_to_m00_couplers_ARREADY),
        .m_axi_arsize(m00_regslice_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(m00_regslice_to_m00_couplers_ARVALID),
        .m_axi_awaddr(m00_regslice_to_m00_couplers_AWADDR),
        .m_axi_awburst(m00_regslice_to_m00_couplers_AWBURST),
        .m_axi_awcache(m00_regslice_to_m00_couplers_AWCACHE),
        .m_axi_awlen(m00_regslice_to_m00_couplers_AWLEN),
        .m_axi_awlock(m00_regslice_to_m00_couplers_AWLOCK),
        .m_axi_awprot(m00_regslice_to_m00_couplers_AWPROT),
        .m_axi_awqos(m00_regslice_to_m00_couplers_AWQOS),
        .m_axi_awready(m00_regslice_to_m00_couplers_AWREADY),
        .m_axi_awsize(m00_regslice_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(m00_regslice_to_m00_couplers_AWVALID),
        .m_axi_bready(m00_regslice_to_m00_couplers_BREADY),
        .m_axi_bresp(m00_regslice_to_m00_couplers_BRESP),
        .m_axi_bvalid(m00_regslice_to_m00_couplers_BVALID),
        .m_axi_rdata(m00_regslice_to_m00_couplers_RDATA),
        .m_axi_rlast(m00_regslice_to_m00_couplers_RLAST),
        .m_axi_rready(m00_regslice_to_m00_couplers_RREADY),
        .m_axi_rresp(m00_regslice_to_m00_couplers_RRESP),
        .m_axi_rvalid(m00_regslice_to_m00_couplers_RVALID),
        .m_axi_wdata(m00_regslice_to_m00_couplers_WDATA),
        .m_axi_wlast(m00_regslice_to_m00_couplers_WLAST),
        .m_axi_wready(m00_regslice_to_m00_couplers_WREADY),
        .m_axi_wstrb(m00_regslice_to_m00_couplers_WSTRB),
        .m_axi_wvalid(m00_regslice_to_m00_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_m00_regslice_ARADDR),
        .s_axi_arburst(auto_ds_to_m00_regslice_ARBURST),
        .s_axi_arcache(auto_ds_to_m00_regslice_ARCACHE),
        .s_axi_arlen(auto_ds_to_m00_regslice_ARLEN),
        .s_axi_arlock(auto_ds_to_m00_regslice_ARLOCK),
        .s_axi_arprot(auto_ds_to_m00_regslice_ARPROT),
        .s_axi_arqos(auto_ds_to_m00_regslice_ARQOS),
        .s_axi_arready(auto_ds_to_m00_regslice_ARREADY),
        .s_axi_arregion(auto_ds_to_m00_regslice_ARREGION),
        .s_axi_arsize(auto_ds_to_m00_regslice_ARSIZE),
        .s_axi_arvalid(auto_ds_to_m00_regslice_ARVALID),
        .s_axi_awaddr(auto_ds_to_m00_regslice_AWADDR),
        .s_axi_awburst(auto_ds_to_m00_regslice_AWBURST),
        .s_axi_awcache(auto_ds_to_m00_regslice_AWCACHE),
        .s_axi_awlen(auto_ds_to_m00_regslice_AWLEN),
        .s_axi_awlock(auto_ds_to_m00_regslice_AWLOCK),
        .s_axi_awprot(auto_ds_to_m00_regslice_AWPROT),
        .s_axi_awqos(auto_ds_to_m00_regslice_AWQOS),
        .s_axi_awready(auto_ds_to_m00_regslice_AWREADY),
        .s_axi_awregion(auto_ds_to_m00_regslice_AWREGION),
        .s_axi_awsize(auto_ds_to_m00_regslice_AWSIZE),
        .s_axi_awvalid(auto_ds_to_m00_regslice_AWVALID),
        .s_axi_bready(auto_ds_to_m00_regslice_BREADY),
        .s_axi_bresp(auto_ds_to_m00_regslice_BRESP),
        .s_axi_bvalid(auto_ds_to_m00_regslice_BVALID),
        .s_axi_rdata(auto_ds_to_m00_regslice_RDATA),
        .s_axi_rlast(auto_ds_to_m00_regslice_RLAST),
        .s_axi_rready(auto_ds_to_m00_regslice_RREADY),
        .s_axi_rresp(auto_ds_to_m00_regslice_RRESP),
        .s_axi_rvalid(auto_ds_to_m00_regslice_RVALID),
        .s_axi_wdata(auto_ds_to_m00_regslice_WDATA),
        .s_axi_wlast(auto_ds_to_m00_regslice_WLAST),
        .s_axi_wready(auto_ds_to_m00_regslice_WREADY),
        .s_axi_wstrb(auto_ds_to_m00_regslice_WSTRB),
        .s_axi_wvalid(auto_ds_to_m00_regslice_WVALID));
endmodule

module m00_couplers_imp_R2G0XH
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_ds_to_m00_regslice_ARADDR;
  wire [1:0]auto_ds_to_m00_regslice_ARBURST;
  wire [3:0]auto_ds_to_m00_regslice_ARCACHE;
  wire [7:0]auto_ds_to_m00_regslice_ARLEN;
  wire [0:0]auto_ds_to_m00_regslice_ARLOCK;
  wire [2:0]auto_ds_to_m00_regslice_ARPROT;
  wire [3:0]auto_ds_to_m00_regslice_ARQOS;
  wire auto_ds_to_m00_regslice_ARREADY;
  wire [3:0]auto_ds_to_m00_regslice_ARREGION;
  wire [2:0]auto_ds_to_m00_regslice_ARSIZE;
  wire auto_ds_to_m00_regslice_ARVALID;
  wire [63:0]auto_ds_to_m00_regslice_AWADDR;
  wire [1:0]auto_ds_to_m00_regslice_AWBURST;
  wire [3:0]auto_ds_to_m00_regslice_AWCACHE;
  wire [7:0]auto_ds_to_m00_regslice_AWLEN;
  wire [0:0]auto_ds_to_m00_regslice_AWLOCK;
  wire [2:0]auto_ds_to_m00_regslice_AWPROT;
  wire [3:0]auto_ds_to_m00_regslice_AWQOS;
  wire auto_ds_to_m00_regslice_AWREADY;
  wire [3:0]auto_ds_to_m00_regslice_AWREGION;
  wire [2:0]auto_ds_to_m00_regslice_AWSIZE;
  wire auto_ds_to_m00_regslice_AWVALID;
  wire auto_ds_to_m00_regslice_BREADY;
  wire [1:0]auto_ds_to_m00_regslice_BRESP;
  wire auto_ds_to_m00_regslice_BVALID;
  wire [127:0]auto_ds_to_m00_regslice_RDATA;
  wire auto_ds_to_m00_regslice_RLAST;
  wire auto_ds_to_m00_regslice_RREADY;
  wire [1:0]auto_ds_to_m00_regslice_RRESP;
  wire auto_ds_to_m00_regslice_RVALID;
  wire [127:0]auto_ds_to_m00_regslice_WDATA;
  wire auto_ds_to_m00_regslice_WLAST;
  wire auto_ds_to_m00_regslice_WREADY;
  wire [15:0]auto_ds_to_m00_regslice_WSTRB;
  wire auto_ds_to_m00_regslice_WVALID;
  wire [63:0]auto_rs_w_to_auto_ds_ARADDR;
  wire [1:0]auto_rs_w_to_auto_ds_ARBURST;
  wire [3:0]auto_rs_w_to_auto_ds_ARCACHE;
  wire [0:0]auto_rs_w_to_auto_ds_ARID;
  wire [7:0]auto_rs_w_to_auto_ds_ARLEN;
  wire [0:0]auto_rs_w_to_auto_ds_ARLOCK;
  wire [2:0]auto_rs_w_to_auto_ds_ARPROT;
  wire [3:0]auto_rs_w_to_auto_ds_ARQOS;
  wire auto_rs_w_to_auto_ds_ARREADY;
  wire [3:0]auto_rs_w_to_auto_ds_ARREGION;
  wire [2:0]auto_rs_w_to_auto_ds_ARSIZE;
  wire auto_rs_w_to_auto_ds_ARVALID;
  wire [63:0]auto_rs_w_to_auto_ds_AWADDR;
  wire [1:0]auto_rs_w_to_auto_ds_AWBURST;
  wire [3:0]auto_rs_w_to_auto_ds_AWCACHE;
  wire [0:0]auto_rs_w_to_auto_ds_AWID;
  wire [7:0]auto_rs_w_to_auto_ds_AWLEN;
  wire [0:0]auto_rs_w_to_auto_ds_AWLOCK;
  wire [2:0]auto_rs_w_to_auto_ds_AWPROT;
  wire [3:0]auto_rs_w_to_auto_ds_AWQOS;
  wire auto_rs_w_to_auto_ds_AWREADY;
  wire [3:0]auto_rs_w_to_auto_ds_AWREGION;
  wire [2:0]auto_rs_w_to_auto_ds_AWSIZE;
  wire auto_rs_w_to_auto_ds_AWVALID;
  wire [0:0]auto_rs_w_to_auto_ds_BID;
  wire auto_rs_w_to_auto_ds_BREADY;
  wire [1:0]auto_rs_w_to_auto_ds_BRESP;
  wire auto_rs_w_to_auto_ds_BVALID;
  wire [511:0]auto_rs_w_to_auto_ds_RDATA;
  wire [0:0]auto_rs_w_to_auto_ds_RID;
  wire auto_rs_w_to_auto_ds_RLAST;
  wire auto_rs_w_to_auto_ds_RREADY;
  wire [1:0]auto_rs_w_to_auto_ds_RRESP;
  wire auto_rs_w_to_auto_ds_RVALID;
  wire [511:0]auto_rs_w_to_auto_ds_WDATA;
  wire auto_rs_w_to_auto_ds_WLAST;
  wire auto_rs_w_to_auto_ds_WREADY;
  wire [63:0]auto_rs_w_to_auto_ds_WSTRB;
  wire auto_rs_w_to_auto_ds_WVALID;
  wire [63:0]m00_couplers_to_auto_rs_w_ARADDR;
  wire [1:0]m00_couplers_to_auto_rs_w_ARBURST;
  wire [3:0]m00_couplers_to_auto_rs_w_ARCACHE;
  wire [0:0]m00_couplers_to_auto_rs_w_ARID;
  wire [7:0]m00_couplers_to_auto_rs_w_ARLEN;
  wire [0:0]m00_couplers_to_auto_rs_w_ARLOCK;
  wire [2:0]m00_couplers_to_auto_rs_w_ARPROT;
  wire [3:0]m00_couplers_to_auto_rs_w_ARQOS;
  wire m00_couplers_to_auto_rs_w_ARREADY;
  wire [3:0]m00_couplers_to_auto_rs_w_ARREGION;
  wire [2:0]m00_couplers_to_auto_rs_w_ARSIZE;
  wire m00_couplers_to_auto_rs_w_ARVALID;
  wire [63:0]m00_couplers_to_auto_rs_w_AWADDR;
  wire [1:0]m00_couplers_to_auto_rs_w_AWBURST;
  wire [3:0]m00_couplers_to_auto_rs_w_AWCACHE;
  wire [0:0]m00_couplers_to_auto_rs_w_AWID;
  wire [7:0]m00_couplers_to_auto_rs_w_AWLEN;
  wire [0:0]m00_couplers_to_auto_rs_w_AWLOCK;
  wire [2:0]m00_couplers_to_auto_rs_w_AWPROT;
  wire [3:0]m00_couplers_to_auto_rs_w_AWQOS;
  wire m00_couplers_to_auto_rs_w_AWREADY;
  wire [3:0]m00_couplers_to_auto_rs_w_AWREGION;
  wire [2:0]m00_couplers_to_auto_rs_w_AWSIZE;
  wire m00_couplers_to_auto_rs_w_AWVALID;
  wire [0:0]m00_couplers_to_auto_rs_w_BID;
  wire m00_couplers_to_auto_rs_w_BREADY;
  wire [1:0]m00_couplers_to_auto_rs_w_BRESP;
  wire m00_couplers_to_auto_rs_w_BVALID;
  wire [511:0]m00_couplers_to_auto_rs_w_RDATA;
  wire [0:0]m00_couplers_to_auto_rs_w_RID;
  wire m00_couplers_to_auto_rs_w_RLAST;
  wire m00_couplers_to_auto_rs_w_RREADY;
  wire [1:0]m00_couplers_to_auto_rs_w_RRESP;
  wire m00_couplers_to_auto_rs_w_RVALID;
  wire [511:0]m00_couplers_to_auto_rs_w_WDATA;
  wire m00_couplers_to_auto_rs_w_WLAST;
  wire m00_couplers_to_auto_rs_w_WREADY;
  wire [63:0]m00_couplers_to_auto_rs_w_WSTRB;
  wire m00_couplers_to_auto_rs_w_WVALID;
  wire [63:0]m00_regslice_to_m00_couplers_ARADDR;
  wire [1:0]m00_regslice_to_m00_couplers_ARBURST;
  wire [3:0]m00_regslice_to_m00_couplers_ARCACHE;
  wire [7:0]m00_regslice_to_m00_couplers_ARLEN;
  wire [0:0]m00_regslice_to_m00_couplers_ARLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_ARPROT;
  wire [3:0]m00_regslice_to_m00_couplers_ARQOS;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire [2:0]m00_regslice_to_m00_couplers_ARSIZE;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [63:0]m00_regslice_to_m00_couplers_AWADDR;
  wire [1:0]m00_regslice_to_m00_couplers_AWBURST;
  wire [3:0]m00_regslice_to_m00_couplers_AWCACHE;
  wire [7:0]m00_regslice_to_m00_couplers_AWLEN;
  wire [0:0]m00_regslice_to_m00_couplers_AWLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_AWPROT;
  wire [3:0]m00_regslice_to_m00_couplers_AWQOS;
  wire m00_regslice_to_m00_couplers_AWREADY;
  wire [2:0]m00_regslice_to_m00_couplers_AWSIZE;
  wire m00_regslice_to_m00_couplers_AWVALID;
  wire m00_regslice_to_m00_couplers_BREADY;
  wire [1:0]m00_regslice_to_m00_couplers_BRESP;
  wire m00_regslice_to_m00_couplers_BVALID;
  wire [127:0]m00_regslice_to_m00_couplers_RDATA;
  wire m00_regslice_to_m00_couplers_RLAST;
  wire m00_regslice_to_m00_couplers_RREADY;
  wire [1:0]m00_regslice_to_m00_couplers_RRESP;
  wire m00_regslice_to_m00_couplers_RVALID;
  wire [127:0]m00_regslice_to_m00_couplers_WDATA;
  wire m00_regslice_to_m00_couplers_WLAST;
  wire m00_regslice_to_m00_couplers_WREADY;
  wire [15:0]m00_regslice_to_m00_couplers_WSTRB;
  wire m00_regslice_to_m00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = m00_regslice_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_regslice_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_regslice_to_m00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = m00_regslice_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = m00_regslice_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_regslice_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_regslice_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m00_regslice_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = m00_regslice_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_regslice_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_regslice_to_m00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = m00_regslice_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = m00_regslice_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_regslice_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_regslice_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m00_regslice_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[127:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wlast = m00_regslice_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = m00_regslice_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_rs_w_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_rs_w_AWREADY;
  assign S_AXI_bid[0] = m00_couplers_to_auto_rs_w_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_rs_w_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_rs_w_BVALID;
  assign S_AXI_rdata[511:0] = m00_couplers_to_auto_rs_w_RDATA;
  assign S_AXI_rid[0] = m00_couplers_to_auto_rs_w_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_rs_w_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_rs_w_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_rs_w_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_rs_w_WREADY;
  assign m00_couplers_to_auto_rs_w_ARADDR = S_AXI_araddr[63:0];
  assign m00_couplers_to_auto_rs_w_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_rs_w_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_rs_w_ARID = S_AXI_arid[0];
  assign m00_couplers_to_auto_rs_w_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_rs_w_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_rs_w_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_rs_w_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_rs_w_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_rs_w_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_rs_w_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_rs_w_AWADDR = S_AXI_awaddr[63:0];
  assign m00_couplers_to_auto_rs_w_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_rs_w_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_rs_w_AWID = S_AXI_awid[0];
  assign m00_couplers_to_auto_rs_w_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_rs_w_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_rs_w_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_rs_w_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_rs_w_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_rs_w_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_rs_w_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_rs_w_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_rs_w_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_rs_w_WDATA = S_AXI_wdata[511:0];
  assign m00_couplers_to_auto_rs_w_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_rs_w_WSTRB = S_AXI_wstrb[63:0];
  assign m00_couplers_to_auto_rs_w_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[127:0];
  assign m00_regslice_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
  pfm_dynamic_auto_ds_0 auto_ds
       (.m_axi_araddr(auto_ds_to_m00_regslice_ARADDR),
        .m_axi_arburst(auto_ds_to_m00_regslice_ARBURST),
        .m_axi_arcache(auto_ds_to_m00_regslice_ARCACHE),
        .m_axi_arlen(auto_ds_to_m00_regslice_ARLEN),
        .m_axi_arlock(auto_ds_to_m00_regslice_ARLOCK),
        .m_axi_arprot(auto_ds_to_m00_regslice_ARPROT),
        .m_axi_arqos(auto_ds_to_m00_regslice_ARQOS),
        .m_axi_arready(auto_ds_to_m00_regslice_ARREADY),
        .m_axi_arregion(auto_ds_to_m00_regslice_ARREGION),
        .m_axi_arsize(auto_ds_to_m00_regslice_ARSIZE),
        .m_axi_arvalid(auto_ds_to_m00_regslice_ARVALID),
        .m_axi_awaddr(auto_ds_to_m00_regslice_AWADDR),
        .m_axi_awburst(auto_ds_to_m00_regslice_AWBURST),
        .m_axi_awcache(auto_ds_to_m00_regslice_AWCACHE),
        .m_axi_awlen(auto_ds_to_m00_regslice_AWLEN),
        .m_axi_awlock(auto_ds_to_m00_regslice_AWLOCK),
        .m_axi_awprot(auto_ds_to_m00_regslice_AWPROT),
        .m_axi_awqos(auto_ds_to_m00_regslice_AWQOS),
        .m_axi_awready(auto_ds_to_m00_regslice_AWREADY),
        .m_axi_awregion(auto_ds_to_m00_regslice_AWREGION),
        .m_axi_awsize(auto_ds_to_m00_regslice_AWSIZE),
        .m_axi_awvalid(auto_ds_to_m00_regslice_AWVALID),
        .m_axi_bready(auto_ds_to_m00_regslice_BREADY),
        .m_axi_bresp(auto_ds_to_m00_regslice_BRESP),
        .m_axi_bvalid(auto_ds_to_m00_regslice_BVALID),
        .m_axi_rdata(auto_ds_to_m00_regslice_RDATA),
        .m_axi_rlast(auto_ds_to_m00_regslice_RLAST),
        .m_axi_rready(auto_ds_to_m00_regslice_RREADY),
        .m_axi_rresp(auto_ds_to_m00_regslice_RRESP),
        .m_axi_rvalid(auto_ds_to_m00_regslice_RVALID),
        .m_axi_wdata(auto_ds_to_m00_regslice_WDATA),
        .m_axi_wlast(auto_ds_to_m00_regslice_WLAST),
        .m_axi_wready(auto_ds_to_m00_regslice_WREADY),
        .m_axi_wstrb(auto_ds_to_m00_regslice_WSTRB),
        .m_axi_wvalid(auto_ds_to_m00_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(auto_rs_w_to_auto_ds_ARADDR),
        .s_axi_arburst(auto_rs_w_to_auto_ds_ARBURST),
        .s_axi_arcache(auto_rs_w_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(auto_rs_w_to_auto_ds_ARID),
        .s_axi_arlen(auto_rs_w_to_auto_ds_ARLEN),
        .s_axi_arlock(auto_rs_w_to_auto_ds_ARLOCK),
        .s_axi_arprot(auto_rs_w_to_auto_ds_ARPROT),
        .s_axi_arqos(auto_rs_w_to_auto_ds_ARQOS),
        .s_axi_arready(auto_rs_w_to_auto_ds_ARREADY),
        .s_axi_arregion(auto_rs_w_to_auto_ds_ARREGION),
        .s_axi_arsize(auto_rs_w_to_auto_ds_ARSIZE),
        .s_axi_arvalid(auto_rs_w_to_auto_ds_ARVALID),
        .s_axi_awaddr(auto_rs_w_to_auto_ds_AWADDR),
        .s_axi_awburst(auto_rs_w_to_auto_ds_AWBURST),
        .s_axi_awcache(auto_rs_w_to_auto_ds_AWCACHE),
        .s_axi_awid(auto_rs_w_to_auto_ds_AWID),
        .s_axi_awlen(auto_rs_w_to_auto_ds_AWLEN),
        .s_axi_awlock(auto_rs_w_to_auto_ds_AWLOCK),
        .s_axi_awprot(auto_rs_w_to_auto_ds_AWPROT),
        .s_axi_awqos(auto_rs_w_to_auto_ds_AWQOS),
        .s_axi_awready(auto_rs_w_to_auto_ds_AWREADY),
        .s_axi_awregion(auto_rs_w_to_auto_ds_AWREGION),
        .s_axi_awsize(auto_rs_w_to_auto_ds_AWSIZE),
        .s_axi_awvalid(auto_rs_w_to_auto_ds_AWVALID),
        .s_axi_bid(auto_rs_w_to_auto_ds_BID),
        .s_axi_bready(auto_rs_w_to_auto_ds_BREADY),
        .s_axi_bresp(auto_rs_w_to_auto_ds_BRESP),
        .s_axi_bvalid(auto_rs_w_to_auto_ds_BVALID),
        .s_axi_rdata(auto_rs_w_to_auto_ds_RDATA),
        .s_axi_rid(auto_rs_w_to_auto_ds_RID),
        .s_axi_rlast(auto_rs_w_to_auto_ds_RLAST),
        .s_axi_rready(auto_rs_w_to_auto_ds_RREADY),
        .s_axi_rresp(auto_rs_w_to_auto_ds_RRESP),
        .s_axi_rvalid(auto_rs_w_to_auto_ds_RVALID),
        .s_axi_wdata(auto_rs_w_to_auto_ds_WDATA),
        .s_axi_wlast(auto_rs_w_to_auto_ds_WLAST),
        .s_axi_wready(auto_rs_w_to_auto_ds_WREADY),
        .s_axi_wstrb(auto_rs_w_to_auto_ds_WSTRB),
        .s_axi_wvalid(auto_rs_w_to_auto_ds_WVALID));
  pfm_dynamic_auto_rs_w_0 auto_rs_w
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_rs_w_to_auto_ds_ARADDR),
        .m_axi_arburst(auto_rs_w_to_auto_ds_ARBURST),
        .m_axi_arcache(auto_rs_w_to_auto_ds_ARCACHE),
        .m_axi_arid(auto_rs_w_to_auto_ds_ARID),
        .m_axi_arlen(auto_rs_w_to_auto_ds_ARLEN),
        .m_axi_arlock(auto_rs_w_to_auto_ds_ARLOCK),
        .m_axi_arprot(auto_rs_w_to_auto_ds_ARPROT),
        .m_axi_arqos(auto_rs_w_to_auto_ds_ARQOS),
        .m_axi_arready(auto_rs_w_to_auto_ds_ARREADY),
        .m_axi_arregion(auto_rs_w_to_auto_ds_ARREGION),
        .m_axi_arsize(auto_rs_w_to_auto_ds_ARSIZE),
        .m_axi_arvalid(auto_rs_w_to_auto_ds_ARVALID),
        .m_axi_awaddr(auto_rs_w_to_auto_ds_AWADDR),
        .m_axi_awburst(auto_rs_w_to_auto_ds_AWBURST),
        .m_axi_awcache(auto_rs_w_to_auto_ds_AWCACHE),
        .m_axi_awid(auto_rs_w_to_auto_ds_AWID),
        .m_axi_awlen(auto_rs_w_to_auto_ds_AWLEN),
        .m_axi_awlock(auto_rs_w_to_auto_ds_AWLOCK),
        .m_axi_awprot(auto_rs_w_to_auto_ds_AWPROT),
        .m_axi_awqos(auto_rs_w_to_auto_ds_AWQOS),
        .m_axi_awready(auto_rs_w_to_auto_ds_AWREADY),
        .m_axi_awregion(auto_rs_w_to_auto_ds_AWREGION),
        .m_axi_awsize(auto_rs_w_to_auto_ds_AWSIZE),
        .m_axi_awvalid(auto_rs_w_to_auto_ds_AWVALID),
        .m_axi_bid(auto_rs_w_to_auto_ds_BID),
        .m_axi_bready(auto_rs_w_to_auto_ds_BREADY),
        .m_axi_bresp(auto_rs_w_to_auto_ds_BRESP),
        .m_axi_bvalid(auto_rs_w_to_auto_ds_BVALID),
        .m_axi_rdata(auto_rs_w_to_auto_ds_RDATA),
        .m_axi_rid(auto_rs_w_to_auto_ds_RID),
        .m_axi_rlast(auto_rs_w_to_auto_ds_RLAST),
        .m_axi_rready(auto_rs_w_to_auto_ds_RREADY),
        .m_axi_rresp(auto_rs_w_to_auto_ds_RRESP),
        .m_axi_rvalid(auto_rs_w_to_auto_ds_RVALID),
        .m_axi_wdata(auto_rs_w_to_auto_ds_WDATA),
        .m_axi_wlast(auto_rs_w_to_auto_ds_WLAST),
        .m_axi_wready(auto_rs_w_to_auto_ds_WREADY),
        .m_axi_wstrb(auto_rs_w_to_auto_ds_WSTRB),
        .m_axi_wvalid(auto_rs_w_to_auto_ds_WVALID),
        .s_axi_araddr(m00_couplers_to_auto_rs_w_ARADDR),
        .s_axi_arburst(m00_couplers_to_auto_rs_w_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_rs_w_ARCACHE),
        .s_axi_arid(m00_couplers_to_auto_rs_w_ARID),
        .s_axi_arlen(m00_couplers_to_auto_rs_w_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_rs_w_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_rs_w_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_rs_w_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_rs_w_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_rs_w_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_rs_w_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_rs_w_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_rs_w_AWADDR),
        .s_axi_awburst(m00_couplers_to_auto_rs_w_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_rs_w_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_rs_w_AWID),
        .s_axi_awlen(m00_couplers_to_auto_rs_w_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_rs_w_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_rs_w_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_rs_w_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_rs_w_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_rs_w_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_rs_w_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_rs_w_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_rs_w_BID),
        .s_axi_bready(m00_couplers_to_auto_rs_w_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_rs_w_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_rs_w_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_rs_w_RDATA),
        .s_axi_rid(m00_couplers_to_auto_rs_w_RID),
        .s_axi_rlast(m00_couplers_to_auto_rs_w_RLAST),
        .s_axi_rready(m00_couplers_to_auto_rs_w_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_rs_w_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_rs_w_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_rs_w_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_rs_w_WLAST),
        .s_axi_wready(m00_couplers_to_auto_rs_w_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_rs_w_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_rs_w_WVALID));
  pfm_dynamic_m00_regslice_3 m00_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m00_regslice_to_m00_couplers_ARADDR),
        .m_axi_arburst(m00_regslice_to_m00_couplers_ARBURST),
        .m_axi_arcache(m00_regslice_to_m00_couplers_ARCACHE),
        .m_axi_arlen(m00_regslice_to_m00_couplers_ARLEN),
        .m_axi_arlock(m00_regslice_to_m00_couplers_ARLOCK),
        .m_axi_arprot(m00_regslice_to_m00_couplers_ARPROT),
        .m_axi_arqos(m00_regslice_to_m00_couplers_ARQOS),
        .m_axi_arready(m00_regslice_to_m00_couplers_ARREADY),
        .m_axi_arsize(m00_regslice_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(m00_regslice_to_m00_couplers_ARVALID),
        .m_axi_awaddr(m00_regslice_to_m00_couplers_AWADDR),
        .m_axi_awburst(m00_regslice_to_m00_couplers_AWBURST),
        .m_axi_awcache(m00_regslice_to_m00_couplers_AWCACHE),
        .m_axi_awlen(m00_regslice_to_m00_couplers_AWLEN),
        .m_axi_awlock(m00_regslice_to_m00_couplers_AWLOCK),
        .m_axi_awprot(m00_regslice_to_m00_couplers_AWPROT),
        .m_axi_awqos(m00_regslice_to_m00_couplers_AWQOS),
        .m_axi_awready(m00_regslice_to_m00_couplers_AWREADY),
        .m_axi_awsize(m00_regslice_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(m00_regslice_to_m00_couplers_AWVALID),
        .m_axi_bready(m00_regslice_to_m00_couplers_BREADY),
        .m_axi_bresp(m00_regslice_to_m00_couplers_BRESP),
        .m_axi_bvalid(m00_regslice_to_m00_couplers_BVALID),
        .m_axi_rdata(m00_regslice_to_m00_couplers_RDATA),
        .m_axi_rlast(m00_regslice_to_m00_couplers_RLAST),
        .m_axi_rready(m00_regslice_to_m00_couplers_RREADY),
        .m_axi_rresp(m00_regslice_to_m00_couplers_RRESP),
        .m_axi_rvalid(m00_regslice_to_m00_couplers_RVALID),
        .m_axi_wdata(m00_regslice_to_m00_couplers_WDATA),
        .m_axi_wlast(m00_regslice_to_m00_couplers_WLAST),
        .m_axi_wready(m00_regslice_to_m00_couplers_WREADY),
        .m_axi_wstrb(m00_regslice_to_m00_couplers_WSTRB),
        .m_axi_wvalid(m00_regslice_to_m00_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_m00_regslice_ARADDR),
        .s_axi_arburst(auto_ds_to_m00_regslice_ARBURST),
        .s_axi_arcache(auto_ds_to_m00_regslice_ARCACHE),
        .s_axi_arlen(auto_ds_to_m00_regslice_ARLEN),
        .s_axi_arlock(auto_ds_to_m00_regslice_ARLOCK),
        .s_axi_arprot(auto_ds_to_m00_regslice_ARPROT),
        .s_axi_arqos(auto_ds_to_m00_regslice_ARQOS),
        .s_axi_arready(auto_ds_to_m00_regslice_ARREADY),
        .s_axi_arregion(auto_ds_to_m00_regslice_ARREGION),
        .s_axi_arsize(auto_ds_to_m00_regslice_ARSIZE),
        .s_axi_arvalid(auto_ds_to_m00_regslice_ARVALID),
        .s_axi_awaddr(auto_ds_to_m00_regslice_AWADDR),
        .s_axi_awburst(auto_ds_to_m00_regslice_AWBURST),
        .s_axi_awcache(auto_ds_to_m00_regslice_AWCACHE),
        .s_axi_awlen(auto_ds_to_m00_regslice_AWLEN),
        .s_axi_awlock(auto_ds_to_m00_regslice_AWLOCK),
        .s_axi_awprot(auto_ds_to_m00_regslice_AWPROT),
        .s_axi_awqos(auto_ds_to_m00_regslice_AWQOS),
        .s_axi_awready(auto_ds_to_m00_regslice_AWREADY),
        .s_axi_awregion(auto_ds_to_m00_regslice_AWREGION),
        .s_axi_awsize(auto_ds_to_m00_regslice_AWSIZE),
        .s_axi_awvalid(auto_ds_to_m00_regslice_AWVALID),
        .s_axi_bready(auto_ds_to_m00_regslice_BREADY),
        .s_axi_bresp(auto_ds_to_m00_regslice_BRESP),
        .s_axi_bvalid(auto_ds_to_m00_regslice_BVALID),
        .s_axi_rdata(auto_ds_to_m00_regslice_RDATA),
        .s_axi_rlast(auto_ds_to_m00_regslice_RLAST),
        .s_axi_rready(auto_ds_to_m00_regslice_RREADY),
        .s_axi_rresp(auto_ds_to_m00_regslice_RRESP),
        .s_axi_rvalid(auto_ds_to_m00_regslice_RVALID),
        .s_axi_wdata(auto_ds_to_m00_regslice_WDATA),
        .s_axi_wlast(auto_ds_to_m00_regslice_WLAST),
        .s_axi_wready(auto_ds_to_m00_regslice_WREADY),
        .s_axi_wstrb(auto_ds_to_m00_regslice_WSTRB),
        .s_axi_wvalid(auto_ds_to_m00_regslice_WVALID));
endmodule

module m00_couplers_imp_XZDQE6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]m00_couplers_to_m00_regslice_ARADDR;
  wire [2:0]m00_couplers_to_m00_regslice_ARPROT;
  wire m00_couplers_to_m00_regslice_ARREADY;
  wire m00_couplers_to_m00_regslice_ARVALID;
  wire [31:0]m00_couplers_to_m00_regslice_AWADDR;
  wire [2:0]m00_couplers_to_m00_regslice_AWPROT;
  wire m00_couplers_to_m00_regslice_AWREADY;
  wire m00_couplers_to_m00_regslice_AWVALID;
  wire m00_couplers_to_m00_regslice_BREADY;
  wire [1:0]m00_couplers_to_m00_regslice_BRESP;
  wire m00_couplers_to_m00_regslice_BVALID;
  wire [31:0]m00_couplers_to_m00_regslice_RDATA;
  wire m00_couplers_to_m00_regslice_RREADY;
  wire [1:0]m00_couplers_to_m00_regslice_RRESP;
  wire m00_couplers_to_m00_regslice_RVALID;
  wire [31:0]m00_couplers_to_m00_regslice_WDATA;
  wire m00_couplers_to_m00_regslice_WREADY;
  wire [3:0]m00_couplers_to_m00_regslice_WSTRB;
  wire m00_couplers_to_m00_regslice_WVALID;
  wire [8:0]m00_regslice_to_m00_couplers_ARADDR;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [8:0]m00_regslice_to_m00_couplers_AWADDR;
  wire m00_regslice_to_m00_couplers_AWREADY;
  wire m00_regslice_to_m00_couplers_AWVALID;
  wire m00_regslice_to_m00_couplers_BREADY;
  wire [1:0]m00_regslice_to_m00_couplers_BRESP;
  wire m00_regslice_to_m00_couplers_BVALID;
  wire [31:0]m00_regslice_to_m00_couplers_RDATA;
  wire m00_regslice_to_m00_couplers_RREADY;
  wire [1:0]m00_regslice_to_m00_couplers_RRESP;
  wire m00_regslice_to_m00_couplers_RVALID;
  wire [31:0]m00_regslice_to_m00_couplers_WDATA;
  wire m00_regslice_to_m00_couplers_WREADY;
  wire [3:0]m00_regslice_to_m00_couplers_WSTRB;
  wire m00_regslice_to_m00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = m00_regslice_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = m00_regslice_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_regslice_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_regslice_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_regslice_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_regslice_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_regslice_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_regslice_WREADY;
  assign m00_couplers_to_m00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_regslice_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_regslice_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_regslice_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_regslice_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_regslice_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_regslice_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
  pfm_dynamic_m00_regslice_5 m00_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m00_regslice_to_m00_couplers_ARADDR),
        .m_axi_arready(m00_regslice_to_m00_couplers_ARREADY),
        .m_axi_arvalid(m00_regslice_to_m00_couplers_ARVALID),
        .m_axi_awaddr(m00_regslice_to_m00_couplers_AWADDR),
        .m_axi_awready(m00_regslice_to_m00_couplers_AWREADY),
        .m_axi_awvalid(m00_regslice_to_m00_couplers_AWVALID),
        .m_axi_bready(m00_regslice_to_m00_couplers_BREADY),
        .m_axi_bresp(m00_regslice_to_m00_couplers_BRESP),
        .m_axi_bvalid(m00_regslice_to_m00_couplers_BVALID),
        .m_axi_rdata(m00_regslice_to_m00_couplers_RDATA),
        .m_axi_rready(m00_regslice_to_m00_couplers_RREADY),
        .m_axi_rresp(m00_regslice_to_m00_couplers_RRESP),
        .m_axi_rvalid(m00_regslice_to_m00_couplers_RVALID),
        .m_axi_wdata(m00_regslice_to_m00_couplers_WDATA),
        .m_axi_wready(m00_regslice_to_m00_couplers_WREADY),
        .m_axi_wstrb(m00_regslice_to_m00_couplers_WSTRB),
        .m_axi_wvalid(m00_regslice_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_m00_regslice_ARADDR[8:0]),
        .s_axi_arprot(m00_couplers_to_m00_regslice_ARPROT),
        .s_axi_arready(m00_couplers_to_m00_regslice_ARREADY),
        .s_axi_arvalid(m00_couplers_to_m00_regslice_ARVALID),
        .s_axi_awaddr(m00_couplers_to_m00_regslice_AWADDR[8:0]),
        .s_axi_awprot(m00_couplers_to_m00_regslice_AWPROT),
        .s_axi_awready(m00_couplers_to_m00_regslice_AWREADY),
        .s_axi_awvalid(m00_couplers_to_m00_regslice_AWVALID),
        .s_axi_bready(m00_couplers_to_m00_regslice_BREADY),
        .s_axi_bresp(m00_couplers_to_m00_regslice_BRESP),
        .s_axi_bvalid(m00_couplers_to_m00_regslice_BVALID),
        .s_axi_rdata(m00_couplers_to_m00_regslice_RDATA),
        .s_axi_rready(m00_couplers_to_m00_regslice_RREADY),
        .s_axi_rresp(m00_couplers_to_m00_regslice_RRESP),
        .s_axi_rvalid(m00_couplers_to_m00_regslice_RVALID),
        .s_axi_wdata(m00_couplers_to_m00_regslice_WDATA),
        .s_axi_wready(m00_couplers_to_m00_regslice_WREADY),
        .s_axi_wstrb(m00_couplers_to_m00_regslice_WSTRB),
        .s_axi_wvalid(m00_couplers_to_m00_regslice_WVALID));
endmodule

module m01_couplers_imp_1RPSKZK
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [5:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [5:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [5:0]auto_cc_to_m01_regslice_ARADDR;
  wire [2:0]auto_cc_to_m01_regslice_ARPROT;
  wire auto_cc_to_m01_regslice_ARREADY;
  wire auto_cc_to_m01_regslice_ARVALID;
  wire [5:0]auto_cc_to_m01_regslice_AWADDR;
  wire [2:0]auto_cc_to_m01_regslice_AWPROT;
  wire auto_cc_to_m01_regslice_AWREADY;
  wire auto_cc_to_m01_regslice_AWVALID;
  wire auto_cc_to_m01_regslice_BREADY;
  wire [1:0]auto_cc_to_m01_regslice_BRESP;
  wire auto_cc_to_m01_regslice_BVALID;
  wire [31:0]auto_cc_to_m01_regslice_RDATA;
  wire auto_cc_to_m01_regslice_RREADY;
  wire [1:0]auto_cc_to_m01_regslice_RRESP;
  wire auto_cc_to_m01_regslice_RVALID;
  wire [31:0]auto_cc_to_m01_regslice_WDATA;
  wire auto_cc_to_m01_regslice_WREADY;
  wire [3:0]auto_cc_to_m01_regslice_WSTRB;
  wire auto_cc_to_m01_regslice_WVALID;
  wire [31:0]m01_couplers_to_auto_cc_ARADDR;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [31:0]m01_couplers_to_auto_cc_AWADDR;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [31:0]m01_couplers_to_auto_cc_RDATA;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [31:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [3:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;
  wire [5:0]m01_regslice_to_m01_couplers_ARADDR;
  wire m01_regslice_to_m01_couplers_ARREADY;
  wire m01_regslice_to_m01_couplers_ARVALID;
  wire [5:0]m01_regslice_to_m01_couplers_AWADDR;
  wire m01_regslice_to_m01_couplers_AWREADY;
  wire m01_regslice_to_m01_couplers_AWVALID;
  wire m01_regslice_to_m01_couplers_BREADY;
  wire [1:0]m01_regslice_to_m01_couplers_BRESP;
  wire m01_regslice_to_m01_couplers_BVALID;
  wire [31:0]m01_regslice_to_m01_couplers_RDATA;
  wire m01_regslice_to_m01_couplers_RREADY;
  wire [1:0]m01_regslice_to_m01_couplers_RRESP;
  wire m01_regslice_to_m01_couplers_RVALID;
  wire [31:0]m01_regslice_to_m01_couplers_WDATA;
  wire m01_regslice_to_m01_couplers_WREADY;
  wire [3:0]m01_regslice_to_m01_couplers_WSTRB;
  wire m01_regslice_to_m01_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[5:0] = m01_regslice_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_regslice_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[5:0] = m01_regslice_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_regslice_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_regslice_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_regslice_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_regslice_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_regslice_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_regslice_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign m01_regslice_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_regslice_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_regslice_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_regslice_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_regslice_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_regslice_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_regslice_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_regslice_to_m01_couplers_WREADY = M_AXI_wready;
  pfm_dynamic_auto_cc_3 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m01_regslice_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m01_regslice_ARPROT),
        .m_axi_arready(auto_cc_to_m01_regslice_ARREADY),
        .m_axi_arvalid(auto_cc_to_m01_regslice_ARVALID),
        .m_axi_awaddr(auto_cc_to_m01_regslice_AWADDR),
        .m_axi_awprot(auto_cc_to_m01_regslice_AWPROT),
        .m_axi_awready(auto_cc_to_m01_regslice_AWREADY),
        .m_axi_awvalid(auto_cc_to_m01_regslice_AWVALID),
        .m_axi_bready(auto_cc_to_m01_regslice_BREADY),
        .m_axi_bresp(auto_cc_to_m01_regslice_BRESP),
        .m_axi_bvalid(auto_cc_to_m01_regslice_BVALID),
        .m_axi_rdata(auto_cc_to_m01_regslice_RDATA),
        .m_axi_rready(auto_cc_to_m01_regslice_RREADY),
        .m_axi_rresp(auto_cc_to_m01_regslice_RRESP),
        .m_axi_rvalid(auto_cc_to_m01_regslice_RVALID),
        .m_axi_wdata(auto_cc_to_m01_regslice_WDATA),
        .m_axi_wready(auto_cc_to_m01_regslice_WREADY),
        .m_axi_wstrb(auto_cc_to_m01_regslice_WSTRB),
        .m_axi_wvalid(auto_cc_to_m01_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR[5:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR[5:0]),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
  pfm_dynamic_m01_regslice_0 m01_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m01_regslice_to_m01_couplers_ARADDR),
        .m_axi_arready(m01_regslice_to_m01_couplers_ARREADY),
        .m_axi_arvalid(m01_regslice_to_m01_couplers_ARVALID),
        .m_axi_awaddr(m01_regslice_to_m01_couplers_AWADDR),
        .m_axi_awready(m01_regslice_to_m01_couplers_AWREADY),
        .m_axi_awvalid(m01_regslice_to_m01_couplers_AWVALID),
        .m_axi_bready(m01_regslice_to_m01_couplers_BREADY),
        .m_axi_bresp(m01_regslice_to_m01_couplers_BRESP),
        .m_axi_bvalid(m01_regslice_to_m01_couplers_BVALID),
        .m_axi_rdata(m01_regslice_to_m01_couplers_RDATA),
        .m_axi_rready(m01_regslice_to_m01_couplers_RREADY),
        .m_axi_rresp(m01_regslice_to_m01_couplers_RRESP),
        .m_axi_rvalid(m01_regslice_to_m01_couplers_RVALID),
        .m_axi_wdata(m01_regslice_to_m01_couplers_WDATA),
        .m_axi_wready(m01_regslice_to_m01_couplers_WREADY),
        .m_axi_wstrb(m01_regslice_to_m01_couplers_WSTRB),
        .m_axi_wvalid(m01_regslice_to_m01_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_m01_regslice_ARADDR),
        .s_axi_arprot(auto_cc_to_m01_regslice_ARPROT),
        .s_axi_arready(auto_cc_to_m01_regslice_ARREADY),
        .s_axi_arvalid(auto_cc_to_m01_regslice_ARVALID),
        .s_axi_awaddr(auto_cc_to_m01_regslice_AWADDR),
        .s_axi_awprot(auto_cc_to_m01_regslice_AWPROT),
        .s_axi_awready(auto_cc_to_m01_regslice_AWREADY),
        .s_axi_awvalid(auto_cc_to_m01_regslice_AWVALID),
        .s_axi_bready(auto_cc_to_m01_regslice_BREADY),
        .s_axi_bresp(auto_cc_to_m01_regslice_BRESP),
        .s_axi_bvalid(auto_cc_to_m01_regslice_BVALID),
        .s_axi_rdata(auto_cc_to_m01_regslice_RDATA),
        .s_axi_rready(auto_cc_to_m01_regslice_RREADY),
        .s_axi_rresp(auto_cc_to_m01_regslice_RRESP),
        .s_axi_rvalid(auto_cc_to_m01_regslice_RVALID),
        .s_axi_wdata(auto_cc_to_m01_regslice_WDATA),
        .s_axi_wready(auto_cc_to_m01_regslice_WREADY),
        .s_axi_wstrb(auto_cc_to_m01_regslice_WSTRB),
        .s_axi_wvalid(auto_cc_to_m01_regslice_WVALID));
endmodule

(* CORE_GENERATION_INFO = "pfm_dynamic,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=pfm_dynamic,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=75,numReposBlks=54,numNonXlnxBlks=0,numHierBlks=21,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=Vitis,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "pfm_dynamic.hwdef" *) 
module pfm_dynamic
   (bscanid_en,
    capture,
    clkwiz_kernel2_clk_out1,
    clkwiz_kernel2_locked,
    clkwiz_kernel3_clk_out,
    clkwiz_kernel4_clk_out,
    clkwiz_kernel5_clk_out,
    clkwiz_kernel6_clk_out,
    clkwiz_kernel_clk_out1,
    clkwiz_kernel_locked,
    clkwiz_sysclks_clk_out2,
    clkwiz_sysclks_locked,
    drck,
    interconnect_aximm_ddrmem2_M00_AXI_araddr,
    interconnect_aximm_ddrmem2_M00_AXI_arburst,
    interconnect_aximm_ddrmem2_M00_AXI_arcache,
    interconnect_aximm_ddrmem2_M00_AXI_arid,
    interconnect_aximm_ddrmem2_M00_AXI_arlen,
    interconnect_aximm_ddrmem2_M00_AXI_arlock,
    interconnect_aximm_ddrmem2_M00_AXI_arprot,
    interconnect_aximm_ddrmem2_M00_AXI_arqos,
    interconnect_aximm_ddrmem2_M00_AXI_arready,
    interconnect_aximm_ddrmem2_M00_AXI_arsize,
    interconnect_aximm_ddrmem2_M00_AXI_arvalid,
    interconnect_aximm_ddrmem2_M00_AXI_awaddr,
    interconnect_aximm_ddrmem2_M00_AXI_awburst,
    interconnect_aximm_ddrmem2_M00_AXI_awcache,
    interconnect_aximm_ddrmem2_M00_AXI_awid,
    interconnect_aximm_ddrmem2_M00_AXI_awlen,
    interconnect_aximm_ddrmem2_M00_AXI_awlock,
    interconnect_aximm_ddrmem2_M00_AXI_awprot,
    interconnect_aximm_ddrmem2_M00_AXI_awqos,
    interconnect_aximm_ddrmem2_M00_AXI_awready,
    interconnect_aximm_ddrmem2_M00_AXI_awsize,
    interconnect_aximm_ddrmem2_M00_AXI_awvalid,
    interconnect_aximm_ddrmem2_M00_AXI_bid,
    interconnect_aximm_ddrmem2_M00_AXI_bready,
    interconnect_aximm_ddrmem2_M00_AXI_bresp,
    interconnect_aximm_ddrmem2_M00_AXI_bvalid,
    interconnect_aximm_ddrmem2_M00_AXI_rdata,
    interconnect_aximm_ddrmem2_M00_AXI_rid,
    interconnect_aximm_ddrmem2_M00_AXI_rlast,
    interconnect_aximm_ddrmem2_M00_AXI_rready,
    interconnect_aximm_ddrmem2_M00_AXI_rresp,
    interconnect_aximm_ddrmem2_M00_AXI_rvalid,
    interconnect_aximm_ddrmem2_M00_AXI_wdata,
    interconnect_aximm_ddrmem2_M00_AXI_wlast,
    interconnect_aximm_ddrmem2_M00_AXI_wready,
    interconnect_aximm_ddrmem2_M00_AXI_wstrb,
    interconnect_aximm_ddrmem2_M00_AXI_wvalid,
    interconnect_aximm_ddrmem3_M00_AXI_araddr,
    interconnect_aximm_ddrmem3_M00_AXI_arburst,
    interconnect_aximm_ddrmem3_M00_AXI_arcache,
    interconnect_aximm_ddrmem3_M00_AXI_arid,
    interconnect_aximm_ddrmem3_M00_AXI_arlen,
    interconnect_aximm_ddrmem3_M00_AXI_arlock,
    interconnect_aximm_ddrmem3_M00_AXI_arprot,
    interconnect_aximm_ddrmem3_M00_AXI_arqos,
    interconnect_aximm_ddrmem3_M00_AXI_arready,
    interconnect_aximm_ddrmem3_M00_AXI_arsize,
    interconnect_aximm_ddrmem3_M00_AXI_arvalid,
    interconnect_aximm_ddrmem3_M00_AXI_awaddr,
    interconnect_aximm_ddrmem3_M00_AXI_awburst,
    interconnect_aximm_ddrmem3_M00_AXI_awcache,
    interconnect_aximm_ddrmem3_M00_AXI_awid,
    interconnect_aximm_ddrmem3_M00_AXI_awlen,
    interconnect_aximm_ddrmem3_M00_AXI_awlock,
    interconnect_aximm_ddrmem3_M00_AXI_awprot,
    interconnect_aximm_ddrmem3_M00_AXI_awqos,
    interconnect_aximm_ddrmem3_M00_AXI_awready,
    interconnect_aximm_ddrmem3_M00_AXI_awsize,
    interconnect_aximm_ddrmem3_M00_AXI_awvalid,
    interconnect_aximm_ddrmem3_M00_AXI_bid,
    interconnect_aximm_ddrmem3_M00_AXI_bready,
    interconnect_aximm_ddrmem3_M00_AXI_bresp,
    interconnect_aximm_ddrmem3_M00_AXI_bvalid,
    interconnect_aximm_ddrmem3_M00_AXI_rdata,
    interconnect_aximm_ddrmem3_M00_AXI_rid,
    interconnect_aximm_ddrmem3_M00_AXI_rlast,
    interconnect_aximm_ddrmem3_M00_AXI_rready,
    interconnect_aximm_ddrmem3_M00_AXI_rresp,
    interconnect_aximm_ddrmem3_M00_AXI_rvalid,
    interconnect_aximm_ddrmem3_M00_AXI_wdata,
    interconnect_aximm_ddrmem3_M00_AXI_wlast,
    interconnect_aximm_ddrmem3_M00_AXI_wready,
    interconnect_aximm_ddrmem3_M00_AXI_wstrb,
    interconnect_aximm_ddrmem3_M00_AXI_wvalid,
    interconnect_aximm_ddrmem4_M00_AXI_araddr,
    interconnect_aximm_ddrmem4_M00_AXI_arburst,
    interconnect_aximm_ddrmem4_M00_AXI_arcache,
    interconnect_aximm_ddrmem4_M00_AXI_arid,
    interconnect_aximm_ddrmem4_M00_AXI_arlen,
    interconnect_aximm_ddrmem4_M00_AXI_arlock,
    interconnect_aximm_ddrmem4_M00_AXI_arprot,
    interconnect_aximm_ddrmem4_M00_AXI_arqos,
    interconnect_aximm_ddrmem4_M00_AXI_arready,
    interconnect_aximm_ddrmem4_M00_AXI_arsize,
    interconnect_aximm_ddrmem4_M00_AXI_arvalid,
    interconnect_aximm_ddrmem4_M00_AXI_awaddr,
    interconnect_aximm_ddrmem4_M00_AXI_awburst,
    interconnect_aximm_ddrmem4_M00_AXI_awcache,
    interconnect_aximm_ddrmem4_M00_AXI_awid,
    interconnect_aximm_ddrmem4_M00_AXI_awlen,
    interconnect_aximm_ddrmem4_M00_AXI_awlock,
    interconnect_aximm_ddrmem4_M00_AXI_awprot,
    interconnect_aximm_ddrmem4_M00_AXI_awqos,
    interconnect_aximm_ddrmem4_M00_AXI_awready,
    interconnect_aximm_ddrmem4_M00_AXI_awsize,
    interconnect_aximm_ddrmem4_M00_AXI_awvalid,
    interconnect_aximm_ddrmem4_M00_AXI_bid,
    interconnect_aximm_ddrmem4_M00_AXI_bready,
    interconnect_aximm_ddrmem4_M00_AXI_bresp,
    interconnect_aximm_ddrmem4_M00_AXI_bvalid,
    interconnect_aximm_ddrmem4_M00_AXI_rdata,
    interconnect_aximm_ddrmem4_M00_AXI_rid,
    interconnect_aximm_ddrmem4_M00_AXI_rlast,
    interconnect_aximm_ddrmem4_M00_AXI_rready,
    interconnect_aximm_ddrmem4_M00_AXI_rresp,
    interconnect_aximm_ddrmem4_M00_AXI_rvalid,
    interconnect_aximm_ddrmem4_M00_AXI_wdata,
    interconnect_aximm_ddrmem4_M00_AXI_wlast,
    interconnect_aximm_ddrmem4_M00_AXI_wready,
    interconnect_aximm_ddrmem4_M00_AXI_wstrb,
    interconnect_aximm_ddrmem4_M00_AXI_wvalid,
    interconnect_aximm_ddrmem5_M00_AXI_araddr,
    interconnect_aximm_ddrmem5_M00_AXI_arburst,
    interconnect_aximm_ddrmem5_M00_AXI_arcache,
    interconnect_aximm_ddrmem5_M00_AXI_arid,
    interconnect_aximm_ddrmem5_M00_AXI_arlen,
    interconnect_aximm_ddrmem5_M00_AXI_arlock,
    interconnect_aximm_ddrmem5_M00_AXI_arprot,
    interconnect_aximm_ddrmem5_M00_AXI_arqos,
    interconnect_aximm_ddrmem5_M00_AXI_arready,
    interconnect_aximm_ddrmem5_M00_AXI_arsize,
    interconnect_aximm_ddrmem5_M00_AXI_arvalid,
    interconnect_aximm_ddrmem5_M00_AXI_awaddr,
    interconnect_aximm_ddrmem5_M00_AXI_awburst,
    interconnect_aximm_ddrmem5_M00_AXI_awcache,
    interconnect_aximm_ddrmem5_M00_AXI_awid,
    interconnect_aximm_ddrmem5_M00_AXI_awlen,
    interconnect_aximm_ddrmem5_M00_AXI_awlock,
    interconnect_aximm_ddrmem5_M00_AXI_awprot,
    interconnect_aximm_ddrmem5_M00_AXI_awqos,
    interconnect_aximm_ddrmem5_M00_AXI_awready,
    interconnect_aximm_ddrmem5_M00_AXI_awsize,
    interconnect_aximm_ddrmem5_M00_AXI_awvalid,
    interconnect_aximm_ddrmem5_M00_AXI_bid,
    interconnect_aximm_ddrmem5_M00_AXI_bready,
    interconnect_aximm_ddrmem5_M00_AXI_bresp,
    interconnect_aximm_ddrmem5_M00_AXI_bvalid,
    interconnect_aximm_ddrmem5_M00_AXI_rdata,
    interconnect_aximm_ddrmem5_M00_AXI_rid,
    interconnect_aximm_ddrmem5_M00_AXI_rlast,
    interconnect_aximm_ddrmem5_M00_AXI_rready,
    interconnect_aximm_ddrmem5_M00_AXI_rresp,
    interconnect_aximm_ddrmem5_M00_AXI_rvalid,
    interconnect_aximm_ddrmem5_M00_AXI_wdata,
    interconnect_aximm_ddrmem5_M00_AXI_wlast,
    interconnect_aximm_ddrmem5_M00_AXI_wready,
    interconnect_aximm_ddrmem5_M00_AXI_wstrb,
    interconnect_aximm_ddrmem5_M00_AXI_wvalid,
    pr_reset_n,
    regslice_control_userpf_M_AXI_araddr,
    regslice_control_userpf_M_AXI_arprot,
    regslice_control_userpf_M_AXI_arready,
    regslice_control_userpf_M_AXI_arvalid,
    regslice_control_userpf_M_AXI_awaddr,
    regslice_control_userpf_M_AXI_awprot,
    regslice_control_userpf_M_AXI_awready,
    regslice_control_userpf_M_AXI_awvalid,
    regslice_control_userpf_M_AXI_bready,
    regslice_control_userpf_M_AXI_bresp,
    regslice_control_userpf_M_AXI_bvalid,
    regslice_control_userpf_M_AXI_rdata,
    regslice_control_userpf_M_AXI_rready,
    regslice_control_userpf_M_AXI_rresp,
    regslice_control_userpf_M_AXI_rvalid,
    regslice_control_userpf_M_AXI_wdata,
    regslice_control_userpf_M_AXI_wready,
    regslice_control_userpf_M_AXI_wstrb,
    regslice_control_userpf_M_AXI_wvalid,
    regslice_data_hpm0fpd_M_AXI1_araddr,
    regslice_data_hpm0fpd_M_AXI1_arburst,
    regslice_data_hpm0fpd_M_AXI1_arcache,
    regslice_data_hpm0fpd_M_AXI1_arid,
    regslice_data_hpm0fpd_M_AXI1_arlen,
    regslice_data_hpm0fpd_M_AXI1_arlock,
    regslice_data_hpm0fpd_M_AXI1_arprot,
    regslice_data_hpm0fpd_M_AXI1_arqos,
    regslice_data_hpm0fpd_M_AXI1_arready,
    regslice_data_hpm0fpd_M_AXI1_arregion,
    regslice_data_hpm0fpd_M_AXI1_arsize,
    regslice_data_hpm0fpd_M_AXI1_arvalid,
    regslice_data_hpm0fpd_M_AXI1_awaddr,
    regslice_data_hpm0fpd_M_AXI1_awburst,
    regslice_data_hpm0fpd_M_AXI1_awcache,
    regslice_data_hpm0fpd_M_AXI1_awid,
    regslice_data_hpm0fpd_M_AXI1_awlen,
    regslice_data_hpm0fpd_M_AXI1_awlock,
    regslice_data_hpm0fpd_M_AXI1_awprot,
    regslice_data_hpm0fpd_M_AXI1_awqos,
    regslice_data_hpm0fpd_M_AXI1_awready,
    regslice_data_hpm0fpd_M_AXI1_awregion,
    regslice_data_hpm0fpd_M_AXI1_awsize,
    regslice_data_hpm0fpd_M_AXI1_awvalid,
    regslice_data_hpm0fpd_M_AXI1_bid,
    regslice_data_hpm0fpd_M_AXI1_bready,
    regslice_data_hpm0fpd_M_AXI1_bresp,
    regslice_data_hpm0fpd_M_AXI1_bvalid,
    regslice_data_hpm0fpd_M_AXI1_rdata,
    regslice_data_hpm0fpd_M_AXI1_rid,
    regslice_data_hpm0fpd_M_AXI1_rlast,
    regslice_data_hpm0fpd_M_AXI1_rready,
    regslice_data_hpm0fpd_M_AXI1_rresp,
    regslice_data_hpm0fpd_M_AXI1_rvalid,
    regslice_data_hpm0fpd_M_AXI1_wdata,
    regslice_data_hpm0fpd_M_AXI1_wlast,
    regslice_data_hpm0fpd_M_AXI1_wready,
    regslice_data_hpm0fpd_M_AXI1_wstrb,
    regslice_data_hpm0fpd_M_AXI1_wvalid,
    reset,
    runtest,
    sel,
    shift,
    tck,
    tdi,
    tdo,
    tms,
    update,
    xlconcat_interrupt_dout);
  input bscanid_en;
  input capture;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKWIZ_KERNEL2_CLK_OUT1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKWIZ_KERNEL2_CLK_OUT1, ASSOCIATED_BUSIF interconnect_aximm_ddrmem2_M00_AXI:interconnect_aximm_ddrmem3_M00_AXI:interconnect_aximm_ddrmem4_M00_AXI:interconnect_aximm_ddrmem5_M00_AXI:regslice_data_hpm0fpd_M_AXI1, CLK_DOMAIN pfm_dynamic_clkwiz_kernel2_clk_out1, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clkwiz_kernel2_clk_out1;
  input clkwiz_kernel2_locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKWIZ_KERNEL3_CLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKWIZ_KERNEL3_CLK_OUT, CLK_DOMAIN pfm_dynamic_clkwiz_kernel3_clk_out, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clkwiz_kernel3_clk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKWIZ_KERNEL4_CLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKWIZ_KERNEL4_CLK_OUT, CLK_DOMAIN pfm_dynamic_clkwiz_kernel4_clk_out, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clkwiz_kernel4_clk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKWIZ_KERNEL5_CLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKWIZ_KERNEL5_CLK_OUT, CLK_DOMAIN pfm_dynamic_clkwiz_kernel5_clk_out, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clkwiz_kernel5_clk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKWIZ_KERNEL6_CLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKWIZ_KERNEL6_CLK_OUT, CLK_DOMAIN pfm_dynamic_clkwiz_kernel6_clk_out, FREQ_HZ 600000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clkwiz_kernel6_clk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKWIZ_KERNEL_CLK_OUT1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKWIZ_KERNEL_CLK_OUT1, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clkwiz_kernel_clk_out1;
  input clkwiz_kernel_locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKWIZ_SYSCLKS_CLK_OUT2 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKWIZ_SYSCLKS_CLK_OUT2, ASSOCIATED_BUSIF regslice_control_userpf_M_AXI, CLK_DOMAIN pfm_dynamic_clkwiz_sysclks_clk_out2, FREQ_HZ 75000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clkwiz_sysclks_clk_out2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CLKWIZ_SYSCLKS_LOCKED RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CLKWIZ_SYSCLKS_LOCKED, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input clkwiz_sysclks_locked;
  input drck;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interconnect_aximm_ddrmem2_M00_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel2_clk_out1, DATA_WIDTH 128, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]interconnect_aximm_ddrmem2_M00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI ARBURST" *) output [1:0]interconnect_aximm_ddrmem2_M00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI ARCACHE" *) output [3:0]interconnect_aximm_ddrmem2_M00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI ARID" *) output [5:0]interconnect_aximm_ddrmem2_M00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI ARLEN" *) output [7:0]interconnect_aximm_ddrmem2_M00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI ARLOCK" *) output [0:0]interconnect_aximm_ddrmem2_M00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI ARPROT" *) output [2:0]interconnect_aximm_ddrmem2_M00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI ARQOS" *) output [3:0]interconnect_aximm_ddrmem2_M00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI ARREADY" *) input interconnect_aximm_ddrmem2_M00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI ARSIZE" *) output [2:0]interconnect_aximm_ddrmem2_M00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI ARVALID" *) output interconnect_aximm_ddrmem2_M00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI AWADDR" *) output [31:0]interconnect_aximm_ddrmem2_M00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI AWBURST" *) output [1:0]interconnect_aximm_ddrmem2_M00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI AWCACHE" *) output [3:0]interconnect_aximm_ddrmem2_M00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI AWID" *) output [5:0]interconnect_aximm_ddrmem2_M00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI AWLEN" *) output [7:0]interconnect_aximm_ddrmem2_M00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI AWLOCK" *) output [0:0]interconnect_aximm_ddrmem2_M00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI AWPROT" *) output [2:0]interconnect_aximm_ddrmem2_M00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI AWQOS" *) output [3:0]interconnect_aximm_ddrmem2_M00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI AWREADY" *) input interconnect_aximm_ddrmem2_M00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI AWSIZE" *) output [2:0]interconnect_aximm_ddrmem2_M00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI AWVALID" *) output interconnect_aximm_ddrmem2_M00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI BID" *) input [5:0]interconnect_aximm_ddrmem2_M00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI BREADY" *) output interconnect_aximm_ddrmem2_M00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI BRESP" *) input [1:0]interconnect_aximm_ddrmem2_M00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI BVALID" *) input interconnect_aximm_ddrmem2_M00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI RDATA" *) input [127:0]interconnect_aximm_ddrmem2_M00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI RID" *) input [5:0]interconnect_aximm_ddrmem2_M00_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI RLAST" *) input interconnect_aximm_ddrmem2_M00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI RREADY" *) output interconnect_aximm_ddrmem2_M00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI RRESP" *) input [1:0]interconnect_aximm_ddrmem2_M00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI RVALID" *) input interconnect_aximm_ddrmem2_M00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI WDATA" *) output [127:0]interconnect_aximm_ddrmem2_M00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI WLAST" *) output interconnect_aximm_ddrmem2_M00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI WREADY" *) input interconnect_aximm_ddrmem2_M00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI WSTRB" *) output [15:0]interconnect_aximm_ddrmem2_M00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI WVALID" *) output interconnect_aximm_ddrmem2_M00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interconnect_aximm_ddrmem3_M00_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel2_clk_out1, DATA_WIDTH 128, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]interconnect_aximm_ddrmem3_M00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI ARBURST" *) output [1:0]interconnect_aximm_ddrmem3_M00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI ARCACHE" *) output [3:0]interconnect_aximm_ddrmem3_M00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI ARID" *) output [5:0]interconnect_aximm_ddrmem3_M00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI ARLEN" *) output [7:0]interconnect_aximm_ddrmem3_M00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI ARLOCK" *) output [0:0]interconnect_aximm_ddrmem3_M00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI ARPROT" *) output [2:0]interconnect_aximm_ddrmem3_M00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI ARQOS" *) output [3:0]interconnect_aximm_ddrmem3_M00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI ARREADY" *) input interconnect_aximm_ddrmem3_M00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI ARSIZE" *) output [2:0]interconnect_aximm_ddrmem3_M00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI ARVALID" *) output interconnect_aximm_ddrmem3_M00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI AWADDR" *) output [31:0]interconnect_aximm_ddrmem3_M00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI AWBURST" *) output [1:0]interconnect_aximm_ddrmem3_M00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI AWCACHE" *) output [3:0]interconnect_aximm_ddrmem3_M00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI AWID" *) output [5:0]interconnect_aximm_ddrmem3_M00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI AWLEN" *) output [7:0]interconnect_aximm_ddrmem3_M00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI AWLOCK" *) output [0:0]interconnect_aximm_ddrmem3_M00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI AWPROT" *) output [2:0]interconnect_aximm_ddrmem3_M00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI AWQOS" *) output [3:0]interconnect_aximm_ddrmem3_M00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI AWREADY" *) input interconnect_aximm_ddrmem3_M00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI AWSIZE" *) output [2:0]interconnect_aximm_ddrmem3_M00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI AWVALID" *) output interconnect_aximm_ddrmem3_M00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI BID" *) input [5:0]interconnect_aximm_ddrmem3_M00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI BREADY" *) output interconnect_aximm_ddrmem3_M00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI BRESP" *) input [1:0]interconnect_aximm_ddrmem3_M00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI BVALID" *) input interconnect_aximm_ddrmem3_M00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI RDATA" *) input [127:0]interconnect_aximm_ddrmem3_M00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI RID" *) input [5:0]interconnect_aximm_ddrmem3_M00_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI RLAST" *) input interconnect_aximm_ddrmem3_M00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI RREADY" *) output interconnect_aximm_ddrmem3_M00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI RRESP" *) input [1:0]interconnect_aximm_ddrmem3_M00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI RVALID" *) input interconnect_aximm_ddrmem3_M00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI WDATA" *) output [127:0]interconnect_aximm_ddrmem3_M00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI WLAST" *) output interconnect_aximm_ddrmem3_M00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI WREADY" *) input interconnect_aximm_ddrmem3_M00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI WSTRB" *) output [15:0]interconnect_aximm_ddrmem3_M00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI WVALID" *) output interconnect_aximm_ddrmem3_M00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interconnect_aximm_ddrmem4_M00_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel2_clk_out1, DATA_WIDTH 128, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]interconnect_aximm_ddrmem4_M00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI ARBURST" *) output [1:0]interconnect_aximm_ddrmem4_M00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI ARCACHE" *) output [3:0]interconnect_aximm_ddrmem4_M00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI ARID" *) output [5:0]interconnect_aximm_ddrmem4_M00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI ARLEN" *) output [7:0]interconnect_aximm_ddrmem4_M00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI ARLOCK" *) output [0:0]interconnect_aximm_ddrmem4_M00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI ARPROT" *) output [2:0]interconnect_aximm_ddrmem4_M00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI ARQOS" *) output [3:0]interconnect_aximm_ddrmem4_M00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI ARREADY" *) input interconnect_aximm_ddrmem4_M00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI ARSIZE" *) output [2:0]interconnect_aximm_ddrmem4_M00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI ARVALID" *) output interconnect_aximm_ddrmem4_M00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI AWADDR" *) output [31:0]interconnect_aximm_ddrmem4_M00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI AWBURST" *) output [1:0]interconnect_aximm_ddrmem4_M00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI AWCACHE" *) output [3:0]interconnect_aximm_ddrmem4_M00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI AWID" *) output [5:0]interconnect_aximm_ddrmem4_M00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI AWLEN" *) output [7:0]interconnect_aximm_ddrmem4_M00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI AWLOCK" *) output [0:0]interconnect_aximm_ddrmem4_M00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI AWPROT" *) output [2:0]interconnect_aximm_ddrmem4_M00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI AWQOS" *) output [3:0]interconnect_aximm_ddrmem4_M00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI AWREADY" *) input interconnect_aximm_ddrmem4_M00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI AWSIZE" *) output [2:0]interconnect_aximm_ddrmem4_M00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI AWVALID" *) output interconnect_aximm_ddrmem4_M00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI BID" *) input [5:0]interconnect_aximm_ddrmem4_M00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI BREADY" *) output interconnect_aximm_ddrmem4_M00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI BRESP" *) input [1:0]interconnect_aximm_ddrmem4_M00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI BVALID" *) input interconnect_aximm_ddrmem4_M00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI RDATA" *) input [127:0]interconnect_aximm_ddrmem4_M00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI RID" *) input [5:0]interconnect_aximm_ddrmem4_M00_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI RLAST" *) input interconnect_aximm_ddrmem4_M00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI RREADY" *) output interconnect_aximm_ddrmem4_M00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI RRESP" *) input [1:0]interconnect_aximm_ddrmem4_M00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI RVALID" *) input interconnect_aximm_ddrmem4_M00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI WDATA" *) output [127:0]interconnect_aximm_ddrmem4_M00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI WLAST" *) output interconnect_aximm_ddrmem4_M00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI WREADY" *) input interconnect_aximm_ddrmem4_M00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI WSTRB" *) output [15:0]interconnect_aximm_ddrmem4_M00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI WVALID" *) output interconnect_aximm_ddrmem4_M00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interconnect_aximm_ddrmem5_M00_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel2_clk_out1, DATA_WIDTH 128, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]interconnect_aximm_ddrmem5_M00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI ARBURST" *) output [1:0]interconnect_aximm_ddrmem5_M00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI ARCACHE" *) output [3:0]interconnect_aximm_ddrmem5_M00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI ARID" *) output [5:0]interconnect_aximm_ddrmem5_M00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI ARLEN" *) output [7:0]interconnect_aximm_ddrmem5_M00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI ARLOCK" *) output [0:0]interconnect_aximm_ddrmem5_M00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI ARPROT" *) output [2:0]interconnect_aximm_ddrmem5_M00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI ARQOS" *) output [3:0]interconnect_aximm_ddrmem5_M00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI ARREADY" *) input interconnect_aximm_ddrmem5_M00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI ARSIZE" *) output [2:0]interconnect_aximm_ddrmem5_M00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI ARVALID" *) output interconnect_aximm_ddrmem5_M00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI AWADDR" *) output [31:0]interconnect_aximm_ddrmem5_M00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI AWBURST" *) output [1:0]interconnect_aximm_ddrmem5_M00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI AWCACHE" *) output [3:0]interconnect_aximm_ddrmem5_M00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI AWID" *) output [5:0]interconnect_aximm_ddrmem5_M00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI AWLEN" *) output [7:0]interconnect_aximm_ddrmem5_M00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI AWLOCK" *) output [0:0]interconnect_aximm_ddrmem5_M00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI AWPROT" *) output [2:0]interconnect_aximm_ddrmem5_M00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI AWQOS" *) output [3:0]interconnect_aximm_ddrmem5_M00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI AWREADY" *) input interconnect_aximm_ddrmem5_M00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI AWSIZE" *) output [2:0]interconnect_aximm_ddrmem5_M00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI AWVALID" *) output interconnect_aximm_ddrmem5_M00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI BID" *) input [5:0]interconnect_aximm_ddrmem5_M00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI BREADY" *) output interconnect_aximm_ddrmem5_M00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI BRESP" *) input [1:0]interconnect_aximm_ddrmem5_M00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI BVALID" *) input interconnect_aximm_ddrmem5_M00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI RDATA" *) input [127:0]interconnect_aximm_ddrmem5_M00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI RID" *) input [5:0]interconnect_aximm_ddrmem5_M00_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI RLAST" *) input interconnect_aximm_ddrmem5_M00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI RREADY" *) output interconnect_aximm_ddrmem5_M00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI RRESP" *) input [1:0]interconnect_aximm_ddrmem5_M00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI RVALID" *) input interconnect_aximm_ddrmem5_M00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI WDATA" *) output [127:0]interconnect_aximm_ddrmem5_M00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI WLAST" *) output interconnect_aximm_ddrmem5_M00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI WREADY" *) input interconnect_aximm_ddrmem5_M00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI WSTRB" *) output [15:0]interconnect_aximm_ddrmem5_M00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI WVALID" *) output interconnect_aximm_ddrmem5_M00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PR_RESET_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PR_RESET_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input [0:0]pr_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME regslice_control_userpf_M_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_sysclks_clk_out2, DATA_WIDTH 32, FREQ_HZ 75000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]regslice_control_userpf_M_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI ARPROT" *) input [2:0]regslice_control_userpf_M_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI ARREADY" *) output regslice_control_userpf_M_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI ARVALID" *) input regslice_control_userpf_M_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI AWADDR" *) input [31:0]regslice_control_userpf_M_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI AWPROT" *) input [2:0]regslice_control_userpf_M_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI AWREADY" *) output regslice_control_userpf_M_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI AWVALID" *) input regslice_control_userpf_M_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI BREADY" *) input regslice_control_userpf_M_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI BRESP" *) output [1:0]regslice_control_userpf_M_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI BVALID" *) output regslice_control_userpf_M_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI RDATA" *) output [31:0]regslice_control_userpf_M_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI RREADY" *) input regslice_control_userpf_M_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI RRESP" *) output [1:0]regslice_control_userpf_M_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI RVALID" *) output regslice_control_userpf_M_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI WDATA" *) input [31:0]regslice_control_userpf_M_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI WREADY" *) output regslice_control_userpf_M_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI WSTRB" *) input [3:0]regslice_control_userpf_M_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI WVALID" *) input regslice_control_userpf_M_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME regslice_data_hpm0fpd_M_AXI1, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel2_clk_out1, DATA_WIDTH 128, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]regslice_data_hpm0fpd_M_AXI1_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARBURST" *) input [1:0]regslice_data_hpm0fpd_M_AXI1_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARCACHE" *) input [3:0]regslice_data_hpm0fpd_M_AXI1_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARID" *) input [15:0]regslice_data_hpm0fpd_M_AXI1_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARLEN" *) input [7:0]regslice_data_hpm0fpd_M_AXI1_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARLOCK" *) input [0:0]regslice_data_hpm0fpd_M_AXI1_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARPROT" *) input [2:0]regslice_data_hpm0fpd_M_AXI1_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARQOS" *) input [3:0]regslice_data_hpm0fpd_M_AXI1_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARREADY" *) output regslice_data_hpm0fpd_M_AXI1_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARREGION" *) input [3:0]regslice_data_hpm0fpd_M_AXI1_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARSIZE" *) input [2:0]regslice_data_hpm0fpd_M_AXI1_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARVALID" *) input regslice_data_hpm0fpd_M_AXI1_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWADDR" *) input [31:0]regslice_data_hpm0fpd_M_AXI1_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWBURST" *) input [1:0]regslice_data_hpm0fpd_M_AXI1_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWCACHE" *) input [3:0]regslice_data_hpm0fpd_M_AXI1_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWID" *) input [15:0]regslice_data_hpm0fpd_M_AXI1_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWLEN" *) input [7:0]regslice_data_hpm0fpd_M_AXI1_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWLOCK" *) input [0:0]regslice_data_hpm0fpd_M_AXI1_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWPROT" *) input [2:0]regslice_data_hpm0fpd_M_AXI1_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWQOS" *) input [3:0]regslice_data_hpm0fpd_M_AXI1_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWREADY" *) output regslice_data_hpm0fpd_M_AXI1_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWREGION" *) input [3:0]regslice_data_hpm0fpd_M_AXI1_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWSIZE" *) input [2:0]regslice_data_hpm0fpd_M_AXI1_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWVALID" *) input regslice_data_hpm0fpd_M_AXI1_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 BID" *) output [15:0]regslice_data_hpm0fpd_M_AXI1_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 BREADY" *) input regslice_data_hpm0fpd_M_AXI1_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 BRESP" *) output [1:0]regslice_data_hpm0fpd_M_AXI1_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 BVALID" *) output regslice_data_hpm0fpd_M_AXI1_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 RDATA" *) output [127:0]regslice_data_hpm0fpd_M_AXI1_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 RID" *) output [15:0]regslice_data_hpm0fpd_M_AXI1_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 RLAST" *) output regslice_data_hpm0fpd_M_AXI1_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 RREADY" *) input regslice_data_hpm0fpd_M_AXI1_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 RRESP" *) output [1:0]regslice_data_hpm0fpd_M_AXI1_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 RVALID" *) output regslice_data_hpm0fpd_M_AXI1_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 WDATA" *) input [127:0]regslice_data_hpm0fpd_M_AXI1_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 WLAST" *) input regslice_data_hpm0fpd_M_AXI1_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 WREADY" *) output regslice_data_hpm0fpd_M_AXI1_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 WSTRB" *) input [15:0]regslice_data_hpm0fpd_M_AXI1_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 WVALID" *) input regslice_data_hpm0fpd_M_AXI1_wvalid;
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

  wire [0:0]ARESETN_1;
  wire M01_ACLK_1;
  wire [63:0]axi_interconnect_0_M00_AXI1_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI1_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI1_ARCACHE;
  wire [7:0]axi_interconnect_0_M00_AXI1_ARLEN;
  wire [0:0]axi_interconnect_0_M00_AXI1_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI1_ARPROT;
  wire [3:0]axi_interconnect_0_M00_AXI1_ARQOS;
  wire axi_interconnect_0_M00_AXI1_ARREADY;
  wire [2:0]axi_interconnect_0_M00_AXI1_ARSIZE;
  wire axi_interconnect_0_M00_AXI1_ARVALID;
  wire [63:0]axi_interconnect_0_M00_AXI1_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI1_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI1_AWCACHE;
  wire [7:0]axi_interconnect_0_M00_AXI1_AWLEN;
  wire [0:0]axi_interconnect_0_M00_AXI1_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI1_AWPROT;
  wire [3:0]axi_interconnect_0_M00_AXI1_AWQOS;
  wire axi_interconnect_0_M00_AXI1_AWREADY;
  wire [2:0]axi_interconnect_0_M00_AXI1_AWSIZE;
  wire axi_interconnect_0_M00_AXI1_AWVALID;
  wire axi_interconnect_0_M00_AXI1_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI1_BRESP;
  wire axi_interconnect_0_M00_AXI1_BVALID;
  wire [127:0]axi_interconnect_0_M00_AXI1_RDATA;
  wire axi_interconnect_0_M00_AXI1_RLAST;
  wire axi_interconnect_0_M00_AXI1_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI1_RRESP;
  wire axi_interconnect_0_M00_AXI1_RVALID;
  wire [127:0]axi_interconnect_0_M00_AXI1_WDATA;
  wire axi_interconnect_0_M00_AXI1_WLAST;
  wire axi_interconnect_0_M00_AXI1_WREADY;
  wire [15:0]axi_interconnect_0_M00_AXI1_WSTRB;
  wire axi_interconnect_0_M00_AXI1_WVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_ARCACHE;
  wire [15:0]axi_interconnect_0_M00_AXI_ARID;
  wire [7:0]axi_interconnect_0_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_ARQOS;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_ARREGION;
  wire [2:0]axi_interconnect_0_M00_AXI_ARSIZE;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_AWCACHE;
  wire [15:0]axi_interconnect_0_M00_AXI_AWID;
  wire [7:0]axi_interconnect_0_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_AWQOS;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_AWREGION;
  wire [2:0]axi_interconnect_0_M00_AXI_AWSIZE;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire [15:0]axi_interconnect_0_M00_AXI_BID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [127:0]axi_interconnect_0_M00_AXI_RDATA;
  wire [15:0]axi_interconnect_0_M00_AXI_RID;
  wire axi_interconnect_0_M00_AXI_RLAST;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [127:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WLAST;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [15:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_1_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_1_M00_AXI_ARCACHE;
  wire [7:0]axi_interconnect_1_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_1_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_1_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_1_M00_AXI_ARQOS;
  wire axi_interconnect_1_M00_AXI_ARREADY;
  wire [2:0]axi_interconnect_1_M00_AXI_ARSIZE;
  wire axi_interconnect_1_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_1_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_1_M00_AXI_AWCACHE;
  wire [7:0]axi_interconnect_1_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_1_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_1_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_1_M00_AXI_AWQOS;
  wire axi_interconnect_1_M00_AXI_AWREADY;
  wire [2:0]axi_interconnect_1_M00_AXI_AWSIZE;
  wire axi_interconnect_1_M00_AXI_AWVALID;
  wire axi_interconnect_1_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_BRESP;
  wire axi_interconnect_1_M00_AXI_BVALID;
  wire [127:0]axi_interconnect_1_M00_AXI_RDATA;
  wire axi_interconnect_1_M00_AXI_RLAST;
  wire axi_interconnect_1_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_RRESP;
  wire axi_interconnect_1_M00_AXI_RVALID;
  wire [127:0]axi_interconnect_1_M00_AXI_WDATA;
  wire axi_interconnect_1_M00_AXI_WLAST;
  wire axi_interconnect_1_M00_AXI_WREADY;
  wire [15:0]axi_interconnect_1_M00_AXI_WSTRB;
  wire axi_interconnect_1_M00_AXI_WVALID;
  wire [63:0]axi_mmu_0_M_AXI_ARADDR;
  wire [1:0]axi_mmu_0_M_AXI_ARBURST;
  wire [3:0]axi_mmu_0_M_AXI_ARCACHE;
  wire [5:0]axi_mmu_0_M_AXI_ARID;
  wire [7:0]axi_mmu_0_M_AXI_ARLEN;
  wire [0:0]axi_mmu_0_M_AXI_ARLOCK;
  wire [2:0]axi_mmu_0_M_AXI_ARPROT;
  wire [3:0]axi_mmu_0_M_AXI_ARQOS;
  wire axi_mmu_0_M_AXI_ARREADY;
  wire [2:0]axi_mmu_0_M_AXI_ARSIZE;
  wire axi_mmu_0_M_AXI_ARVALID;
  wire [63:0]axi_mmu_0_M_AXI_AWADDR;
  wire [1:0]axi_mmu_0_M_AXI_AWBURST;
  wire [3:0]axi_mmu_0_M_AXI_AWCACHE;
  wire [5:0]axi_mmu_0_M_AXI_AWID;
  wire [7:0]axi_mmu_0_M_AXI_AWLEN;
  wire [0:0]axi_mmu_0_M_AXI_AWLOCK;
  wire [2:0]axi_mmu_0_M_AXI_AWPROT;
  wire [3:0]axi_mmu_0_M_AXI_AWQOS;
  wire axi_mmu_0_M_AXI_AWREADY;
  wire [2:0]axi_mmu_0_M_AXI_AWSIZE;
  wire axi_mmu_0_M_AXI_AWVALID;
  wire [5:0]axi_mmu_0_M_AXI_BID;
  wire axi_mmu_0_M_AXI_BREADY;
  wire [1:0]axi_mmu_0_M_AXI_BRESP;
  wire axi_mmu_0_M_AXI_BVALID;
  wire [127:0]axi_mmu_0_M_AXI_RDATA;
  wire [5:0]axi_mmu_0_M_AXI_RID;
  wire axi_mmu_0_M_AXI_RLAST;
  wire axi_mmu_0_M_AXI_RREADY;
  wire [1:0]axi_mmu_0_M_AXI_RRESP;
  wire axi_mmu_0_M_AXI_RVALID;
  wire [127:0]axi_mmu_0_M_AXI_WDATA;
  wire axi_mmu_0_M_AXI_WLAST;
  wire axi_mmu_0_M_AXI_WREADY;
  wire [15:0]axi_mmu_0_M_AXI_WSTRB;
  wire axi_mmu_0_M_AXI_WVALID;
  wire [31:0]axi_mmu_2_M_AXI_ARADDR;
  wire [1:0]axi_mmu_2_M_AXI_ARBURST;
  wire [3:0]axi_mmu_2_M_AXI_ARCACHE;
  wire [5:0]axi_mmu_2_M_AXI_ARID;
  wire [7:0]axi_mmu_2_M_AXI_ARLEN;
  wire [0:0]axi_mmu_2_M_AXI_ARLOCK;
  wire [2:0]axi_mmu_2_M_AXI_ARPROT;
  wire [3:0]axi_mmu_2_M_AXI_ARQOS;
  wire axi_mmu_2_M_AXI_ARREADY;
  wire [2:0]axi_mmu_2_M_AXI_ARSIZE;
  wire axi_mmu_2_M_AXI_ARVALID;
  wire [31:0]axi_mmu_2_M_AXI_AWADDR;
  wire [1:0]axi_mmu_2_M_AXI_AWBURST;
  wire [3:0]axi_mmu_2_M_AXI_AWCACHE;
  wire [5:0]axi_mmu_2_M_AXI_AWID;
  wire [7:0]axi_mmu_2_M_AXI_AWLEN;
  wire [0:0]axi_mmu_2_M_AXI_AWLOCK;
  wire [2:0]axi_mmu_2_M_AXI_AWPROT;
  wire [3:0]axi_mmu_2_M_AXI_AWQOS;
  wire axi_mmu_2_M_AXI_AWREADY;
  wire [2:0]axi_mmu_2_M_AXI_AWSIZE;
  wire axi_mmu_2_M_AXI_AWVALID;
  wire [5:0]axi_mmu_2_M_AXI_BID;
  wire axi_mmu_2_M_AXI_BREADY;
  wire [1:0]axi_mmu_2_M_AXI_BRESP;
  wire axi_mmu_2_M_AXI_BVALID;
  wire [127:0]axi_mmu_2_M_AXI_RDATA;
  wire [5:0]axi_mmu_2_M_AXI_RID;
  wire axi_mmu_2_M_AXI_RLAST;
  wire axi_mmu_2_M_AXI_RREADY;
  wire [1:0]axi_mmu_2_M_AXI_RRESP;
  wire axi_mmu_2_M_AXI_RVALID;
  wire [127:0]axi_mmu_2_M_AXI_WDATA;
  wire axi_mmu_2_M_AXI_WLAST;
  wire axi_mmu_2_M_AXI_WREADY;
  wire [15:0]axi_mmu_2_M_AXI_WSTRB;
  wire axi_mmu_2_M_AXI_WVALID;
  wire [63:0]axi_mmu_4_M_AXI_ARADDR;
  wire [1:0]axi_mmu_4_M_AXI_ARBURST;
  wire [3:0]axi_mmu_4_M_AXI_ARCACHE;
  wire [5:0]axi_mmu_4_M_AXI_ARID;
  wire [7:0]axi_mmu_4_M_AXI_ARLEN;
  wire [0:0]axi_mmu_4_M_AXI_ARLOCK;
  wire [2:0]axi_mmu_4_M_AXI_ARPROT;
  wire [3:0]axi_mmu_4_M_AXI_ARQOS;
  wire axi_mmu_4_M_AXI_ARREADY;
  wire [2:0]axi_mmu_4_M_AXI_ARSIZE;
  wire axi_mmu_4_M_AXI_ARVALID;
  wire [63:0]axi_mmu_4_M_AXI_AWADDR;
  wire [1:0]axi_mmu_4_M_AXI_AWBURST;
  wire [3:0]axi_mmu_4_M_AXI_AWCACHE;
  wire [5:0]axi_mmu_4_M_AXI_AWID;
  wire [7:0]axi_mmu_4_M_AXI_AWLEN;
  wire [0:0]axi_mmu_4_M_AXI_AWLOCK;
  wire [2:0]axi_mmu_4_M_AXI_AWPROT;
  wire [3:0]axi_mmu_4_M_AXI_AWQOS;
  wire axi_mmu_4_M_AXI_AWREADY;
  wire [2:0]axi_mmu_4_M_AXI_AWSIZE;
  wire axi_mmu_4_M_AXI_AWVALID;
  wire [5:0]axi_mmu_4_M_AXI_BID;
  wire axi_mmu_4_M_AXI_BREADY;
  wire [1:0]axi_mmu_4_M_AXI_BRESP;
  wire axi_mmu_4_M_AXI_BVALID;
  wire [127:0]axi_mmu_4_M_AXI_RDATA;
  wire [5:0]axi_mmu_4_M_AXI_RID;
  wire axi_mmu_4_M_AXI_RLAST;
  wire axi_mmu_4_M_AXI_RREADY;
  wire [1:0]axi_mmu_4_M_AXI_RRESP;
  wire axi_mmu_4_M_AXI_RVALID;
  wire [127:0]axi_mmu_4_M_AXI_WDATA;
  wire axi_mmu_4_M_AXI_WLAST;
  wire axi_mmu_4_M_AXI_WREADY;
  wire [15:0]axi_mmu_4_M_AXI_WSTRB;
  wire axi_mmu_4_M_AXI_WVALID;
  wire [31:0]axi_mmu_5_M_AXI_ARADDR;
  wire [1:0]axi_mmu_5_M_AXI_ARBURST;
  wire [3:0]axi_mmu_5_M_AXI_ARCACHE;
  wire [5:0]axi_mmu_5_M_AXI_ARID;
  wire [7:0]axi_mmu_5_M_AXI_ARLEN;
  wire [0:0]axi_mmu_5_M_AXI_ARLOCK;
  wire [2:0]axi_mmu_5_M_AXI_ARPROT;
  wire [3:0]axi_mmu_5_M_AXI_ARQOS;
  wire axi_mmu_5_M_AXI_ARREADY;
  wire [2:0]axi_mmu_5_M_AXI_ARSIZE;
  wire axi_mmu_5_M_AXI_ARVALID;
  wire [31:0]axi_mmu_5_M_AXI_AWADDR;
  wire [1:0]axi_mmu_5_M_AXI_AWBURST;
  wire [3:0]axi_mmu_5_M_AXI_AWCACHE;
  wire [5:0]axi_mmu_5_M_AXI_AWID;
  wire [7:0]axi_mmu_5_M_AXI_AWLEN;
  wire [0:0]axi_mmu_5_M_AXI_AWLOCK;
  wire [2:0]axi_mmu_5_M_AXI_AWPROT;
  wire [3:0]axi_mmu_5_M_AXI_AWQOS;
  wire axi_mmu_5_M_AXI_AWREADY;
  wire [2:0]axi_mmu_5_M_AXI_AWSIZE;
  wire axi_mmu_5_M_AXI_AWVALID;
  wire [5:0]axi_mmu_5_M_AXI_BID;
  wire axi_mmu_5_M_AXI_BREADY;
  wire [1:0]axi_mmu_5_M_AXI_BRESP;
  wire axi_mmu_5_M_AXI_BVALID;
  wire [127:0]axi_mmu_5_M_AXI_RDATA;
  wire [5:0]axi_mmu_5_M_AXI_RID;
  wire axi_mmu_5_M_AXI_RLAST;
  wire axi_mmu_5_M_AXI_RREADY;
  wire [1:0]axi_mmu_5_M_AXI_RRESP;
  wire axi_mmu_5_M_AXI_RVALID;
  wire [127:0]axi_mmu_5_M_AXI_WDATA;
  wire axi_mmu_5_M_AXI_WLAST;
  wire axi_mmu_5_M_AXI_WREADY;
  wire [15:0]axi_mmu_5_M_AXI_WSTRB;
  wire axi_mmu_5_M_AXI_WVALID;
  wire [31:0]axi_vip_1_M_AXI_ARADDR;
  wire [1:0]axi_vip_1_M_AXI_ARBURST;
  wire [3:0]axi_vip_1_M_AXI_ARCACHE;
  wire [15:0]axi_vip_1_M_AXI_ARID;
  wire [7:0]axi_vip_1_M_AXI_ARLEN;
  wire [0:0]axi_vip_1_M_AXI_ARLOCK;
  wire [2:0]axi_vip_1_M_AXI_ARPROT;
  wire [3:0]axi_vip_1_M_AXI_ARQOS;
  wire axi_vip_1_M_AXI_ARREADY;
  wire [3:0]axi_vip_1_M_AXI_ARREGION;
  wire [2:0]axi_vip_1_M_AXI_ARSIZE;
  wire axi_vip_1_M_AXI_ARVALID;
  wire [31:0]axi_vip_1_M_AXI_AWADDR;
  wire [1:0]axi_vip_1_M_AXI_AWBURST;
  wire [3:0]axi_vip_1_M_AXI_AWCACHE;
  wire [15:0]axi_vip_1_M_AXI_AWID;
  wire [7:0]axi_vip_1_M_AXI_AWLEN;
  wire [0:0]axi_vip_1_M_AXI_AWLOCK;
  wire [2:0]axi_vip_1_M_AXI_AWPROT;
  wire [3:0]axi_vip_1_M_AXI_AWQOS;
  wire axi_vip_1_M_AXI_AWREADY;
  wire [3:0]axi_vip_1_M_AXI_AWREGION;
  wire [2:0]axi_vip_1_M_AXI_AWSIZE;
  wire axi_vip_1_M_AXI_AWVALID;
  wire [15:0]axi_vip_1_M_AXI_BID;
  wire axi_vip_1_M_AXI_BREADY;
  wire [1:0]axi_vip_1_M_AXI_BRESP;
  wire axi_vip_1_M_AXI_BVALID;
  wire [127:0]axi_vip_1_M_AXI_RDATA;
  wire [15:0]axi_vip_1_M_AXI_RID;
  wire axi_vip_1_M_AXI_RLAST;
  wire axi_vip_1_M_AXI_RREADY;
  wire [1:0]axi_vip_1_M_AXI_RRESP;
  wire axi_vip_1_M_AXI_RVALID;
  wire [127:0]axi_vip_1_M_AXI_WDATA;
  wire axi_vip_1_M_AXI_WLAST;
  wire axi_vip_1_M_AXI_WREADY;
  wire [15:0]axi_vip_1_M_AXI_WSTRB;
  wire axi_vip_1_M_AXI_WVALID;
  wire [31:0]axi_vip_2_M_AXI_ARADDR;
  wire [1:0]axi_vip_2_M_AXI_ARBURST;
  wire [3:0]axi_vip_2_M_AXI_ARCACHE;
  wire [7:0]axi_vip_2_M_AXI_ARLEN;
  wire [0:0]axi_vip_2_M_AXI_ARLOCK;
  wire [2:0]axi_vip_2_M_AXI_ARPROT;
  wire [3:0]axi_vip_2_M_AXI_ARQOS;
  wire axi_vip_2_M_AXI_ARREADY;
  wire [3:0]axi_vip_2_M_AXI_ARREGION;
  wire [2:0]axi_vip_2_M_AXI_ARSIZE;
  wire axi_vip_2_M_AXI_ARVALID;
  wire [31:0]axi_vip_2_M_AXI_AWADDR;
  wire [1:0]axi_vip_2_M_AXI_AWBURST;
  wire [3:0]axi_vip_2_M_AXI_AWCACHE;
  wire [7:0]axi_vip_2_M_AXI_AWLEN;
  wire [0:0]axi_vip_2_M_AXI_AWLOCK;
  wire [2:0]axi_vip_2_M_AXI_AWPROT;
  wire [3:0]axi_vip_2_M_AXI_AWQOS;
  wire axi_vip_2_M_AXI_AWREADY;
  wire [3:0]axi_vip_2_M_AXI_AWREGION;
  wire [2:0]axi_vip_2_M_AXI_AWSIZE;
  wire axi_vip_2_M_AXI_AWVALID;
  wire axi_vip_2_M_AXI_BREADY;
  wire [1:0]axi_vip_2_M_AXI_BRESP;
  wire axi_vip_2_M_AXI_BVALID;
  wire [127:0]axi_vip_2_M_AXI_RDATA;
  wire axi_vip_2_M_AXI_RLAST;
  wire axi_vip_2_M_AXI_RREADY;
  wire [1:0]axi_vip_2_M_AXI_RRESP;
  wire axi_vip_2_M_AXI_RVALID;
  wire [127:0]axi_vip_2_M_AXI_WDATA;
  wire axi_vip_2_M_AXI_WLAST;
  wire axi_vip_2_M_AXI_WREADY;
  wire [15:0]axi_vip_2_M_AXI_WSTRB;
  wire axi_vip_2_M_AXI_WVALID;
  wire [31:0]axi_vip_3_M_AXI_ARADDR;
  wire [1:0]axi_vip_3_M_AXI_ARBURST;
  wire [3:0]axi_vip_3_M_AXI_ARCACHE;
  wire [7:0]axi_vip_3_M_AXI_ARLEN;
  wire [0:0]axi_vip_3_M_AXI_ARLOCK;
  wire [2:0]axi_vip_3_M_AXI_ARPROT;
  wire [3:0]axi_vip_3_M_AXI_ARQOS;
  wire axi_vip_3_M_AXI_ARREADY;
  wire [3:0]axi_vip_3_M_AXI_ARREGION;
  wire [2:0]axi_vip_3_M_AXI_ARSIZE;
  wire axi_vip_3_M_AXI_ARVALID;
  wire [31:0]axi_vip_3_M_AXI_AWADDR;
  wire [1:0]axi_vip_3_M_AXI_AWBURST;
  wire [3:0]axi_vip_3_M_AXI_AWCACHE;
  wire [7:0]axi_vip_3_M_AXI_AWLEN;
  wire [0:0]axi_vip_3_M_AXI_AWLOCK;
  wire [2:0]axi_vip_3_M_AXI_AWPROT;
  wire [3:0]axi_vip_3_M_AXI_AWQOS;
  wire axi_vip_3_M_AXI_AWREADY;
  wire [3:0]axi_vip_3_M_AXI_AWREGION;
  wire [2:0]axi_vip_3_M_AXI_AWSIZE;
  wire axi_vip_3_M_AXI_AWVALID;
  wire axi_vip_3_M_AXI_BREADY;
  wire [1:0]axi_vip_3_M_AXI_BRESP;
  wire axi_vip_3_M_AXI_BVALID;
  wire [127:0]axi_vip_3_M_AXI_RDATA;
  wire axi_vip_3_M_AXI_RLAST;
  wire axi_vip_3_M_AXI_RREADY;
  wire [1:0]axi_vip_3_M_AXI_RRESP;
  wire axi_vip_3_M_AXI_RVALID;
  wire [127:0]axi_vip_3_M_AXI_WDATA;
  wire axi_vip_3_M_AXI_WLAST;
  wire axi_vip_3_M_AXI_WREADY;
  wire [15:0]axi_vip_3_M_AXI_WSTRB;
  wire axi_vip_3_M_AXI_WVALID;
  wire [31:0]axi_vip_4_M_AXI_ARADDR;
  wire [1:0]axi_vip_4_M_AXI_ARBURST;
  wire [3:0]axi_vip_4_M_AXI_ARCACHE;
  wire [7:0]axi_vip_4_M_AXI_ARLEN;
  wire [0:0]axi_vip_4_M_AXI_ARLOCK;
  wire [2:0]axi_vip_4_M_AXI_ARPROT;
  wire [3:0]axi_vip_4_M_AXI_ARQOS;
  wire axi_vip_4_M_AXI_ARREADY;
  wire [3:0]axi_vip_4_M_AXI_ARREGION;
  wire [2:0]axi_vip_4_M_AXI_ARSIZE;
  wire axi_vip_4_M_AXI_ARVALID;
  wire [31:0]axi_vip_4_M_AXI_AWADDR;
  wire [1:0]axi_vip_4_M_AXI_AWBURST;
  wire [3:0]axi_vip_4_M_AXI_AWCACHE;
  wire [7:0]axi_vip_4_M_AXI_AWLEN;
  wire [0:0]axi_vip_4_M_AXI_AWLOCK;
  wire [2:0]axi_vip_4_M_AXI_AWPROT;
  wire [3:0]axi_vip_4_M_AXI_AWQOS;
  wire axi_vip_4_M_AXI_AWREADY;
  wire [3:0]axi_vip_4_M_AXI_AWREGION;
  wire [2:0]axi_vip_4_M_AXI_AWSIZE;
  wire axi_vip_4_M_AXI_AWVALID;
  wire axi_vip_4_M_AXI_BREADY;
  wire [1:0]axi_vip_4_M_AXI_BRESP;
  wire axi_vip_4_M_AXI_BVALID;
  wire [127:0]axi_vip_4_M_AXI_RDATA;
  wire axi_vip_4_M_AXI_RLAST;
  wire axi_vip_4_M_AXI_RREADY;
  wire [1:0]axi_vip_4_M_AXI_RRESP;
  wire axi_vip_4_M_AXI_RVALID;
  wire [127:0]axi_vip_4_M_AXI_WDATA;
  wire axi_vip_4_M_AXI_WLAST;
  wire axi_vip_4_M_AXI_WREADY;
  wire [15:0]axi_vip_4_M_AXI_WSTRB;
  wire axi_vip_4_M_AXI_WVALID;
  wire [31:0]axi_vip_5_M_AXI_ARADDR;
  wire [1:0]axi_vip_5_M_AXI_ARBURST;
  wire [3:0]axi_vip_5_M_AXI_ARCACHE;
  wire [7:0]axi_vip_5_M_AXI_ARLEN;
  wire [0:0]axi_vip_5_M_AXI_ARLOCK;
  wire [2:0]axi_vip_5_M_AXI_ARPROT;
  wire [3:0]axi_vip_5_M_AXI_ARQOS;
  wire axi_vip_5_M_AXI_ARREADY;
  wire [3:0]axi_vip_5_M_AXI_ARREGION;
  wire [2:0]axi_vip_5_M_AXI_ARSIZE;
  wire axi_vip_5_M_AXI_ARVALID;
  wire [31:0]axi_vip_5_M_AXI_AWADDR;
  wire [1:0]axi_vip_5_M_AXI_AWBURST;
  wire [3:0]axi_vip_5_M_AXI_AWCACHE;
  wire [7:0]axi_vip_5_M_AXI_AWLEN;
  wire [0:0]axi_vip_5_M_AXI_AWLOCK;
  wire [2:0]axi_vip_5_M_AXI_AWPROT;
  wire [3:0]axi_vip_5_M_AXI_AWQOS;
  wire axi_vip_5_M_AXI_AWREADY;
  wire [3:0]axi_vip_5_M_AXI_AWREGION;
  wire [2:0]axi_vip_5_M_AXI_AWSIZE;
  wire axi_vip_5_M_AXI_AWVALID;
  wire axi_vip_5_M_AXI_BREADY;
  wire [1:0]axi_vip_5_M_AXI_BRESP;
  wire axi_vip_5_M_AXI_BVALID;
  wire [127:0]axi_vip_5_M_AXI_RDATA;
  wire axi_vip_5_M_AXI_RLAST;
  wire axi_vip_5_M_AXI_RREADY;
  wire [1:0]axi_vip_5_M_AXI_RRESP;
  wire axi_vip_5_M_AXI_RVALID;
  wire [127:0]axi_vip_5_M_AXI_WDATA;
  wire axi_vip_5_M_AXI_WLAST;
  wire axi_vip_5_M_AXI_WREADY;
  wire [15:0]axi_vip_5_M_AXI_WSTRB;
  wire axi_vip_5_M_AXI_WVALID;
  wire [31:0]axi_vip_ctrl_userpf_M_AXI_ARADDR;
  wire [2:0]axi_vip_ctrl_userpf_M_AXI_ARPROT;
  wire axi_vip_ctrl_userpf_M_AXI_ARREADY;
  wire axi_vip_ctrl_userpf_M_AXI_ARVALID;
  wire [31:0]axi_vip_ctrl_userpf_M_AXI_AWADDR;
  wire [2:0]axi_vip_ctrl_userpf_M_AXI_AWPROT;
  wire axi_vip_ctrl_userpf_M_AXI_AWREADY;
  wire axi_vip_ctrl_userpf_M_AXI_AWVALID;
  wire axi_vip_ctrl_userpf_M_AXI_BREADY;
  wire [1:0]axi_vip_ctrl_userpf_M_AXI_BRESP;
  wire axi_vip_ctrl_userpf_M_AXI_BVALID;
  wire [31:0]axi_vip_ctrl_userpf_M_AXI_RDATA;
  wire axi_vip_ctrl_userpf_M_AXI_RREADY;
  wire [1:0]axi_vip_ctrl_userpf_M_AXI_RRESP;
  wire axi_vip_ctrl_userpf_M_AXI_RVALID;
  wire [31:0]axi_vip_ctrl_userpf_M_AXI_WDATA;
  wire axi_vip_ctrl_userpf_M_AXI_WREADY;
  wire [3:0]axi_vip_ctrl_userpf_M_AXI_WSTRB;
  wire axi_vip_ctrl_userpf_M_AXI_WVALID;
  wire bscanid_en_1;
  wire capture_1;
  wire clkwiz_kernel3_clk_out_1;
  wire clkwiz_kernel4_clk_out_1;
  wire clkwiz_kernel5_clk_out_1;
  wire clkwiz_kernel6_clk_out_1;
  wire dcm_locked_1;
  wire dcm_locked_3;
  wire debug_bridge_xsdbm_S_BSCAN_tdo;
  wire digitcaps_accel_1_interrupt;
  wire [63:0]digitcaps_accel_1_m_axi_gmem0_ARADDR;
  wire [1:0]digitcaps_accel_1_m_axi_gmem0_ARBURST;
  wire [3:0]digitcaps_accel_1_m_axi_gmem0_ARCACHE;
  wire [7:0]digitcaps_accel_1_m_axi_gmem0_ARLEN;
  wire [1:0]digitcaps_accel_1_m_axi_gmem0_ARLOCK;
  wire [2:0]digitcaps_accel_1_m_axi_gmem0_ARPROT;
  wire [3:0]digitcaps_accel_1_m_axi_gmem0_ARQOS;
  wire digitcaps_accel_1_m_axi_gmem0_ARREADY;
  wire [3:0]digitcaps_accel_1_m_axi_gmem0_ARREGION;
  wire [2:0]digitcaps_accel_1_m_axi_gmem0_ARSIZE;
  wire digitcaps_accel_1_m_axi_gmem0_ARVALID;
  wire [511:0]digitcaps_accel_1_m_axi_gmem0_RDATA;
  wire digitcaps_accel_1_m_axi_gmem0_RLAST;
  wire digitcaps_accel_1_m_axi_gmem0_RREADY;
  wire [1:0]digitcaps_accel_1_m_axi_gmem0_RRESP;
  wire digitcaps_accel_1_m_axi_gmem0_RVALID;
  wire [63:0]digitcaps_accel_1_m_axi_gmem1_ARADDR;
  wire [1:0]digitcaps_accel_1_m_axi_gmem1_ARBURST;
  wire [3:0]digitcaps_accel_1_m_axi_gmem1_ARCACHE;
  wire [7:0]digitcaps_accel_1_m_axi_gmem1_ARLEN;
  wire [1:0]digitcaps_accel_1_m_axi_gmem1_ARLOCK;
  wire [2:0]digitcaps_accel_1_m_axi_gmem1_ARPROT;
  wire [3:0]digitcaps_accel_1_m_axi_gmem1_ARQOS;
  wire digitcaps_accel_1_m_axi_gmem1_ARREADY;
  wire [3:0]digitcaps_accel_1_m_axi_gmem1_ARREGION;
  wire [2:0]digitcaps_accel_1_m_axi_gmem1_ARSIZE;
  wire digitcaps_accel_1_m_axi_gmem1_ARVALID;
  wire [511:0]digitcaps_accel_1_m_axi_gmem1_RDATA;
  wire digitcaps_accel_1_m_axi_gmem1_RLAST;
  wire digitcaps_accel_1_m_axi_gmem1_RREADY;
  wire [1:0]digitcaps_accel_1_m_axi_gmem1_RRESP;
  wire digitcaps_accel_1_m_axi_gmem1_RVALID;
  wire [63:0]digitcaps_accel_1_m_axi_gmem2_AWADDR;
  wire [1:0]digitcaps_accel_1_m_axi_gmem2_AWBURST;
  wire [3:0]digitcaps_accel_1_m_axi_gmem2_AWCACHE;
  wire [7:0]digitcaps_accel_1_m_axi_gmem2_AWLEN;
  wire [1:0]digitcaps_accel_1_m_axi_gmem2_AWLOCK;
  wire [2:0]digitcaps_accel_1_m_axi_gmem2_AWPROT;
  wire [3:0]digitcaps_accel_1_m_axi_gmem2_AWQOS;
  wire digitcaps_accel_1_m_axi_gmem2_AWREADY;
  wire [3:0]digitcaps_accel_1_m_axi_gmem2_AWREGION;
  wire [2:0]digitcaps_accel_1_m_axi_gmem2_AWSIZE;
  wire digitcaps_accel_1_m_axi_gmem2_AWVALID;
  wire digitcaps_accel_1_m_axi_gmem2_BREADY;
  wire [1:0]digitcaps_accel_1_m_axi_gmem2_BRESP;
  wire digitcaps_accel_1_m_axi_gmem2_BVALID;
  wire [511:0]digitcaps_accel_1_m_axi_gmem2_WDATA;
  wire digitcaps_accel_1_m_axi_gmem2_WLAST;
  wire digitcaps_accel_1_m_axi_gmem2_WREADY;
  wire [63:0]digitcaps_accel_1_m_axi_gmem2_WSTRB;
  wire digitcaps_accel_1_m_axi_gmem2_WVALID;
  wire drck_1;
  wire [0:0]expanded_resets_interconnect_aresetn1;
  wire [0:0]ext_reset_in_1;
  wire [31:0]interconnect_axifull_1_user_slr1_M00_AXI_ARADDR;
  wire [1:0]interconnect_axifull_1_user_slr1_M00_AXI_ARBURST;
  wire [3:0]interconnect_axifull_1_user_slr1_M00_AXI_ARCACHE;
  wire [7:0]interconnect_axifull_1_user_slr1_M00_AXI_ARLEN;
  wire [0:0]interconnect_axifull_1_user_slr1_M00_AXI_ARLOCK;
  wire [2:0]interconnect_axifull_1_user_slr1_M00_AXI_ARPROT;
  wire [3:0]interconnect_axifull_1_user_slr1_M00_AXI_ARQOS;
  wire interconnect_axifull_1_user_slr1_M00_AXI_ARREADY;
  wire [2:0]interconnect_axifull_1_user_slr1_M00_AXI_ARSIZE;
  wire interconnect_axifull_1_user_slr1_M00_AXI_ARVALID;
  wire [31:0]interconnect_axifull_1_user_slr1_M00_AXI_AWADDR;
  wire [1:0]interconnect_axifull_1_user_slr1_M00_AXI_AWBURST;
  wire [3:0]interconnect_axifull_1_user_slr1_M00_AXI_AWCACHE;
  wire [7:0]interconnect_axifull_1_user_slr1_M00_AXI_AWLEN;
  wire [0:0]interconnect_axifull_1_user_slr1_M00_AXI_AWLOCK;
  wire [2:0]interconnect_axifull_1_user_slr1_M00_AXI_AWPROT;
  wire [3:0]interconnect_axifull_1_user_slr1_M00_AXI_AWQOS;
  wire interconnect_axifull_1_user_slr1_M00_AXI_AWREADY;
  wire [2:0]interconnect_axifull_1_user_slr1_M00_AXI_AWSIZE;
  wire interconnect_axifull_1_user_slr1_M00_AXI_AWVALID;
  wire interconnect_axifull_1_user_slr1_M00_AXI_BREADY;
  wire [1:0]interconnect_axifull_1_user_slr1_M00_AXI_BRESP;
  wire interconnect_axifull_1_user_slr1_M00_AXI_BVALID;
  wire [127:0]interconnect_axifull_1_user_slr1_M00_AXI_RDATA;
  wire interconnect_axifull_1_user_slr1_M00_AXI_RLAST;
  wire interconnect_axifull_1_user_slr1_M00_AXI_RREADY;
  wire [1:0]interconnect_axifull_1_user_slr1_M00_AXI_RRESP;
  wire interconnect_axifull_1_user_slr1_M00_AXI_RVALID;
  wire [127:0]interconnect_axifull_1_user_slr1_M00_AXI_WDATA;
  wire interconnect_axifull_1_user_slr1_M00_AXI_WLAST;
  wire interconnect_axifull_1_user_slr1_M00_AXI_WREADY;
  wire [15:0]interconnect_axifull_1_user_slr1_M00_AXI_WSTRB;
  wire interconnect_axifull_1_user_slr1_M00_AXI_WVALID;
  wire [63:0]interconnect_axifull_2_user_slr1_M00_AXI_ARADDR;
  wire [1:0]interconnect_axifull_2_user_slr1_M00_AXI_ARBURST;
  wire [3:0]interconnect_axifull_2_user_slr1_M00_AXI_ARCACHE;
  wire [7:0]interconnect_axifull_2_user_slr1_M00_AXI_ARLEN;
  wire [0:0]interconnect_axifull_2_user_slr1_M00_AXI_ARLOCK;
  wire [2:0]interconnect_axifull_2_user_slr1_M00_AXI_ARPROT;
  wire [3:0]interconnect_axifull_2_user_slr1_M00_AXI_ARQOS;
  wire interconnect_axifull_2_user_slr1_M00_AXI_ARREADY;
  wire [2:0]interconnect_axifull_2_user_slr1_M00_AXI_ARSIZE;
  wire interconnect_axifull_2_user_slr1_M00_AXI_ARVALID;
  wire [63:0]interconnect_axifull_2_user_slr1_M00_AXI_AWADDR;
  wire [1:0]interconnect_axifull_2_user_slr1_M00_AXI_AWBURST;
  wire [3:0]interconnect_axifull_2_user_slr1_M00_AXI_AWCACHE;
  wire [7:0]interconnect_axifull_2_user_slr1_M00_AXI_AWLEN;
  wire [0:0]interconnect_axifull_2_user_slr1_M00_AXI_AWLOCK;
  wire [2:0]interconnect_axifull_2_user_slr1_M00_AXI_AWPROT;
  wire [3:0]interconnect_axifull_2_user_slr1_M00_AXI_AWQOS;
  wire interconnect_axifull_2_user_slr1_M00_AXI_AWREADY;
  wire [2:0]interconnect_axifull_2_user_slr1_M00_AXI_AWSIZE;
  wire interconnect_axifull_2_user_slr1_M00_AXI_AWVALID;
  wire interconnect_axifull_2_user_slr1_M00_AXI_BREADY;
  wire [1:0]interconnect_axifull_2_user_slr1_M00_AXI_BRESP;
  wire interconnect_axifull_2_user_slr1_M00_AXI_BVALID;
  wire [127:0]interconnect_axifull_2_user_slr1_M00_AXI_RDATA;
  wire interconnect_axifull_2_user_slr1_M00_AXI_RLAST;
  wire interconnect_axifull_2_user_slr1_M00_AXI_RREADY;
  wire [1:0]interconnect_axifull_2_user_slr1_M00_AXI_RRESP;
  wire interconnect_axifull_2_user_slr1_M00_AXI_RVALID;
  wire [127:0]interconnect_axifull_2_user_slr1_M00_AXI_WDATA;
  wire interconnect_axifull_2_user_slr1_M00_AXI_WLAST;
  wire interconnect_axifull_2_user_slr1_M00_AXI_WREADY;
  wire [15:0]interconnect_axifull_2_user_slr1_M00_AXI_WSTRB;
  wire interconnect_axifull_2_user_slr1_M00_AXI_WVALID;
  wire [8:0]interconnect_axilite_user_M00_AXI_ARADDR;
  wire interconnect_axilite_user_M00_AXI_ARREADY;
  wire interconnect_axilite_user_M00_AXI_ARVALID;
  wire [8:0]interconnect_axilite_user_M00_AXI_AWADDR;
  wire interconnect_axilite_user_M00_AXI_AWREADY;
  wire interconnect_axilite_user_M00_AXI_AWVALID;
  wire interconnect_axilite_user_M00_AXI_BREADY;
  wire [1:0]interconnect_axilite_user_M00_AXI_BRESP;
  wire interconnect_axilite_user_M00_AXI_BVALID;
  wire [31:0]interconnect_axilite_user_M00_AXI_RDATA;
  wire interconnect_axilite_user_M00_AXI_RREADY;
  wire [1:0]interconnect_axilite_user_M00_AXI_RRESP;
  wire interconnect_axilite_user_M00_AXI_RVALID;
  wire [31:0]interconnect_axilite_user_M00_AXI_WDATA;
  wire interconnect_axilite_user_M00_AXI_WREADY;
  wire [3:0]interconnect_axilite_user_M00_AXI_WSTRB;
  wire interconnect_axilite_user_M00_AXI_WVALID;
  wire [5:0]interconnect_axilite_user_slr1_M01_AXI_ARADDR;
  wire interconnect_axilite_user_slr1_M01_AXI_ARREADY;
  wire interconnect_axilite_user_slr1_M01_AXI_ARVALID;
  wire [5:0]interconnect_axilite_user_slr1_M01_AXI_AWADDR;
  wire interconnect_axilite_user_slr1_M01_AXI_AWREADY;
  wire interconnect_axilite_user_slr1_M01_AXI_AWVALID;
  wire interconnect_axilite_user_slr1_M01_AXI_BREADY;
  wire [1:0]interconnect_axilite_user_slr1_M01_AXI_BRESP;
  wire interconnect_axilite_user_slr1_M01_AXI_BVALID;
  wire [31:0]interconnect_axilite_user_slr1_M01_AXI_RDATA;
  wire interconnect_axilite_user_slr1_M01_AXI_RREADY;
  wire [1:0]interconnect_axilite_user_slr1_M01_AXI_RRESP;
  wire interconnect_axilite_user_slr1_M01_AXI_RVALID;
  wire [31:0]interconnect_axilite_user_slr1_M01_AXI_WDATA;
  wire interconnect_axilite_user_slr1_M01_AXI_WREADY;
  wire [3:0]interconnect_axilite_user_slr1_M01_AXI_WSTRB;
  wire interconnect_axilite_user_slr1_M01_AXI_WVALID;
  wire [31:0]interrupt_concat_xlconcat_interrupt_dout;
  wire logic_reset_op_Res_1;
  wire [31:0]regslice_control_userpf_M_AXI_1_ARADDR;
  wire [2:0]regslice_control_userpf_M_AXI_1_ARPROT;
  wire regslice_control_userpf_M_AXI_1_ARREADY;
  wire regslice_control_userpf_M_AXI_1_ARVALID;
  wire [31:0]regslice_control_userpf_M_AXI_1_AWADDR;
  wire [2:0]regslice_control_userpf_M_AXI_1_AWPROT;
  wire regslice_control_userpf_M_AXI_1_AWREADY;
  wire regslice_control_userpf_M_AXI_1_AWVALID;
  wire regslice_control_userpf_M_AXI_1_BREADY;
  wire [1:0]regslice_control_userpf_M_AXI_1_BRESP;
  wire regslice_control_userpf_M_AXI_1_BVALID;
  wire [31:0]regslice_control_userpf_M_AXI_1_RDATA;
  wire regslice_control_userpf_M_AXI_1_RREADY;
  wire [1:0]regslice_control_userpf_M_AXI_1_RRESP;
  wire regslice_control_userpf_M_AXI_1_RVALID;
  wire [31:0]regslice_control_userpf_M_AXI_1_WDATA;
  wire regslice_control_userpf_M_AXI_1_WREADY;
  wire [3:0]regslice_control_userpf_M_AXI_1_WSTRB;
  wire regslice_control_userpf_M_AXI_1_WVALID;
  wire [31:0]regslice_data_hpm0fpd_M_AXI1_1_ARADDR;
  wire [1:0]regslice_data_hpm0fpd_M_AXI1_1_ARBURST;
  wire [3:0]regslice_data_hpm0fpd_M_AXI1_1_ARCACHE;
  wire [15:0]regslice_data_hpm0fpd_M_AXI1_1_ARID;
  wire [7:0]regslice_data_hpm0fpd_M_AXI1_1_ARLEN;
  wire [0:0]regslice_data_hpm0fpd_M_AXI1_1_ARLOCK;
  wire [2:0]regslice_data_hpm0fpd_M_AXI1_1_ARPROT;
  wire [3:0]regslice_data_hpm0fpd_M_AXI1_1_ARQOS;
  wire regslice_data_hpm0fpd_M_AXI1_1_ARREADY;
  wire [3:0]regslice_data_hpm0fpd_M_AXI1_1_ARREGION;
  wire [2:0]regslice_data_hpm0fpd_M_AXI1_1_ARSIZE;
  wire regslice_data_hpm0fpd_M_AXI1_1_ARVALID;
  wire [31:0]regslice_data_hpm0fpd_M_AXI1_1_AWADDR;
  wire [1:0]regslice_data_hpm0fpd_M_AXI1_1_AWBURST;
  wire [3:0]regslice_data_hpm0fpd_M_AXI1_1_AWCACHE;
  wire [15:0]regslice_data_hpm0fpd_M_AXI1_1_AWID;
  wire [7:0]regslice_data_hpm0fpd_M_AXI1_1_AWLEN;
  wire [0:0]regslice_data_hpm0fpd_M_AXI1_1_AWLOCK;
  wire [2:0]regslice_data_hpm0fpd_M_AXI1_1_AWPROT;
  wire [3:0]regslice_data_hpm0fpd_M_AXI1_1_AWQOS;
  wire regslice_data_hpm0fpd_M_AXI1_1_AWREADY;
  wire [3:0]regslice_data_hpm0fpd_M_AXI1_1_AWREGION;
  wire [2:0]regslice_data_hpm0fpd_M_AXI1_1_AWSIZE;
  wire regslice_data_hpm0fpd_M_AXI1_1_AWVALID;
  wire [15:0]regslice_data_hpm0fpd_M_AXI1_1_BID;
  wire regslice_data_hpm0fpd_M_AXI1_1_BREADY;
  wire [1:0]regslice_data_hpm0fpd_M_AXI1_1_BRESP;
  wire regslice_data_hpm0fpd_M_AXI1_1_BVALID;
  wire [127:0]regslice_data_hpm0fpd_M_AXI1_1_RDATA;
  wire [15:0]regslice_data_hpm0fpd_M_AXI1_1_RID;
  wire regslice_data_hpm0fpd_M_AXI1_1_RLAST;
  wire regslice_data_hpm0fpd_M_AXI1_1_RREADY;
  wire [1:0]regslice_data_hpm0fpd_M_AXI1_1_RRESP;
  wire regslice_data_hpm0fpd_M_AXI1_1_RVALID;
  wire [127:0]regslice_data_hpm0fpd_M_AXI1_1_WDATA;
  wire regslice_data_hpm0fpd_M_AXI1_1_WLAST;
  wire regslice_data_hpm0fpd_M_AXI1_1_WREADY;
  wire [15:0]regslice_data_hpm0fpd_M_AXI1_1_WSTRB;
  wire regslice_data_hpm0fpd_M_AXI1_1_WVALID;
  wire reset_1;
  wire [0:0]reset_controllers_interconnect_aresetn;
  wire [0:0]reset_controllers_peripheral_aresetn;
  wire runtest_1;
  wire sel_1;
  wire shift_1;
  wire slowest_sync_clk_1;
  wire slowest_sync_clk_3;
  wire tck_1;
  wire tdi_1;
  wire tms_1;
  wire update_1;

  assign M01_ACLK_1 = clkwiz_kernel2_clk_out1;
  assign axi_mmu_0_M_AXI_ARREADY = interconnect_aximm_ddrmem3_M00_AXI_arready;
  assign axi_mmu_0_M_AXI_AWREADY = interconnect_aximm_ddrmem3_M00_AXI_awready;
  assign axi_mmu_0_M_AXI_BID = interconnect_aximm_ddrmem3_M00_AXI_bid[5:0];
  assign axi_mmu_0_M_AXI_BRESP = interconnect_aximm_ddrmem3_M00_AXI_bresp[1:0];
  assign axi_mmu_0_M_AXI_BVALID = interconnect_aximm_ddrmem3_M00_AXI_bvalid;
  assign axi_mmu_0_M_AXI_RDATA = interconnect_aximm_ddrmem3_M00_AXI_rdata[127:0];
  assign axi_mmu_0_M_AXI_RID = interconnect_aximm_ddrmem3_M00_AXI_rid[5:0];
  assign axi_mmu_0_M_AXI_RLAST = interconnect_aximm_ddrmem3_M00_AXI_rlast;
  assign axi_mmu_0_M_AXI_RRESP = interconnect_aximm_ddrmem3_M00_AXI_rresp[1:0];
  assign axi_mmu_0_M_AXI_RVALID = interconnect_aximm_ddrmem3_M00_AXI_rvalid;
  assign axi_mmu_0_M_AXI_WREADY = interconnect_aximm_ddrmem3_M00_AXI_wready;
  assign axi_mmu_2_M_AXI_ARREADY = interconnect_aximm_ddrmem2_M00_AXI_arready;
  assign axi_mmu_2_M_AXI_AWREADY = interconnect_aximm_ddrmem2_M00_AXI_awready;
  assign axi_mmu_2_M_AXI_BID = interconnect_aximm_ddrmem2_M00_AXI_bid[5:0];
  assign axi_mmu_2_M_AXI_BRESP = interconnect_aximm_ddrmem2_M00_AXI_bresp[1:0];
  assign axi_mmu_2_M_AXI_BVALID = interconnect_aximm_ddrmem2_M00_AXI_bvalid;
  assign axi_mmu_2_M_AXI_RDATA = interconnect_aximm_ddrmem2_M00_AXI_rdata[127:0];
  assign axi_mmu_2_M_AXI_RID = interconnect_aximm_ddrmem2_M00_AXI_rid[5:0];
  assign axi_mmu_2_M_AXI_RLAST = interconnect_aximm_ddrmem2_M00_AXI_rlast;
  assign axi_mmu_2_M_AXI_RRESP = interconnect_aximm_ddrmem2_M00_AXI_rresp[1:0];
  assign axi_mmu_2_M_AXI_RVALID = interconnect_aximm_ddrmem2_M00_AXI_rvalid;
  assign axi_mmu_2_M_AXI_WREADY = interconnect_aximm_ddrmem2_M00_AXI_wready;
  assign axi_mmu_4_M_AXI_ARREADY = interconnect_aximm_ddrmem4_M00_AXI_arready;
  assign axi_mmu_4_M_AXI_AWREADY = interconnect_aximm_ddrmem4_M00_AXI_awready;
  assign axi_mmu_4_M_AXI_BID = interconnect_aximm_ddrmem4_M00_AXI_bid[5:0];
  assign axi_mmu_4_M_AXI_BRESP = interconnect_aximm_ddrmem4_M00_AXI_bresp[1:0];
  assign axi_mmu_4_M_AXI_BVALID = interconnect_aximm_ddrmem4_M00_AXI_bvalid;
  assign axi_mmu_4_M_AXI_RDATA = interconnect_aximm_ddrmem4_M00_AXI_rdata[127:0];
  assign axi_mmu_4_M_AXI_RID = interconnect_aximm_ddrmem4_M00_AXI_rid[5:0];
  assign axi_mmu_4_M_AXI_RLAST = interconnect_aximm_ddrmem4_M00_AXI_rlast;
  assign axi_mmu_4_M_AXI_RRESP = interconnect_aximm_ddrmem4_M00_AXI_rresp[1:0];
  assign axi_mmu_4_M_AXI_RVALID = interconnect_aximm_ddrmem4_M00_AXI_rvalid;
  assign axi_mmu_4_M_AXI_WREADY = interconnect_aximm_ddrmem4_M00_AXI_wready;
  assign axi_mmu_5_M_AXI_ARREADY = interconnect_aximm_ddrmem5_M00_AXI_arready;
  assign axi_mmu_5_M_AXI_AWREADY = interconnect_aximm_ddrmem5_M00_AXI_awready;
  assign axi_mmu_5_M_AXI_BID = interconnect_aximm_ddrmem5_M00_AXI_bid[5:0];
  assign axi_mmu_5_M_AXI_BRESP = interconnect_aximm_ddrmem5_M00_AXI_bresp[1:0];
  assign axi_mmu_5_M_AXI_BVALID = interconnect_aximm_ddrmem5_M00_AXI_bvalid;
  assign axi_mmu_5_M_AXI_RDATA = interconnect_aximm_ddrmem5_M00_AXI_rdata[127:0];
  assign axi_mmu_5_M_AXI_RID = interconnect_aximm_ddrmem5_M00_AXI_rid[5:0];
  assign axi_mmu_5_M_AXI_RLAST = interconnect_aximm_ddrmem5_M00_AXI_rlast;
  assign axi_mmu_5_M_AXI_RRESP = interconnect_aximm_ddrmem5_M00_AXI_rresp[1:0];
  assign axi_mmu_5_M_AXI_RVALID = interconnect_aximm_ddrmem5_M00_AXI_rvalid;
  assign axi_mmu_5_M_AXI_WREADY = interconnect_aximm_ddrmem5_M00_AXI_wready;
  assign bscanid_en_1 = bscanid_en;
  assign capture_1 = capture;
  assign clkwiz_kernel3_clk_out_1 = clkwiz_kernel3_clk_out;
  assign clkwiz_kernel4_clk_out_1 = clkwiz_kernel4_clk_out;
  assign clkwiz_kernel5_clk_out_1 = clkwiz_kernel5_clk_out;
  assign clkwiz_kernel6_clk_out_1 = clkwiz_kernel6_clk_out;
  assign dcm_locked_1 = clkwiz_kernel_locked;
  assign dcm_locked_3 = clkwiz_kernel2_locked;
  assign drck_1 = drck;
  assign ext_reset_in_1 = pr_reset_n[0];
  assign interconnect_aximm_ddrmem2_M00_AXI_araddr[31:0] = axi_mmu_2_M_AXI_ARADDR;
  assign interconnect_aximm_ddrmem2_M00_AXI_arburst[1:0] = axi_mmu_2_M_AXI_ARBURST;
  assign interconnect_aximm_ddrmem2_M00_AXI_arcache[3:0] = axi_mmu_2_M_AXI_ARCACHE;
  assign interconnect_aximm_ddrmem2_M00_AXI_arid[5:0] = axi_mmu_2_M_AXI_ARID;
  assign interconnect_aximm_ddrmem2_M00_AXI_arlen[7:0] = axi_mmu_2_M_AXI_ARLEN;
  assign interconnect_aximm_ddrmem2_M00_AXI_arlock[0] = axi_mmu_2_M_AXI_ARLOCK;
  assign interconnect_aximm_ddrmem2_M00_AXI_arprot[2:0] = axi_mmu_2_M_AXI_ARPROT;
  assign interconnect_aximm_ddrmem2_M00_AXI_arqos[3:0] = axi_mmu_2_M_AXI_ARQOS;
  assign interconnect_aximm_ddrmem2_M00_AXI_arsize[2:0] = axi_mmu_2_M_AXI_ARSIZE;
  assign interconnect_aximm_ddrmem2_M00_AXI_arvalid = axi_mmu_2_M_AXI_ARVALID;
  assign interconnect_aximm_ddrmem2_M00_AXI_awaddr[31:0] = axi_mmu_2_M_AXI_AWADDR;
  assign interconnect_aximm_ddrmem2_M00_AXI_awburst[1:0] = axi_mmu_2_M_AXI_AWBURST;
  assign interconnect_aximm_ddrmem2_M00_AXI_awcache[3:0] = axi_mmu_2_M_AXI_AWCACHE;
  assign interconnect_aximm_ddrmem2_M00_AXI_awid[5:0] = axi_mmu_2_M_AXI_AWID;
  assign interconnect_aximm_ddrmem2_M00_AXI_awlen[7:0] = axi_mmu_2_M_AXI_AWLEN;
  assign interconnect_aximm_ddrmem2_M00_AXI_awlock[0] = axi_mmu_2_M_AXI_AWLOCK;
  assign interconnect_aximm_ddrmem2_M00_AXI_awprot[2:0] = axi_mmu_2_M_AXI_AWPROT;
  assign interconnect_aximm_ddrmem2_M00_AXI_awqos[3:0] = axi_mmu_2_M_AXI_AWQOS;
  assign interconnect_aximm_ddrmem2_M00_AXI_awsize[2:0] = axi_mmu_2_M_AXI_AWSIZE;
  assign interconnect_aximm_ddrmem2_M00_AXI_awvalid = axi_mmu_2_M_AXI_AWVALID;
  assign interconnect_aximm_ddrmem2_M00_AXI_bready = axi_mmu_2_M_AXI_BREADY;
  assign interconnect_aximm_ddrmem2_M00_AXI_rready = axi_mmu_2_M_AXI_RREADY;
  assign interconnect_aximm_ddrmem2_M00_AXI_wdata[127:0] = axi_mmu_2_M_AXI_WDATA;
  assign interconnect_aximm_ddrmem2_M00_AXI_wlast = axi_mmu_2_M_AXI_WLAST;
  assign interconnect_aximm_ddrmem2_M00_AXI_wstrb[15:0] = axi_mmu_2_M_AXI_WSTRB;
  assign interconnect_aximm_ddrmem2_M00_AXI_wvalid = axi_mmu_2_M_AXI_WVALID;
  assign interconnect_aximm_ddrmem3_M00_AXI_araddr[31:0] = axi_mmu_0_M_AXI_ARADDR[31:0];
  assign interconnect_aximm_ddrmem3_M00_AXI_arburst[1:0] = axi_mmu_0_M_AXI_ARBURST;
  assign interconnect_aximm_ddrmem3_M00_AXI_arcache[3:0] = axi_mmu_0_M_AXI_ARCACHE;
  assign interconnect_aximm_ddrmem3_M00_AXI_arid[5:0] = axi_mmu_0_M_AXI_ARID;
  assign interconnect_aximm_ddrmem3_M00_AXI_arlen[7:0] = axi_mmu_0_M_AXI_ARLEN;
  assign interconnect_aximm_ddrmem3_M00_AXI_arlock[0] = axi_mmu_0_M_AXI_ARLOCK;
  assign interconnect_aximm_ddrmem3_M00_AXI_arprot[2:0] = axi_mmu_0_M_AXI_ARPROT;
  assign interconnect_aximm_ddrmem3_M00_AXI_arqos[3:0] = axi_mmu_0_M_AXI_ARQOS;
  assign interconnect_aximm_ddrmem3_M00_AXI_arsize[2:0] = axi_mmu_0_M_AXI_ARSIZE;
  assign interconnect_aximm_ddrmem3_M00_AXI_arvalid = axi_mmu_0_M_AXI_ARVALID;
  assign interconnect_aximm_ddrmem3_M00_AXI_awaddr[31:0] = axi_mmu_0_M_AXI_AWADDR[31:0];
  assign interconnect_aximm_ddrmem3_M00_AXI_awburst[1:0] = axi_mmu_0_M_AXI_AWBURST;
  assign interconnect_aximm_ddrmem3_M00_AXI_awcache[3:0] = axi_mmu_0_M_AXI_AWCACHE;
  assign interconnect_aximm_ddrmem3_M00_AXI_awid[5:0] = axi_mmu_0_M_AXI_AWID;
  assign interconnect_aximm_ddrmem3_M00_AXI_awlen[7:0] = axi_mmu_0_M_AXI_AWLEN;
  assign interconnect_aximm_ddrmem3_M00_AXI_awlock[0] = axi_mmu_0_M_AXI_AWLOCK;
  assign interconnect_aximm_ddrmem3_M00_AXI_awprot[2:0] = axi_mmu_0_M_AXI_AWPROT;
  assign interconnect_aximm_ddrmem3_M00_AXI_awqos[3:0] = axi_mmu_0_M_AXI_AWQOS;
  assign interconnect_aximm_ddrmem3_M00_AXI_awsize[2:0] = axi_mmu_0_M_AXI_AWSIZE;
  assign interconnect_aximm_ddrmem3_M00_AXI_awvalid = axi_mmu_0_M_AXI_AWVALID;
  assign interconnect_aximm_ddrmem3_M00_AXI_bready = axi_mmu_0_M_AXI_BREADY;
  assign interconnect_aximm_ddrmem3_M00_AXI_rready = axi_mmu_0_M_AXI_RREADY;
  assign interconnect_aximm_ddrmem3_M00_AXI_wdata[127:0] = axi_mmu_0_M_AXI_WDATA;
  assign interconnect_aximm_ddrmem3_M00_AXI_wlast = axi_mmu_0_M_AXI_WLAST;
  assign interconnect_aximm_ddrmem3_M00_AXI_wstrb[15:0] = axi_mmu_0_M_AXI_WSTRB;
  assign interconnect_aximm_ddrmem3_M00_AXI_wvalid = axi_mmu_0_M_AXI_WVALID;
  assign interconnect_aximm_ddrmem4_M00_AXI_araddr[31:0] = axi_mmu_4_M_AXI_ARADDR[31:0];
  assign interconnect_aximm_ddrmem4_M00_AXI_arburst[1:0] = axi_mmu_4_M_AXI_ARBURST;
  assign interconnect_aximm_ddrmem4_M00_AXI_arcache[3:0] = axi_mmu_4_M_AXI_ARCACHE;
  assign interconnect_aximm_ddrmem4_M00_AXI_arid[5:0] = axi_mmu_4_M_AXI_ARID;
  assign interconnect_aximm_ddrmem4_M00_AXI_arlen[7:0] = axi_mmu_4_M_AXI_ARLEN;
  assign interconnect_aximm_ddrmem4_M00_AXI_arlock[0] = axi_mmu_4_M_AXI_ARLOCK;
  assign interconnect_aximm_ddrmem4_M00_AXI_arprot[2:0] = axi_mmu_4_M_AXI_ARPROT;
  assign interconnect_aximm_ddrmem4_M00_AXI_arqos[3:0] = axi_mmu_4_M_AXI_ARQOS;
  assign interconnect_aximm_ddrmem4_M00_AXI_arsize[2:0] = axi_mmu_4_M_AXI_ARSIZE;
  assign interconnect_aximm_ddrmem4_M00_AXI_arvalid = axi_mmu_4_M_AXI_ARVALID;
  assign interconnect_aximm_ddrmem4_M00_AXI_awaddr[31:0] = axi_mmu_4_M_AXI_AWADDR[31:0];
  assign interconnect_aximm_ddrmem4_M00_AXI_awburst[1:0] = axi_mmu_4_M_AXI_AWBURST;
  assign interconnect_aximm_ddrmem4_M00_AXI_awcache[3:0] = axi_mmu_4_M_AXI_AWCACHE;
  assign interconnect_aximm_ddrmem4_M00_AXI_awid[5:0] = axi_mmu_4_M_AXI_AWID;
  assign interconnect_aximm_ddrmem4_M00_AXI_awlen[7:0] = axi_mmu_4_M_AXI_AWLEN;
  assign interconnect_aximm_ddrmem4_M00_AXI_awlock[0] = axi_mmu_4_M_AXI_AWLOCK;
  assign interconnect_aximm_ddrmem4_M00_AXI_awprot[2:0] = axi_mmu_4_M_AXI_AWPROT;
  assign interconnect_aximm_ddrmem4_M00_AXI_awqos[3:0] = axi_mmu_4_M_AXI_AWQOS;
  assign interconnect_aximm_ddrmem4_M00_AXI_awsize[2:0] = axi_mmu_4_M_AXI_AWSIZE;
  assign interconnect_aximm_ddrmem4_M00_AXI_awvalid = axi_mmu_4_M_AXI_AWVALID;
  assign interconnect_aximm_ddrmem4_M00_AXI_bready = axi_mmu_4_M_AXI_BREADY;
  assign interconnect_aximm_ddrmem4_M00_AXI_rready = axi_mmu_4_M_AXI_RREADY;
  assign interconnect_aximm_ddrmem4_M00_AXI_wdata[127:0] = axi_mmu_4_M_AXI_WDATA;
  assign interconnect_aximm_ddrmem4_M00_AXI_wlast = axi_mmu_4_M_AXI_WLAST;
  assign interconnect_aximm_ddrmem4_M00_AXI_wstrb[15:0] = axi_mmu_4_M_AXI_WSTRB;
  assign interconnect_aximm_ddrmem4_M00_AXI_wvalid = axi_mmu_4_M_AXI_WVALID;
  assign interconnect_aximm_ddrmem5_M00_AXI_araddr[31:0] = axi_mmu_5_M_AXI_ARADDR;
  assign interconnect_aximm_ddrmem5_M00_AXI_arburst[1:0] = axi_mmu_5_M_AXI_ARBURST;
  assign interconnect_aximm_ddrmem5_M00_AXI_arcache[3:0] = axi_mmu_5_M_AXI_ARCACHE;
  assign interconnect_aximm_ddrmem5_M00_AXI_arid[5:0] = axi_mmu_5_M_AXI_ARID;
  assign interconnect_aximm_ddrmem5_M00_AXI_arlen[7:0] = axi_mmu_5_M_AXI_ARLEN;
  assign interconnect_aximm_ddrmem5_M00_AXI_arlock[0] = axi_mmu_5_M_AXI_ARLOCK;
  assign interconnect_aximm_ddrmem5_M00_AXI_arprot[2:0] = axi_mmu_5_M_AXI_ARPROT;
  assign interconnect_aximm_ddrmem5_M00_AXI_arqos[3:0] = axi_mmu_5_M_AXI_ARQOS;
  assign interconnect_aximm_ddrmem5_M00_AXI_arsize[2:0] = axi_mmu_5_M_AXI_ARSIZE;
  assign interconnect_aximm_ddrmem5_M00_AXI_arvalid = axi_mmu_5_M_AXI_ARVALID;
  assign interconnect_aximm_ddrmem5_M00_AXI_awaddr[31:0] = axi_mmu_5_M_AXI_AWADDR;
  assign interconnect_aximm_ddrmem5_M00_AXI_awburst[1:0] = axi_mmu_5_M_AXI_AWBURST;
  assign interconnect_aximm_ddrmem5_M00_AXI_awcache[3:0] = axi_mmu_5_M_AXI_AWCACHE;
  assign interconnect_aximm_ddrmem5_M00_AXI_awid[5:0] = axi_mmu_5_M_AXI_AWID;
  assign interconnect_aximm_ddrmem5_M00_AXI_awlen[7:0] = axi_mmu_5_M_AXI_AWLEN;
  assign interconnect_aximm_ddrmem5_M00_AXI_awlock[0] = axi_mmu_5_M_AXI_AWLOCK;
  assign interconnect_aximm_ddrmem5_M00_AXI_awprot[2:0] = axi_mmu_5_M_AXI_AWPROT;
  assign interconnect_aximm_ddrmem5_M00_AXI_awqos[3:0] = axi_mmu_5_M_AXI_AWQOS;
  assign interconnect_aximm_ddrmem5_M00_AXI_awsize[2:0] = axi_mmu_5_M_AXI_AWSIZE;
  assign interconnect_aximm_ddrmem5_M00_AXI_awvalid = axi_mmu_5_M_AXI_AWVALID;
  assign interconnect_aximm_ddrmem5_M00_AXI_bready = axi_mmu_5_M_AXI_BREADY;
  assign interconnect_aximm_ddrmem5_M00_AXI_rready = axi_mmu_5_M_AXI_RREADY;
  assign interconnect_aximm_ddrmem5_M00_AXI_wdata[127:0] = axi_mmu_5_M_AXI_WDATA;
  assign interconnect_aximm_ddrmem5_M00_AXI_wlast = axi_mmu_5_M_AXI_WLAST;
  assign interconnect_aximm_ddrmem5_M00_AXI_wstrb[15:0] = axi_mmu_5_M_AXI_WSTRB;
  assign interconnect_aximm_ddrmem5_M00_AXI_wvalid = axi_mmu_5_M_AXI_WVALID;
  assign logic_reset_op_Res_1 = clkwiz_sysclks_locked;
  assign regslice_control_userpf_M_AXI_1_ARADDR = regslice_control_userpf_M_AXI_araddr[31:0];
  assign regslice_control_userpf_M_AXI_1_ARPROT = regslice_control_userpf_M_AXI_arprot[2:0];
  assign regslice_control_userpf_M_AXI_1_ARVALID = regslice_control_userpf_M_AXI_arvalid;
  assign regslice_control_userpf_M_AXI_1_AWADDR = regslice_control_userpf_M_AXI_awaddr[31:0];
  assign regslice_control_userpf_M_AXI_1_AWPROT = regslice_control_userpf_M_AXI_awprot[2:0];
  assign regslice_control_userpf_M_AXI_1_AWVALID = regslice_control_userpf_M_AXI_awvalid;
  assign regslice_control_userpf_M_AXI_1_BREADY = regslice_control_userpf_M_AXI_bready;
  assign regslice_control_userpf_M_AXI_1_RREADY = regslice_control_userpf_M_AXI_rready;
  assign regslice_control_userpf_M_AXI_1_WDATA = regslice_control_userpf_M_AXI_wdata[31:0];
  assign regslice_control_userpf_M_AXI_1_WSTRB = regslice_control_userpf_M_AXI_wstrb[3:0];
  assign regslice_control_userpf_M_AXI_1_WVALID = regslice_control_userpf_M_AXI_wvalid;
  assign regslice_control_userpf_M_AXI_arready = regslice_control_userpf_M_AXI_1_ARREADY;
  assign regslice_control_userpf_M_AXI_awready = regslice_control_userpf_M_AXI_1_AWREADY;
  assign regslice_control_userpf_M_AXI_bresp[1:0] = regslice_control_userpf_M_AXI_1_BRESP;
  assign regslice_control_userpf_M_AXI_bvalid = regslice_control_userpf_M_AXI_1_BVALID;
  assign regslice_control_userpf_M_AXI_rdata[31:0] = regslice_control_userpf_M_AXI_1_RDATA;
  assign regslice_control_userpf_M_AXI_rresp[1:0] = regslice_control_userpf_M_AXI_1_RRESP;
  assign regslice_control_userpf_M_AXI_rvalid = regslice_control_userpf_M_AXI_1_RVALID;
  assign regslice_control_userpf_M_AXI_wready = regslice_control_userpf_M_AXI_1_WREADY;
  assign regslice_data_hpm0fpd_M_AXI1_1_ARADDR = regslice_data_hpm0fpd_M_AXI1_araddr[31:0];
  assign regslice_data_hpm0fpd_M_AXI1_1_ARBURST = regslice_data_hpm0fpd_M_AXI1_arburst[1:0];
  assign regslice_data_hpm0fpd_M_AXI1_1_ARCACHE = regslice_data_hpm0fpd_M_AXI1_arcache[3:0];
  assign regslice_data_hpm0fpd_M_AXI1_1_ARID = regslice_data_hpm0fpd_M_AXI1_arid[15:0];
  assign regslice_data_hpm0fpd_M_AXI1_1_ARLEN = regslice_data_hpm0fpd_M_AXI1_arlen[7:0];
  assign regslice_data_hpm0fpd_M_AXI1_1_ARLOCK = regslice_data_hpm0fpd_M_AXI1_arlock[0];
  assign regslice_data_hpm0fpd_M_AXI1_1_ARPROT = regslice_data_hpm0fpd_M_AXI1_arprot[2:0];
  assign regslice_data_hpm0fpd_M_AXI1_1_ARQOS = regslice_data_hpm0fpd_M_AXI1_arqos[3:0];
  assign regslice_data_hpm0fpd_M_AXI1_1_ARREGION = regslice_data_hpm0fpd_M_AXI1_arregion[3:0];
  assign regslice_data_hpm0fpd_M_AXI1_1_ARSIZE = regslice_data_hpm0fpd_M_AXI1_arsize[2:0];
  assign regslice_data_hpm0fpd_M_AXI1_1_ARVALID = regslice_data_hpm0fpd_M_AXI1_arvalid;
  assign regslice_data_hpm0fpd_M_AXI1_1_AWADDR = regslice_data_hpm0fpd_M_AXI1_awaddr[31:0];
  assign regslice_data_hpm0fpd_M_AXI1_1_AWBURST = regslice_data_hpm0fpd_M_AXI1_awburst[1:0];
  assign regslice_data_hpm0fpd_M_AXI1_1_AWCACHE = regslice_data_hpm0fpd_M_AXI1_awcache[3:0];
  assign regslice_data_hpm0fpd_M_AXI1_1_AWID = regslice_data_hpm0fpd_M_AXI1_awid[15:0];
  assign regslice_data_hpm0fpd_M_AXI1_1_AWLEN = regslice_data_hpm0fpd_M_AXI1_awlen[7:0];
  assign regslice_data_hpm0fpd_M_AXI1_1_AWLOCK = regslice_data_hpm0fpd_M_AXI1_awlock[0];
  assign regslice_data_hpm0fpd_M_AXI1_1_AWPROT = regslice_data_hpm0fpd_M_AXI1_awprot[2:0];
  assign regslice_data_hpm0fpd_M_AXI1_1_AWQOS = regslice_data_hpm0fpd_M_AXI1_awqos[3:0];
  assign regslice_data_hpm0fpd_M_AXI1_1_AWREGION = regslice_data_hpm0fpd_M_AXI1_awregion[3:0];
  assign regslice_data_hpm0fpd_M_AXI1_1_AWSIZE = regslice_data_hpm0fpd_M_AXI1_awsize[2:0];
  assign regslice_data_hpm0fpd_M_AXI1_1_AWVALID = regslice_data_hpm0fpd_M_AXI1_awvalid;
  assign regslice_data_hpm0fpd_M_AXI1_1_BREADY = regslice_data_hpm0fpd_M_AXI1_bready;
  assign regslice_data_hpm0fpd_M_AXI1_1_RREADY = regslice_data_hpm0fpd_M_AXI1_rready;
  assign regslice_data_hpm0fpd_M_AXI1_1_WDATA = regslice_data_hpm0fpd_M_AXI1_wdata[127:0];
  assign regslice_data_hpm0fpd_M_AXI1_1_WLAST = regslice_data_hpm0fpd_M_AXI1_wlast;
  assign regslice_data_hpm0fpd_M_AXI1_1_WSTRB = regslice_data_hpm0fpd_M_AXI1_wstrb[15:0];
  assign regslice_data_hpm0fpd_M_AXI1_1_WVALID = regslice_data_hpm0fpd_M_AXI1_wvalid;
  assign regslice_data_hpm0fpd_M_AXI1_arready = regslice_data_hpm0fpd_M_AXI1_1_ARREADY;
  assign regslice_data_hpm0fpd_M_AXI1_awready = regslice_data_hpm0fpd_M_AXI1_1_AWREADY;
  assign regslice_data_hpm0fpd_M_AXI1_bid[15:0] = regslice_data_hpm0fpd_M_AXI1_1_BID;
  assign regslice_data_hpm0fpd_M_AXI1_bresp[1:0] = regslice_data_hpm0fpd_M_AXI1_1_BRESP;
  assign regslice_data_hpm0fpd_M_AXI1_bvalid = regslice_data_hpm0fpd_M_AXI1_1_BVALID;
  assign regslice_data_hpm0fpd_M_AXI1_rdata[127:0] = regslice_data_hpm0fpd_M_AXI1_1_RDATA;
  assign regslice_data_hpm0fpd_M_AXI1_rid[15:0] = regslice_data_hpm0fpd_M_AXI1_1_RID;
  assign regslice_data_hpm0fpd_M_AXI1_rlast = regslice_data_hpm0fpd_M_AXI1_1_RLAST;
  assign regslice_data_hpm0fpd_M_AXI1_rresp[1:0] = regslice_data_hpm0fpd_M_AXI1_1_RRESP;
  assign regslice_data_hpm0fpd_M_AXI1_rvalid = regslice_data_hpm0fpd_M_AXI1_1_RVALID;
  assign regslice_data_hpm0fpd_M_AXI1_wready = regslice_data_hpm0fpd_M_AXI1_1_WREADY;
  assign reset_1 = reset;
  assign runtest_1 = runtest;
  assign sel_1 = sel;
  assign shift_1 = shift;
  assign slowest_sync_clk_1 = clkwiz_sysclks_clk_out2;
  assign slowest_sync_clk_3 = clkwiz_kernel_clk_out1;
  assign tck_1 = tck;
  assign tdi_1 = tdi;
  assign tdo = debug_bridge_xsdbm_S_BSCAN_tdo;
  assign tms_1 = tms;
  assign update_1 = update;
  assign xlconcat_interrupt_dout[31:0] = interrupt_concat_xlconcat_interrupt_dout;
  pfm_dynamic_axi_gpio_null_0 axi_gpio_null
       (.gpio_io_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aclk(slowest_sync_clk_1),
        .s_axi_araddr(interconnect_axilite_user_M00_AXI_ARADDR),
        .s_axi_aresetn(ARESETN_1),
        .s_axi_arready(interconnect_axilite_user_M00_AXI_ARREADY),
        .s_axi_arvalid(interconnect_axilite_user_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect_axilite_user_M00_AXI_AWADDR),
        .s_axi_awready(interconnect_axilite_user_M00_AXI_AWREADY),
        .s_axi_awvalid(interconnect_axilite_user_M00_AXI_AWVALID),
        .s_axi_bready(interconnect_axilite_user_M00_AXI_BREADY),
        .s_axi_bresp(interconnect_axilite_user_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect_axilite_user_M00_AXI_BVALID),
        .s_axi_rdata(interconnect_axilite_user_M00_AXI_RDATA),
        .s_axi_rready(interconnect_axilite_user_M00_AXI_RREADY),
        .s_axi_rresp(interconnect_axilite_user_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect_axilite_user_M00_AXI_RVALID),
        .s_axi_wdata(interconnect_axilite_user_M00_AXI_WDATA),
        .s_axi_wready(interconnect_axilite_user_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect_axilite_user_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect_axilite_user_M00_AXI_WVALID));
  pfm_dynamic_axi_interconnect_0_0 axi_interconnect_0
       (.ACLK(M01_ACLK_1),
        .ARESETN(reset_controllers_interconnect_aresetn),
        .M00_ACLK(M01_ACLK_1),
        .M00_ARESETN(reset_controllers_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI1_ARADDR),
        .M00_AXI_arburst(axi_interconnect_0_M00_AXI1_ARBURST),
        .M00_AXI_arcache(axi_interconnect_0_M00_AXI1_ARCACHE),
        .M00_AXI_arlen(axi_interconnect_0_M00_AXI1_ARLEN),
        .M00_AXI_arlock(axi_interconnect_0_M00_AXI1_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI1_ARPROT),
        .M00_AXI_arqos(axi_interconnect_0_M00_AXI1_ARQOS),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI1_ARREADY),
        .M00_AXI_arsize(axi_interconnect_0_M00_AXI1_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI1_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI1_AWADDR),
        .M00_AXI_awburst(axi_interconnect_0_M00_AXI1_AWBURST),
        .M00_AXI_awcache(axi_interconnect_0_M00_AXI1_AWCACHE),
        .M00_AXI_awlen(axi_interconnect_0_M00_AXI1_AWLEN),
        .M00_AXI_awlock(axi_interconnect_0_M00_AXI1_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI1_AWPROT),
        .M00_AXI_awqos(axi_interconnect_0_M00_AXI1_AWQOS),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI1_AWREADY),
        .M00_AXI_awsize(axi_interconnect_0_M00_AXI1_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI1_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI1_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI1_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI1_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI1_RDATA),
        .M00_AXI_rlast(axi_interconnect_0_M00_AXI1_RLAST),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI1_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI1_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI1_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI1_WDATA),
        .M00_AXI_wlast(axi_interconnect_0_M00_AXI1_WLAST),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI1_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI1_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI1_WVALID),
        .S00_ACLK(M01_ACLK_1),
        .S00_ARESETN(reset_controllers_interconnect_aresetn),
        .S00_AXI_araddr(axi_vip_4_M_AXI_ARADDR),
        .S00_AXI_arburst(axi_vip_4_M_AXI_ARBURST),
        .S00_AXI_arcache(axi_vip_4_M_AXI_ARCACHE),
        .S00_AXI_arlen(axi_vip_4_M_AXI_ARLEN),
        .S00_AXI_arlock(axi_vip_4_M_AXI_ARLOCK),
        .S00_AXI_arprot(axi_vip_4_M_AXI_ARPROT),
        .S00_AXI_arqos(axi_vip_4_M_AXI_ARQOS),
        .S00_AXI_arready(axi_vip_4_M_AXI_ARREADY),
        .S00_AXI_arregion(axi_vip_4_M_AXI_ARREGION),
        .S00_AXI_arsize(axi_vip_4_M_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_vip_4_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_vip_4_M_AXI_AWADDR),
        .S00_AXI_awburst(axi_vip_4_M_AXI_AWBURST),
        .S00_AXI_awcache(axi_vip_4_M_AXI_AWCACHE),
        .S00_AXI_awlen(axi_vip_4_M_AXI_AWLEN),
        .S00_AXI_awlock(axi_vip_4_M_AXI_AWLOCK),
        .S00_AXI_awprot(axi_vip_4_M_AXI_AWPROT),
        .S00_AXI_awqos(axi_vip_4_M_AXI_AWQOS),
        .S00_AXI_awready(axi_vip_4_M_AXI_AWREADY),
        .S00_AXI_awregion(axi_vip_4_M_AXI_AWREGION),
        .S00_AXI_awsize(axi_vip_4_M_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_vip_4_M_AXI_AWVALID),
        .S00_AXI_bready(axi_vip_4_M_AXI_BREADY),
        .S00_AXI_bresp(axi_vip_4_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_vip_4_M_AXI_BVALID),
        .S00_AXI_rdata(axi_vip_4_M_AXI_RDATA),
        .S00_AXI_rlast(axi_vip_4_M_AXI_RLAST),
        .S00_AXI_rready(axi_vip_4_M_AXI_RREADY),
        .S00_AXI_rresp(axi_vip_4_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_vip_4_M_AXI_RVALID),
        .S00_AXI_wdata(axi_vip_4_M_AXI_WDATA),
        .S00_AXI_wlast(axi_vip_4_M_AXI_WLAST),
        .S00_AXI_wready(axi_vip_4_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_vip_4_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_vip_4_M_AXI_WVALID),
        .S01_ACLK(slowest_sync_clk_3),
        .S01_ARESETN(reset_controllers_peripheral_aresetn),
        .S01_AXI_awaddr(digitcaps_accel_1_m_axi_gmem2_AWADDR),
        .S01_AXI_awburst(digitcaps_accel_1_m_axi_gmem2_AWBURST),
        .S01_AXI_awcache(digitcaps_accel_1_m_axi_gmem2_AWCACHE),
        .S01_AXI_awlen(digitcaps_accel_1_m_axi_gmem2_AWLEN),
        .S01_AXI_awlock(digitcaps_accel_1_m_axi_gmem2_AWLOCK),
        .S01_AXI_awprot(digitcaps_accel_1_m_axi_gmem2_AWPROT),
        .S01_AXI_awqos(digitcaps_accel_1_m_axi_gmem2_AWQOS),
        .S01_AXI_awready(digitcaps_accel_1_m_axi_gmem2_AWREADY),
        .S01_AXI_awregion(digitcaps_accel_1_m_axi_gmem2_AWREGION),
        .S01_AXI_awsize(digitcaps_accel_1_m_axi_gmem2_AWSIZE),
        .S01_AXI_awvalid(digitcaps_accel_1_m_axi_gmem2_AWVALID),
        .S01_AXI_bready(digitcaps_accel_1_m_axi_gmem2_BREADY),
        .S01_AXI_bresp(digitcaps_accel_1_m_axi_gmem2_BRESP),
        .S01_AXI_bvalid(digitcaps_accel_1_m_axi_gmem2_BVALID),
        .S01_AXI_wdata(digitcaps_accel_1_m_axi_gmem2_WDATA),
        .S01_AXI_wlast(digitcaps_accel_1_m_axi_gmem2_WLAST),
        .S01_AXI_wready(digitcaps_accel_1_m_axi_gmem2_WREADY),
        .S01_AXI_wstrb(digitcaps_accel_1_m_axi_gmem2_WSTRB),
        .S01_AXI_wvalid(digitcaps_accel_1_m_axi_gmem2_WVALID));
  pfm_dynamic_axi_interconnect_1_0 axi_interconnect_1
       (.ACLK(M01_ACLK_1),
        .ARESETN(reset_controllers_interconnect_aresetn),
        .M00_ACLK(M01_ACLK_1),
        .M00_ARESETN(reset_controllers_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_interconnect_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_1_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_interconnect_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_interconnect_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_1_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_interconnect_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_1_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_interconnect_1_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_1_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_1_M00_AXI_WVALID),
        .S00_ACLK(M01_ACLK_1),
        .S00_ARESETN(reset_controllers_interconnect_aresetn),
        .S00_AXI_araddr(axi_vip_5_M_AXI_ARADDR),
        .S00_AXI_arburst(axi_vip_5_M_AXI_ARBURST),
        .S00_AXI_arcache(axi_vip_5_M_AXI_ARCACHE),
        .S00_AXI_arlen(axi_vip_5_M_AXI_ARLEN),
        .S00_AXI_arlock(axi_vip_5_M_AXI_ARLOCK),
        .S00_AXI_arprot(axi_vip_5_M_AXI_ARPROT),
        .S00_AXI_arqos(axi_vip_5_M_AXI_ARQOS),
        .S00_AXI_arready(axi_vip_5_M_AXI_ARREADY),
        .S00_AXI_arregion(axi_vip_5_M_AXI_ARREGION),
        .S00_AXI_arsize(axi_vip_5_M_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_vip_5_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_vip_5_M_AXI_AWADDR),
        .S00_AXI_awburst(axi_vip_5_M_AXI_AWBURST),
        .S00_AXI_awcache(axi_vip_5_M_AXI_AWCACHE),
        .S00_AXI_awlen(axi_vip_5_M_AXI_AWLEN),
        .S00_AXI_awlock(axi_vip_5_M_AXI_AWLOCK),
        .S00_AXI_awprot(axi_vip_5_M_AXI_AWPROT),
        .S00_AXI_awqos(axi_vip_5_M_AXI_AWQOS),
        .S00_AXI_awready(axi_vip_5_M_AXI_AWREADY),
        .S00_AXI_awregion(axi_vip_5_M_AXI_AWREGION),
        .S00_AXI_awsize(axi_vip_5_M_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_vip_5_M_AXI_AWVALID),
        .S00_AXI_bready(axi_vip_5_M_AXI_BREADY),
        .S00_AXI_bresp(axi_vip_5_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_vip_5_M_AXI_BVALID),
        .S00_AXI_rdata(axi_vip_5_M_AXI_RDATA),
        .S00_AXI_rlast(axi_vip_5_M_AXI_RLAST),
        .S00_AXI_rready(axi_vip_5_M_AXI_RREADY),
        .S00_AXI_rresp(axi_vip_5_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_vip_5_M_AXI_RVALID),
        .S00_AXI_wdata(axi_vip_5_M_AXI_WDATA),
        .S00_AXI_wlast(axi_vip_5_M_AXI_WLAST),
        .S00_AXI_wready(axi_vip_5_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_vip_5_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_vip_5_M_AXI_WVALID));
  (* DPA_TRACE_MASTER = "true" *) 
  pfm_dynamic_axi_interconnect_hpm0fpd_0 axi_interconnect_hpm0fpd
       (.ACLK(M01_ACLK_1),
        .ARESETN(reset_controllers_interconnect_aresetn),
        .M00_ACLK(M01_ACLK_1),
        .M00_ARESETN(reset_controllers_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_interconnect_0_M00_AXI_ARID),
        .M00_AXI_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arregion(axi_interconnect_0_M00_AXI_ARREGION),
        .M00_AXI_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_interconnect_0_M00_AXI_AWID),
        .M00_AXI_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awregion(axi_interconnect_0_M00_AXI_AWREGION),
        .M00_AXI_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_interconnect_0_M00_AXI_BID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rid(axi_interconnect_0_M00_AXI_RID),
        .M00_AXI_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .S00_ACLK(M01_ACLK_1),
        .S00_ARESETN(reset_controllers_interconnect_aresetn),
        .S00_AXI_araddr(axi_vip_1_M_AXI_ARADDR),
        .S00_AXI_arburst(axi_vip_1_M_AXI_ARBURST),
        .S00_AXI_arcache(axi_vip_1_M_AXI_ARCACHE),
        .S00_AXI_arid(axi_vip_1_M_AXI_ARID),
        .S00_AXI_arlen(axi_vip_1_M_AXI_ARLEN),
        .S00_AXI_arlock(axi_vip_1_M_AXI_ARLOCK),
        .S00_AXI_arprot(axi_vip_1_M_AXI_ARPROT),
        .S00_AXI_arqos(axi_vip_1_M_AXI_ARQOS),
        .S00_AXI_arready(axi_vip_1_M_AXI_ARREADY),
        .S00_AXI_arregion(axi_vip_1_M_AXI_ARREGION),
        .S00_AXI_arsize(axi_vip_1_M_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_vip_1_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_vip_1_M_AXI_AWADDR),
        .S00_AXI_awburst(axi_vip_1_M_AXI_AWBURST),
        .S00_AXI_awcache(axi_vip_1_M_AXI_AWCACHE),
        .S00_AXI_awid(axi_vip_1_M_AXI_AWID),
        .S00_AXI_awlen(axi_vip_1_M_AXI_AWLEN),
        .S00_AXI_awlock(axi_vip_1_M_AXI_AWLOCK),
        .S00_AXI_awprot(axi_vip_1_M_AXI_AWPROT),
        .S00_AXI_awqos(axi_vip_1_M_AXI_AWQOS),
        .S00_AXI_awready(axi_vip_1_M_AXI_AWREADY),
        .S00_AXI_awregion(axi_vip_1_M_AXI_AWREGION),
        .S00_AXI_awsize(axi_vip_1_M_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_vip_1_M_AXI_AWVALID),
        .S00_AXI_bid(axi_vip_1_M_AXI_BID),
        .S00_AXI_bready(axi_vip_1_M_AXI_BREADY),
        .S00_AXI_bresp(axi_vip_1_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_vip_1_M_AXI_BVALID),
        .S00_AXI_rdata(axi_vip_1_M_AXI_RDATA),
        .S00_AXI_rid(axi_vip_1_M_AXI_RID),
        .S00_AXI_rlast(axi_vip_1_M_AXI_RLAST),
        .S00_AXI_rready(axi_vip_1_M_AXI_RREADY),
        .S00_AXI_rresp(axi_vip_1_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_vip_1_M_AXI_RVALID),
        .S00_AXI_wdata(axi_vip_1_M_AXI_WDATA),
        .S00_AXI_wlast(axi_vip_1_M_AXI_WLAST),
        .S00_AXI_wready(axi_vip_1_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_vip_1_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_vip_1_M_AXI_WVALID));
  pfm_dynamic_axi_mmu_2_0 axi_mmu_2
       (.aclk(M01_ACLK_1),
        .aresetn(reset_controllers_interconnect_aresetn),
        .m_axi_araddr(axi_mmu_2_M_AXI_ARADDR),
        .m_axi_arburst(axi_mmu_2_M_AXI_ARBURST),
        .m_axi_arcache(axi_mmu_2_M_AXI_ARCACHE),
        .m_axi_arid(axi_mmu_2_M_AXI_ARID),
        .m_axi_arlen(axi_mmu_2_M_AXI_ARLEN),
        .m_axi_arlock(axi_mmu_2_M_AXI_ARLOCK),
        .m_axi_arprot(axi_mmu_2_M_AXI_ARPROT),
        .m_axi_arqos(axi_mmu_2_M_AXI_ARQOS),
        .m_axi_arready(axi_mmu_2_M_AXI_ARREADY),
        .m_axi_arsize(axi_mmu_2_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_mmu_2_M_AXI_ARVALID),
        .m_axi_awaddr(axi_mmu_2_M_AXI_AWADDR),
        .m_axi_awburst(axi_mmu_2_M_AXI_AWBURST),
        .m_axi_awcache(axi_mmu_2_M_AXI_AWCACHE),
        .m_axi_awid(axi_mmu_2_M_AXI_AWID),
        .m_axi_awlen(axi_mmu_2_M_AXI_AWLEN),
        .m_axi_awlock(axi_mmu_2_M_AXI_AWLOCK),
        .m_axi_awprot(axi_mmu_2_M_AXI_AWPROT),
        .m_axi_awqos(axi_mmu_2_M_AXI_AWQOS),
        .m_axi_awready(axi_mmu_2_M_AXI_AWREADY),
        .m_axi_awsize(axi_mmu_2_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_mmu_2_M_AXI_AWVALID),
        .m_axi_bid(axi_mmu_2_M_AXI_BID),
        .m_axi_bready(axi_mmu_2_M_AXI_BREADY),
        .m_axi_bresp(axi_mmu_2_M_AXI_BRESP),
        .m_axi_bvalid(axi_mmu_2_M_AXI_BVALID),
        .m_axi_rdata(axi_mmu_2_M_AXI_RDATA),
        .m_axi_rid(axi_mmu_2_M_AXI_RID),
        .m_axi_rlast(axi_mmu_2_M_AXI_RLAST),
        .m_axi_rready(axi_mmu_2_M_AXI_RREADY),
        .m_axi_rresp(axi_mmu_2_M_AXI_RRESP),
        .m_axi_rvalid(axi_mmu_2_M_AXI_RVALID),
        .m_axi_wdata(axi_mmu_2_M_AXI_WDATA),
        .m_axi_wlast(axi_mmu_2_M_AXI_WLAST),
        .m_axi_wready(axi_mmu_2_M_AXI_WREADY),
        .m_axi_wstrb(axi_mmu_2_M_AXI_WSTRB),
        .m_axi_wvalid(axi_mmu_2_M_AXI_WVALID),
        .s_axi_araddr(interconnect_axifull_1_user_slr1_M00_AXI_ARADDR),
        .s_axi_arburst(interconnect_axifull_1_user_slr1_M00_AXI_ARBURST),
        .s_axi_arcache(interconnect_axifull_1_user_slr1_M00_AXI_ARCACHE),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen(interconnect_axifull_1_user_slr1_M00_AXI_ARLEN),
        .s_axi_arlock(interconnect_axifull_1_user_slr1_M00_AXI_ARLOCK),
        .s_axi_arprot(interconnect_axifull_1_user_slr1_M00_AXI_ARPROT),
        .s_axi_arqos(interconnect_axifull_1_user_slr1_M00_AXI_ARQOS),
        .s_axi_arready(interconnect_axifull_1_user_slr1_M00_AXI_ARREADY),
        .s_axi_arsize(interconnect_axifull_1_user_slr1_M00_AXI_ARSIZE),
        .s_axi_arvalid(interconnect_axifull_1_user_slr1_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect_axifull_1_user_slr1_M00_AXI_AWADDR),
        .s_axi_awburst(interconnect_axifull_1_user_slr1_M00_AXI_AWBURST),
        .s_axi_awcache(interconnect_axifull_1_user_slr1_M00_AXI_AWCACHE),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen(interconnect_axifull_1_user_slr1_M00_AXI_AWLEN),
        .s_axi_awlock(interconnect_axifull_1_user_slr1_M00_AXI_AWLOCK),
        .s_axi_awprot(interconnect_axifull_1_user_slr1_M00_AXI_AWPROT),
        .s_axi_awqos(interconnect_axifull_1_user_slr1_M00_AXI_AWQOS),
        .s_axi_awready(interconnect_axifull_1_user_slr1_M00_AXI_AWREADY),
        .s_axi_awsize(interconnect_axifull_1_user_slr1_M00_AXI_AWSIZE),
        .s_axi_awvalid(interconnect_axifull_1_user_slr1_M00_AXI_AWVALID),
        .s_axi_bready(interconnect_axifull_1_user_slr1_M00_AXI_BREADY),
        .s_axi_bresp(interconnect_axifull_1_user_slr1_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect_axifull_1_user_slr1_M00_AXI_BVALID),
        .s_axi_rdata(interconnect_axifull_1_user_slr1_M00_AXI_RDATA),
        .s_axi_rlast(interconnect_axifull_1_user_slr1_M00_AXI_RLAST),
        .s_axi_rready(interconnect_axifull_1_user_slr1_M00_AXI_RREADY),
        .s_axi_rresp(interconnect_axifull_1_user_slr1_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect_axifull_1_user_slr1_M00_AXI_RVALID),
        .s_axi_wdata(interconnect_axifull_1_user_slr1_M00_AXI_WDATA),
        .s_axi_wlast(interconnect_axifull_1_user_slr1_M00_AXI_WLAST),
        .s_axi_wready(interconnect_axifull_1_user_slr1_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect_axifull_1_user_slr1_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect_axifull_1_user_slr1_M00_AXI_WVALID));
  pfm_dynamic_axi_mmu_3_0 axi_mmu_3
       (.aclk(M01_ACLK_1),
        .aresetn(reset_controllers_interconnect_aresetn),
        .m_axi_araddr(axi_mmu_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_mmu_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_mmu_0_M_AXI_ARCACHE),
        .m_axi_arid(axi_mmu_0_M_AXI_ARID),
        .m_axi_arlen(axi_mmu_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_mmu_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_mmu_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_mmu_0_M_AXI_ARQOS),
        .m_axi_arready(axi_mmu_0_M_AXI_ARREADY),
        .m_axi_arsize(axi_mmu_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_mmu_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_mmu_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_mmu_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_mmu_0_M_AXI_AWCACHE),
        .m_axi_awid(axi_mmu_0_M_AXI_AWID),
        .m_axi_awlen(axi_mmu_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_mmu_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_mmu_0_M_AXI_AWPROT),
        .m_axi_awqos(axi_mmu_0_M_AXI_AWQOS),
        .m_axi_awready(axi_mmu_0_M_AXI_AWREADY),
        .m_axi_awsize(axi_mmu_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_mmu_0_M_AXI_AWVALID),
        .m_axi_bid(axi_mmu_0_M_AXI_BID),
        .m_axi_bready(axi_mmu_0_M_AXI_BREADY),
        .m_axi_bresp(axi_mmu_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_mmu_0_M_AXI_BVALID),
        .m_axi_rdata(axi_mmu_0_M_AXI_RDATA),
        .m_axi_rid(axi_mmu_0_M_AXI_RID),
        .m_axi_rlast(axi_mmu_0_M_AXI_RLAST),
        .m_axi_rready(axi_mmu_0_M_AXI_RREADY),
        .m_axi_rresp(axi_mmu_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_mmu_0_M_AXI_RVALID),
        .m_axi_wdata(axi_mmu_0_M_AXI_WDATA),
        .m_axi_wlast(axi_mmu_0_M_AXI_WLAST),
        .m_axi_wready(axi_mmu_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_mmu_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_mmu_0_M_AXI_WVALID),
        .s_axi_araddr(interconnect_axifull_2_user_slr1_M00_AXI_ARADDR),
        .s_axi_arburst(interconnect_axifull_2_user_slr1_M00_AXI_ARBURST),
        .s_axi_arcache(interconnect_axifull_2_user_slr1_M00_AXI_ARCACHE),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen(interconnect_axifull_2_user_slr1_M00_AXI_ARLEN),
        .s_axi_arlock(interconnect_axifull_2_user_slr1_M00_AXI_ARLOCK),
        .s_axi_arprot(interconnect_axifull_2_user_slr1_M00_AXI_ARPROT),
        .s_axi_arqos(interconnect_axifull_2_user_slr1_M00_AXI_ARQOS),
        .s_axi_arready(interconnect_axifull_2_user_slr1_M00_AXI_ARREADY),
        .s_axi_arsize(interconnect_axifull_2_user_slr1_M00_AXI_ARSIZE),
        .s_axi_arvalid(interconnect_axifull_2_user_slr1_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect_axifull_2_user_slr1_M00_AXI_AWADDR),
        .s_axi_awburst(interconnect_axifull_2_user_slr1_M00_AXI_AWBURST),
        .s_axi_awcache(interconnect_axifull_2_user_slr1_M00_AXI_AWCACHE),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen(interconnect_axifull_2_user_slr1_M00_AXI_AWLEN),
        .s_axi_awlock(interconnect_axifull_2_user_slr1_M00_AXI_AWLOCK),
        .s_axi_awprot(interconnect_axifull_2_user_slr1_M00_AXI_AWPROT),
        .s_axi_awqos(interconnect_axifull_2_user_slr1_M00_AXI_AWQOS),
        .s_axi_awready(interconnect_axifull_2_user_slr1_M00_AXI_AWREADY),
        .s_axi_awsize(interconnect_axifull_2_user_slr1_M00_AXI_AWSIZE),
        .s_axi_awvalid(interconnect_axifull_2_user_slr1_M00_AXI_AWVALID),
        .s_axi_bready(interconnect_axifull_2_user_slr1_M00_AXI_BREADY),
        .s_axi_bresp(interconnect_axifull_2_user_slr1_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect_axifull_2_user_slr1_M00_AXI_BVALID),
        .s_axi_rdata(interconnect_axifull_2_user_slr1_M00_AXI_RDATA),
        .s_axi_rlast(interconnect_axifull_2_user_slr1_M00_AXI_RLAST),
        .s_axi_rready(interconnect_axifull_2_user_slr1_M00_AXI_RREADY),
        .s_axi_rresp(interconnect_axifull_2_user_slr1_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect_axifull_2_user_slr1_M00_AXI_RVALID),
        .s_axi_wdata(interconnect_axifull_2_user_slr1_M00_AXI_WDATA),
        .s_axi_wlast(interconnect_axifull_2_user_slr1_M00_AXI_WLAST),
        .s_axi_wready(interconnect_axifull_2_user_slr1_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect_axifull_2_user_slr1_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect_axifull_2_user_slr1_M00_AXI_WVALID));
  pfm_dynamic_axi_mmu_4_0 axi_mmu_4
       (.aclk(M01_ACLK_1),
        .aresetn(reset_controllers_interconnect_aresetn),
        .m_axi_araddr(axi_mmu_4_M_AXI_ARADDR),
        .m_axi_arburst(axi_mmu_4_M_AXI_ARBURST),
        .m_axi_arcache(axi_mmu_4_M_AXI_ARCACHE),
        .m_axi_arid(axi_mmu_4_M_AXI_ARID),
        .m_axi_arlen(axi_mmu_4_M_AXI_ARLEN),
        .m_axi_arlock(axi_mmu_4_M_AXI_ARLOCK),
        .m_axi_arprot(axi_mmu_4_M_AXI_ARPROT),
        .m_axi_arqos(axi_mmu_4_M_AXI_ARQOS),
        .m_axi_arready(axi_mmu_4_M_AXI_ARREADY),
        .m_axi_arsize(axi_mmu_4_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_mmu_4_M_AXI_ARVALID),
        .m_axi_awaddr(axi_mmu_4_M_AXI_AWADDR),
        .m_axi_awburst(axi_mmu_4_M_AXI_AWBURST),
        .m_axi_awcache(axi_mmu_4_M_AXI_AWCACHE),
        .m_axi_awid(axi_mmu_4_M_AXI_AWID),
        .m_axi_awlen(axi_mmu_4_M_AXI_AWLEN),
        .m_axi_awlock(axi_mmu_4_M_AXI_AWLOCK),
        .m_axi_awprot(axi_mmu_4_M_AXI_AWPROT),
        .m_axi_awqos(axi_mmu_4_M_AXI_AWQOS),
        .m_axi_awready(axi_mmu_4_M_AXI_AWREADY),
        .m_axi_awsize(axi_mmu_4_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_mmu_4_M_AXI_AWVALID),
        .m_axi_bid(axi_mmu_4_M_AXI_BID),
        .m_axi_bready(axi_mmu_4_M_AXI_BREADY),
        .m_axi_bresp(axi_mmu_4_M_AXI_BRESP),
        .m_axi_bvalid(axi_mmu_4_M_AXI_BVALID),
        .m_axi_rdata(axi_mmu_4_M_AXI_RDATA),
        .m_axi_rid(axi_mmu_4_M_AXI_RID),
        .m_axi_rlast(axi_mmu_4_M_AXI_RLAST),
        .m_axi_rready(axi_mmu_4_M_AXI_RREADY),
        .m_axi_rresp(axi_mmu_4_M_AXI_RRESP),
        .m_axi_rvalid(axi_mmu_4_M_AXI_RVALID),
        .m_axi_wdata(axi_mmu_4_M_AXI_WDATA),
        .m_axi_wlast(axi_mmu_4_M_AXI_WLAST),
        .m_axi_wready(axi_mmu_4_M_AXI_WREADY),
        .m_axi_wstrb(axi_mmu_4_M_AXI_WSTRB),
        .m_axi_wvalid(axi_mmu_4_M_AXI_WVALID),
        .s_axi_araddr(axi_interconnect_0_M00_AXI1_ARADDR),
        .s_axi_arburst(axi_interconnect_0_M00_AXI1_ARBURST),
        .s_axi_arcache(axi_interconnect_0_M00_AXI1_ARCACHE),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen(axi_interconnect_0_M00_AXI1_ARLEN),
        .s_axi_arlock(axi_interconnect_0_M00_AXI1_ARLOCK),
        .s_axi_arprot(axi_interconnect_0_M00_AXI1_ARPROT),
        .s_axi_arqos(axi_interconnect_0_M00_AXI1_ARQOS),
        .s_axi_arready(axi_interconnect_0_M00_AXI1_ARREADY),
        .s_axi_arsize(axi_interconnect_0_M00_AXI1_ARSIZE),
        .s_axi_arvalid(axi_interconnect_0_M00_AXI1_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M00_AXI1_AWADDR),
        .s_axi_awburst(axi_interconnect_0_M00_AXI1_AWBURST),
        .s_axi_awcache(axi_interconnect_0_M00_AXI1_AWCACHE),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen(axi_interconnect_0_M00_AXI1_AWLEN),
        .s_axi_awlock(axi_interconnect_0_M00_AXI1_AWLOCK),
        .s_axi_awprot(axi_interconnect_0_M00_AXI1_AWPROT),
        .s_axi_awqos(axi_interconnect_0_M00_AXI1_AWQOS),
        .s_axi_awready(axi_interconnect_0_M00_AXI1_AWREADY),
        .s_axi_awsize(axi_interconnect_0_M00_AXI1_AWSIZE),
        .s_axi_awvalid(axi_interconnect_0_M00_AXI1_AWVALID),
        .s_axi_bready(axi_interconnect_0_M00_AXI1_BREADY),
        .s_axi_bresp(axi_interconnect_0_M00_AXI1_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M00_AXI1_BVALID),
        .s_axi_rdata(axi_interconnect_0_M00_AXI1_RDATA),
        .s_axi_rlast(axi_interconnect_0_M00_AXI1_RLAST),
        .s_axi_rready(axi_interconnect_0_M00_AXI1_RREADY),
        .s_axi_rresp(axi_interconnect_0_M00_AXI1_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M00_AXI1_RVALID),
        .s_axi_wdata(axi_interconnect_0_M00_AXI1_WDATA),
        .s_axi_wlast(axi_interconnect_0_M00_AXI1_WLAST),
        .s_axi_wready(axi_interconnect_0_M00_AXI1_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M00_AXI1_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M00_AXI1_WVALID));
  pfm_dynamic_axi_mmu_5_0 axi_mmu_5
       (.aclk(M01_ACLK_1),
        .aresetn(reset_controllers_interconnect_aresetn),
        .m_axi_araddr(axi_mmu_5_M_AXI_ARADDR),
        .m_axi_arburst(axi_mmu_5_M_AXI_ARBURST),
        .m_axi_arcache(axi_mmu_5_M_AXI_ARCACHE),
        .m_axi_arid(axi_mmu_5_M_AXI_ARID),
        .m_axi_arlen(axi_mmu_5_M_AXI_ARLEN),
        .m_axi_arlock(axi_mmu_5_M_AXI_ARLOCK),
        .m_axi_arprot(axi_mmu_5_M_AXI_ARPROT),
        .m_axi_arqos(axi_mmu_5_M_AXI_ARQOS),
        .m_axi_arready(axi_mmu_5_M_AXI_ARREADY),
        .m_axi_arsize(axi_mmu_5_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_mmu_5_M_AXI_ARVALID),
        .m_axi_awaddr(axi_mmu_5_M_AXI_AWADDR),
        .m_axi_awburst(axi_mmu_5_M_AXI_AWBURST),
        .m_axi_awcache(axi_mmu_5_M_AXI_AWCACHE),
        .m_axi_awid(axi_mmu_5_M_AXI_AWID),
        .m_axi_awlen(axi_mmu_5_M_AXI_AWLEN),
        .m_axi_awlock(axi_mmu_5_M_AXI_AWLOCK),
        .m_axi_awprot(axi_mmu_5_M_AXI_AWPROT),
        .m_axi_awqos(axi_mmu_5_M_AXI_AWQOS),
        .m_axi_awready(axi_mmu_5_M_AXI_AWREADY),
        .m_axi_awsize(axi_mmu_5_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_mmu_5_M_AXI_AWVALID),
        .m_axi_bid(axi_mmu_5_M_AXI_BID),
        .m_axi_bready(axi_mmu_5_M_AXI_BREADY),
        .m_axi_bresp(axi_mmu_5_M_AXI_BRESP),
        .m_axi_bvalid(axi_mmu_5_M_AXI_BVALID),
        .m_axi_rdata(axi_mmu_5_M_AXI_RDATA),
        .m_axi_rid(axi_mmu_5_M_AXI_RID),
        .m_axi_rlast(axi_mmu_5_M_AXI_RLAST),
        .m_axi_rready(axi_mmu_5_M_AXI_RREADY),
        .m_axi_rresp(axi_mmu_5_M_AXI_RRESP),
        .m_axi_rvalid(axi_mmu_5_M_AXI_RVALID),
        .m_axi_wdata(axi_mmu_5_M_AXI_WDATA),
        .m_axi_wlast(axi_mmu_5_M_AXI_WLAST),
        .m_axi_wready(axi_mmu_5_M_AXI_WREADY),
        .m_axi_wstrb(axi_mmu_5_M_AXI_WSTRB),
        .m_axi_wvalid(axi_mmu_5_M_AXI_WVALID),
        .s_axi_araddr(axi_interconnect_1_M00_AXI_ARADDR),
        .s_axi_arburst(axi_interconnect_1_M00_AXI_ARBURST),
        .s_axi_arcache(axi_interconnect_1_M00_AXI_ARCACHE),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen(axi_interconnect_1_M00_AXI_ARLEN),
        .s_axi_arlock(axi_interconnect_1_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_interconnect_1_M00_AXI_ARPROT),
        .s_axi_arqos(axi_interconnect_1_M00_AXI_ARQOS),
        .s_axi_arready(axi_interconnect_1_M00_AXI_ARREADY),
        .s_axi_arsize(axi_interconnect_1_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_interconnect_1_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_1_M00_AXI_AWADDR),
        .s_axi_awburst(axi_interconnect_1_M00_AXI_AWBURST),
        .s_axi_awcache(axi_interconnect_1_M00_AXI_AWCACHE),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen(axi_interconnect_1_M00_AXI_AWLEN),
        .s_axi_awlock(axi_interconnect_1_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_interconnect_1_M00_AXI_AWPROT),
        .s_axi_awqos(axi_interconnect_1_M00_AXI_AWQOS),
        .s_axi_awready(axi_interconnect_1_M00_AXI_AWREADY),
        .s_axi_awsize(axi_interconnect_1_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_interconnect_1_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_1_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_1_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_1_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_1_M00_AXI_RDATA),
        .s_axi_rlast(axi_interconnect_1_M00_AXI_RLAST),
        .s_axi_rready(axi_interconnect_1_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_1_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_1_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_1_M00_AXI_WDATA),
        .s_axi_wlast(axi_interconnect_1_M00_AXI_WLAST),
        .s_axi_wready(axi_interconnect_1_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_1_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_1_M00_AXI_WVALID));
  pfm_dynamic_axi_register_slice_hpm0fpd_0 axi_register_slice_hpm0fpd
       (.aclk(M01_ACLK_1),
        .aresetn(reset_controllers_interconnect_aresetn),
        .m_axi_arready(1'b0),
        .m_axi_awready(1'b0),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_rvalid(1'b0),
        .m_axi_wready(1'b0),
        .s_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .s_axi_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .s_axi_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .s_axi_arid(axi_interconnect_0_M00_AXI_ARID),
        .s_axi_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .s_axi_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .s_axi_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .s_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_arregion(axi_interconnect_0_M00_AXI_ARREGION),
        .s_axi_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .s_axi_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .s_axi_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .s_axi_awid(axi_interconnect_0_M00_AXI_AWID),
        .s_axi_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .s_axi_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .s_axi_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .s_axi_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_awregion(axi_interconnect_0_M00_AXI_AWREGION),
        .s_axi_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_bid(axi_interconnect_0_M00_AXI_BID),
        .s_axi_bready(axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_rid(axi_interconnect_0_M00_AXI_RID),
        .s_axi_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .s_axi_rready(axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .s_axi_wready(axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M00_AXI_WVALID));
  pfm_dynamic_axi_vip_2_0 axi_vip_2
       (.aclk(M01_ACLK_1),
        .aresetn(reset_controllers_interconnect_aresetn),
        .m_axi_araddr(axi_vip_2_M_AXI_ARADDR),
        .m_axi_arburst(axi_vip_2_M_AXI_ARBURST),
        .m_axi_arcache(axi_vip_2_M_AXI_ARCACHE),
        .m_axi_arlen(axi_vip_2_M_AXI_ARLEN),
        .m_axi_arlock(axi_vip_2_M_AXI_ARLOCK),
        .m_axi_arprot(axi_vip_2_M_AXI_ARPROT),
        .m_axi_arqos(axi_vip_2_M_AXI_ARQOS),
        .m_axi_arready(axi_vip_2_M_AXI_ARREADY),
        .m_axi_arregion(axi_vip_2_M_AXI_ARREGION),
        .m_axi_arsize(axi_vip_2_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_vip_2_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_2_M_AXI_AWADDR),
        .m_axi_awburst(axi_vip_2_M_AXI_AWBURST),
        .m_axi_awcache(axi_vip_2_M_AXI_AWCACHE),
        .m_axi_awlen(axi_vip_2_M_AXI_AWLEN),
        .m_axi_awlock(axi_vip_2_M_AXI_AWLOCK),
        .m_axi_awprot(axi_vip_2_M_AXI_AWPROT),
        .m_axi_awqos(axi_vip_2_M_AXI_AWQOS),
        .m_axi_awready(axi_vip_2_M_AXI_AWREADY),
        .m_axi_awregion(axi_vip_2_M_AXI_AWREGION),
        .m_axi_awsize(axi_vip_2_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_vip_2_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_2_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_2_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_2_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_2_M_AXI_RDATA),
        .m_axi_rlast(axi_vip_2_M_AXI_RLAST),
        .m_axi_rready(axi_vip_2_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_2_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_2_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_2_M_AXI_WDATA),
        .m_axi_wlast(axi_vip_2_M_AXI_WLAST),
        .m_axi_wready(axi_vip_2_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_2_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_2_M_AXI_WVALID));
  pfm_dynamic_axi_vip_3_0 axi_vip_3
       (.aclk(M01_ACLK_1),
        .aresetn(reset_controllers_interconnect_aresetn),
        .m_axi_araddr(axi_vip_3_M_AXI_ARADDR),
        .m_axi_arburst(axi_vip_3_M_AXI_ARBURST),
        .m_axi_arcache(axi_vip_3_M_AXI_ARCACHE),
        .m_axi_arlen(axi_vip_3_M_AXI_ARLEN),
        .m_axi_arlock(axi_vip_3_M_AXI_ARLOCK),
        .m_axi_arprot(axi_vip_3_M_AXI_ARPROT),
        .m_axi_arqos(axi_vip_3_M_AXI_ARQOS),
        .m_axi_arready(axi_vip_3_M_AXI_ARREADY),
        .m_axi_arregion(axi_vip_3_M_AXI_ARREGION),
        .m_axi_arsize(axi_vip_3_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_vip_3_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_3_M_AXI_AWADDR),
        .m_axi_awburst(axi_vip_3_M_AXI_AWBURST),
        .m_axi_awcache(axi_vip_3_M_AXI_AWCACHE),
        .m_axi_awlen(axi_vip_3_M_AXI_AWLEN),
        .m_axi_awlock(axi_vip_3_M_AXI_AWLOCK),
        .m_axi_awprot(axi_vip_3_M_AXI_AWPROT),
        .m_axi_awqos(axi_vip_3_M_AXI_AWQOS),
        .m_axi_awready(axi_vip_3_M_AXI_AWREADY),
        .m_axi_awregion(axi_vip_3_M_AXI_AWREGION),
        .m_axi_awsize(axi_vip_3_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_vip_3_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_3_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_3_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_3_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_3_M_AXI_RDATA),
        .m_axi_rlast(axi_vip_3_M_AXI_RLAST),
        .m_axi_rready(axi_vip_3_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_3_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_3_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_3_M_AXI_WDATA),
        .m_axi_wlast(axi_vip_3_M_AXI_WLAST),
        .m_axi_wready(axi_vip_3_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_3_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_3_M_AXI_WVALID));
  pfm_dynamic_axi_vip_4_0 axi_vip_4
       (.aclk(M01_ACLK_1),
        .aresetn(reset_controllers_interconnect_aresetn),
        .m_axi_araddr(axi_vip_4_M_AXI_ARADDR),
        .m_axi_arburst(axi_vip_4_M_AXI_ARBURST),
        .m_axi_arcache(axi_vip_4_M_AXI_ARCACHE),
        .m_axi_arlen(axi_vip_4_M_AXI_ARLEN),
        .m_axi_arlock(axi_vip_4_M_AXI_ARLOCK),
        .m_axi_arprot(axi_vip_4_M_AXI_ARPROT),
        .m_axi_arqos(axi_vip_4_M_AXI_ARQOS),
        .m_axi_arready(axi_vip_4_M_AXI_ARREADY),
        .m_axi_arregion(axi_vip_4_M_AXI_ARREGION),
        .m_axi_arsize(axi_vip_4_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_vip_4_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_4_M_AXI_AWADDR),
        .m_axi_awburst(axi_vip_4_M_AXI_AWBURST),
        .m_axi_awcache(axi_vip_4_M_AXI_AWCACHE),
        .m_axi_awlen(axi_vip_4_M_AXI_AWLEN),
        .m_axi_awlock(axi_vip_4_M_AXI_AWLOCK),
        .m_axi_awprot(axi_vip_4_M_AXI_AWPROT),
        .m_axi_awqos(axi_vip_4_M_AXI_AWQOS),
        .m_axi_awready(axi_vip_4_M_AXI_AWREADY),
        .m_axi_awregion(axi_vip_4_M_AXI_AWREGION),
        .m_axi_awsize(axi_vip_4_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_vip_4_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_4_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_4_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_4_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_4_M_AXI_RDATA),
        .m_axi_rlast(axi_vip_4_M_AXI_RLAST),
        .m_axi_rready(axi_vip_4_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_4_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_4_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_4_M_AXI_WDATA),
        .m_axi_wlast(axi_vip_4_M_AXI_WLAST),
        .m_axi_wready(axi_vip_4_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_4_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_4_M_AXI_WVALID));
  pfm_dynamic_axi_vip_5_0 axi_vip_5
       (.aclk(M01_ACLK_1),
        .aresetn(reset_controllers_interconnect_aresetn),
        .m_axi_araddr(axi_vip_5_M_AXI_ARADDR),
        .m_axi_arburst(axi_vip_5_M_AXI_ARBURST),
        .m_axi_arcache(axi_vip_5_M_AXI_ARCACHE),
        .m_axi_arlen(axi_vip_5_M_AXI_ARLEN),
        .m_axi_arlock(axi_vip_5_M_AXI_ARLOCK),
        .m_axi_arprot(axi_vip_5_M_AXI_ARPROT),
        .m_axi_arqos(axi_vip_5_M_AXI_ARQOS),
        .m_axi_arready(axi_vip_5_M_AXI_ARREADY),
        .m_axi_arregion(axi_vip_5_M_AXI_ARREGION),
        .m_axi_arsize(axi_vip_5_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_vip_5_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_5_M_AXI_AWADDR),
        .m_axi_awburst(axi_vip_5_M_AXI_AWBURST),
        .m_axi_awcache(axi_vip_5_M_AXI_AWCACHE),
        .m_axi_awlen(axi_vip_5_M_AXI_AWLEN),
        .m_axi_awlock(axi_vip_5_M_AXI_AWLOCK),
        .m_axi_awprot(axi_vip_5_M_AXI_AWPROT),
        .m_axi_awqos(axi_vip_5_M_AXI_AWQOS),
        .m_axi_awready(axi_vip_5_M_AXI_AWREADY),
        .m_axi_awregion(axi_vip_5_M_AXI_AWREGION),
        .m_axi_awsize(axi_vip_5_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_vip_5_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_5_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_5_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_5_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_5_M_AXI_RDATA),
        .m_axi_rlast(axi_vip_5_M_AXI_RLAST),
        .m_axi_rready(axi_vip_5_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_5_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_5_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_5_M_AXI_WDATA),
        .m_axi_wlast(axi_vip_5_M_AXI_WLAST),
        .m_axi_wready(axi_vip_5_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_5_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_5_M_AXI_WVALID));
  pfm_dynamic_axi_vip_ctrl_userpf_0 axi_vip_ctrl_userpf
       (.aclk(slowest_sync_clk_1),
        .aresetn(expanded_resets_interconnect_aresetn1),
        .m_axi_araddr(axi_vip_ctrl_userpf_M_AXI_ARADDR),
        .m_axi_arprot(axi_vip_ctrl_userpf_M_AXI_ARPROT),
        .m_axi_arready(axi_vip_ctrl_userpf_M_AXI_ARREADY),
        .m_axi_arvalid(axi_vip_ctrl_userpf_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_ctrl_userpf_M_AXI_AWADDR),
        .m_axi_awprot(axi_vip_ctrl_userpf_M_AXI_AWPROT),
        .m_axi_awready(axi_vip_ctrl_userpf_M_AXI_AWREADY),
        .m_axi_awvalid(axi_vip_ctrl_userpf_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_ctrl_userpf_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_ctrl_userpf_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_ctrl_userpf_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_ctrl_userpf_M_AXI_RDATA),
        .m_axi_rready(axi_vip_ctrl_userpf_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_ctrl_userpf_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_ctrl_userpf_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_ctrl_userpf_M_AXI_WDATA),
        .m_axi_wready(axi_vip_ctrl_userpf_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_ctrl_userpf_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_ctrl_userpf_M_AXI_WVALID),
        .s_axi_araddr(regslice_control_userpf_M_AXI_1_ARADDR),
        .s_axi_arprot(regslice_control_userpf_M_AXI_1_ARPROT),
        .s_axi_arready(regslice_control_userpf_M_AXI_1_ARREADY),
        .s_axi_arvalid(regslice_control_userpf_M_AXI_1_ARVALID),
        .s_axi_awaddr(regslice_control_userpf_M_AXI_1_AWADDR),
        .s_axi_awprot(regslice_control_userpf_M_AXI_1_AWPROT),
        .s_axi_awready(regslice_control_userpf_M_AXI_1_AWREADY),
        .s_axi_awvalid(regslice_control_userpf_M_AXI_1_AWVALID),
        .s_axi_bready(regslice_control_userpf_M_AXI_1_BREADY),
        .s_axi_bresp(regslice_control_userpf_M_AXI_1_BRESP),
        .s_axi_bvalid(regslice_control_userpf_M_AXI_1_BVALID),
        .s_axi_rdata(regslice_control_userpf_M_AXI_1_RDATA),
        .s_axi_rready(regslice_control_userpf_M_AXI_1_RREADY),
        .s_axi_rresp(regslice_control_userpf_M_AXI_1_RRESP),
        .s_axi_rvalid(regslice_control_userpf_M_AXI_1_RVALID),
        .s_axi_wdata(regslice_control_userpf_M_AXI_1_WDATA),
        .s_axi_wready(regslice_control_userpf_M_AXI_1_WREADY),
        .s_axi_wstrb(regslice_control_userpf_M_AXI_1_WSTRB),
        .s_axi_wvalid(regslice_control_userpf_M_AXI_1_WVALID));
  pfm_dynamic_axi_vip_hpm0fpd_0 axi_vip_hpm0fpd
       (.aclk(M01_ACLK_1),
        .aresetn(reset_controllers_interconnect_aresetn),
        .m_axi_araddr(axi_vip_1_M_AXI_ARADDR),
        .m_axi_arburst(axi_vip_1_M_AXI_ARBURST),
        .m_axi_arcache(axi_vip_1_M_AXI_ARCACHE),
        .m_axi_arid(axi_vip_1_M_AXI_ARID),
        .m_axi_arlen(axi_vip_1_M_AXI_ARLEN),
        .m_axi_arlock(axi_vip_1_M_AXI_ARLOCK),
        .m_axi_arprot(axi_vip_1_M_AXI_ARPROT),
        .m_axi_arqos(axi_vip_1_M_AXI_ARQOS),
        .m_axi_arready(axi_vip_1_M_AXI_ARREADY),
        .m_axi_arregion(axi_vip_1_M_AXI_ARREGION),
        .m_axi_arsize(axi_vip_1_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_vip_1_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_1_M_AXI_AWADDR),
        .m_axi_awburst(axi_vip_1_M_AXI_AWBURST),
        .m_axi_awcache(axi_vip_1_M_AXI_AWCACHE),
        .m_axi_awid(axi_vip_1_M_AXI_AWID),
        .m_axi_awlen(axi_vip_1_M_AXI_AWLEN),
        .m_axi_awlock(axi_vip_1_M_AXI_AWLOCK),
        .m_axi_awprot(axi_vip_1_M_AXI_AWPROT),
        .m_axi_awqos(axi_vip_1_M_AXI_AWQOS),
        .m_axi_awready(axi_vip_1_M_AXI_AWREADY),
        .m_axi_awregion(axi_vip_1_M_AXI_AWREGION),
        .m_axi_awsize(axi_vip_1_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_vip_1_M_AXI_AWVALID),
        .m_axi_bid(axi_vip_1_M_AXI_BID),
        .m_axi_bready(axi_vip_1_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_1_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_1_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_1_M_AXI_RDATA),
        .m_axi_rid(axi_vip_1_M_AXI_RID),
        .m_axi_rlast(axi_vip_1_M_AXI_RLAST),
        .m_axi_rready(axi_vip_1_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_1_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_1_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_1_M_AXI_WDATA),
        .m_axi_wlast(axi_vip_1_M_AXI_WLAST),
        .m_axi_wready(axi_vip_1_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_1_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_1_M_AXI_WVALID),
        .s_axi_araddr(regslice_data_hpm0fpd_M_AXI1_1_ARADDR),
        .s_axi_arburst(regslice_data_hpm0fpd_M_AXI1_1_ARBURST),
        .s_axi_arcache(regslice_data_hpm0fpd_M_AXI1_1_ARCACHE),
        .s_axi_arid(regslice_data_hpm0fpd_M_AXI1_1_ARID),
        .s_axi_arlen(regslice_data_hpm0fpd_M_AXI1_1_ARLEN),
        .s_axi_arlock(regslice_data_hpm0fpd_M_AXI1_1_ARLOCK),
        .s_axi_arprot(regslice_data_hpm0fpd_M_AXI1_1_ARPROT),
        .s_axi_arqos(regslice_data_hpm0fpd_M_AXI1_1_ARQOS),
        .s_axi_arready(regslice_data_hpm0fpd_M_AXI1_1_ARREADY),
        .s_axi_arregion(regslice_data_hpm0fpd_M_AXI1_1_ARREGION),
        .s_axi_arsize(regslice_data_hpm0fpd_M_AXI1_1_ARSIZE),
        .s_axi_arvalid(regslice_data_hpm0fpd_M_AXI1_1_ARVALID),
        .s_axi_awaddr(regslice_data_hpm0fpd_M_AXI1_1_AWADDR),
        .s_axi_awburst(regslice_data_hpm0fpd_M_AXI1_1_AWBURST),
        .s_axi_awcache(regslice_data_hpm0fpd_M_AXI1_1_AWCACHE),
        .s_axi_awid(regslice_data_hpm0fpd_M_AXI1_1_AWID),
        .s_axi_awlen(regslice_data_hpm0fpd_M_AXI1_1_AWLEN),
        .s_axi_awlock(regslice_data_hpm0fpd_M_AXI1_1_AWLOCK),
        .s_axi_awprot(regslice_data_hpm0fpd_M_AXI1_1_AWPROT),
        .s_axi_awqos(regslice_data_hpm0fpd_M_AXI1_1_AWQOS),
        .s_axi_awready(regslice_data_hpm0fpd_M_AXI1_1_AWREADY),
        .s_axi_awregion(regslice_data_hpm0fpd_M_AXI1_1_AWREGION),
        .s_axi_awsize(regslice_data_hpm0fpd_M_AXI1_1_AWSIZE),
        .s_axi_awvalid(regslice_data_hpm0fpd_M_AXI1_1_AWVALID),
        .s_axi_bid(regslice_data_hpm0fpd_M_AXI1_1_BID),
        .s_axi_bready(regslice_data_hpm0fpd_M_AXI1_1_BREADY),
        .s_axi_bresp(regslice_data_hpm0fpd_M_AXI1_1_BRESP),
        .s_axi_bvalid(regslice_data_hpm0fpd_M_AXI1_1_BVALID),
        .s_axi_rdata(regslice_data_hpm0fpd_M_AXI1_1_RDATA),
        .s_axi_rid(regslice_data_hpm0fpd_M_AXI1_1_RID),
        .s_axi_rlast(regslice_data_hpm0fpd_M_AXI1_1_RLAST),
        .s_axi_rready(regslice_data_hpm0fpd_M_AXI1_1_RREADY),
        .s_axi_rresp(regslice_data_hpm0fpd_M_AXI1_1_RRESP),
        .s_axi_rvalid(regslice_data_hpm0fpd_M_AXI1_1_RVALID),
        .s_axi_wdata(regslice_data_hpm0fpd_M_AXI1_1_WDATA),
        .s_axi_wlast(regslice_data_hpm0fpd_M_AXI1_1_WLAST),
        .s_axi_wready(regslice_data_hpm0fpd_M_AXI1_1_WREADY),
        .s_axi_wstrb(regslice_data_hpm0fpd_M_AXI1_1_WSTRB),
        .s_axi_wvalid(regslice_data_hpm0fpd_M_AXI1_1_WVALID));
  pfm_dynamic_debug_bridge_xsdbm_0 debug_bridge_xsdbm
       (.S_BSCAN_bscanid_en(bscanid_en_1),
        .S_BSCAN_capture(capture_1),
        .S_BSCAN_drck(drck_1),
        .S_BSCAN_reset(reset_1),
        .S_BSCAN_runtest(runtest_1),
        .S_BSCAN_sel(sel_1),
        .S_BSCAN_shift(shift_1),
        .S_BSCAN_tck(tck_1),
        .S_BSCAN_tdi(tdi_1),
        .S_BSCAN_tdo(debug_bridge_xsdbm_S_BSCAN_tdo),
        .S_BSCAN_tms(tms_1),
        .S_BSCAN_update(update_1),
        .clk(slowest_sync_clk_1));
  (* \ap_clk.FREQ_HZ  = "150000000" *) 
  (* \ap_clk.FREQ_HZ_TOLERANCE  = "7500000" *) 
  pfm_dynamic_digitcaps_accel_1_0 digitcaps_accel_1
       (.ap_clk(slowest_sync_clk_3),
        .ap_rst_n(reset_controllers_peripheral_aresetn),
        .interrupt(digitcaps_accel_1_interrupt),
        .m_axi_gmem0_ARADDR(digitcaps_accel_1_m_axi_gmem0_ARADDR),
        .m_axi_gmem0_ARBURST(digitcaps_accel_1_m_axi_gmem0_ARBURST),
        .m_axi_gmem0_ARCACHE(digitcaps_accel_1_m_axi_gmem0_ARCACHE),
        .m_axi_gmem0_ARLEN(digitcaps_accel_1_m_axi_gmem0_ARLEN),
        .m_axi_gmem0_ARLOCK(digitcaps_accel_1_m_axi_gmem0_ARLOCK),
        .m_axi_gmem0_ARPROT(digitcaps_accel_1_m_axi_gmem0_ARPROT),
        .m_axi_gmem0_ARQOS(digitcaps_accel_1_m_axi_gmem0_ARQOS),
        .m_axi_gmem0_ARREADY(digitcaps_accel_1_m_axi_gmem0_ARREADY),
        .m_axi_gmem0_ARREGION(digitcaps_accel_1_m_axi_gmem0_ARREGION),
        .m_axi_gmem0_ARSIZE(digitcaps_accel_1_m_axi_gmem0_ARSIZE),
        .m_axi_gmem0_ARVALID(digitcaps_accel_1_m_axi_gmem0_ARVALID),
        .m_axi_gmem0_AWREADY(1'b0),
        .m_axi_gmem0_BRESP({1'b0,1'b0}),
        .m_axi_gmem0_BVALID(1'b0),
        .m_axi_gmem0_RDATA(digitcaps_accel_1_m_axi_gmem0_RDATA),
        .m_axi_gmem0_RLAST(digitcaps_accel_1_m_axi_gmem0_RLAST),
        .m_axi_gmem0_RREADY(digitcaps_accel_1_m_axi_gmem0_RREADY),
        .m_axi_gmem0_RRESP(digitcaps_accel_1_m_axi_gmem0_RRESP),
        .m_axi_gmem0_RVALID(digitcaps_accel_1_m_axi_gmem0_RVALID),
        .m_axi_gmem0_WREADY(1'b0),
        .m_axi_gmem1_ARADDR(digitcaps_accel_1_m_axi_gmem1_ARADDR),
        .m_axi_gmem1_ARBURST(digitcaps_accel_1_m_axi_gmem1_ARBURST),
        .m_axi_gmem1_ARCACHE(digitcaps_accel_1_m_axi_gmem1_ARCACHE),
        .m_axi_gmem1_ARLEN(digitcaps_accel_1_m_axi_gmem1_ARLEN),
        .m_axi_gmem1_ARLOCK(digitcaps_accel_1_m_axi_gmem1_ARLOCK),
        .m_axi_gmem1_ARPROT(digitcaps_accel_1_m_axi_gmem1_ARPROT),
        .m_axi_gmem1_ARQOS(digitcaps_accel_1_m_axi_gmem1_ARQOS),
        .m_axi_gmem1_ARREADY(digitcaps_accel_1_m_axi_gmem1_ARREADY),
        .m_axi_gmem1_ARREGION(digitcaps_accel_1_m_axi_gmem1_ARREGION),
        .m_axi_gmem1_ARSIZE(digitcaps_accel_1_m_axi_gmem1_ARSIZE),
        .m_axi_gmem1_ARVALID(digitcaps_accel_1_m_axi_gmem1_ARVALID),
        .m_axi_gmem1_AWREADY(1'b0),
        .m_axi_gmem1_BRESP({1'b0,1'b0}),
        .m_axi_gmem1_BVALID(1'b0),
        .m_axi_gmem1_RDATA(digitcaps_accel_1_m_axi_gmem1_RDATA),
        .m_axi_gmem1_RLAST(digitcaps_accel_1_m_axi_gmem1_RLAST),
        .m_axi_gmem1_RREADY(digitcaps_accel_1_m_axi_gmem1_RREADY),
        .m_axi_gmem1_RRESP(digitcaps_accel_1_m_axi_gmem1_RRESP),
        .m_axi_gmem1_RVALID(digitcaps_accel_1_m_axi_gmem1_RVALID),
        .m_axi_gmem1_WREADY(1'b0),
        .m_axi_gmem2_ARREADY(1'b0),
        .m_axi_gmem2_AWADDR(digitcaps_accel_1_m_axi_gmem2_AWADDR),
        .m_axi_gmem2_AWBURST(digitcaps_accel_1_m_axi_gmem2_AWBURST),
        .m_axi_gmem2_AWCACHE(digitcaps_accel_1_m_axi_gmem2_AWCACHE),
        .m_axi_gmem2_AWLEN(digitcaps_accel_1_m_axi_gmem2_AWLEN),
        .m_axi_gmem2_AWLOCK(digitcaps_accel_1_m_axi_gmem2_AWLOCK),
        .m_axi_gmem2_AWPROT(digitcaps_accel_1_m_axi_gmem2_AWPROT),
        .m_axi_gmem2_AWQOS(digitcaps_accel_1_m_axi_gmem2_AWQOS),
        .m_axi_gmem2_AWREADY(digitcaps_accel_1_m_axi_gmem2_AWREADY),
        .m_axi_gmem2_AWREGION(digitcaps_accel_1_m_axi_gmem2_AWREGION),
        .m_axi_gmem2_AWSIZE(digitcaps_accel_1_m_axi_gmem2_AWSIZE),
        .m_axi_gmem2_AWVALID(digitcaps_accel_1_m_axi_gmem2_AWVALID),
        .m_axi_gmem2_BREADY(digitcaps_accel_1_m_axi_gmem2_BREADY),
        .m_axi_gmem2_BRESP(digitcaps_accel_1_m_axi_gmem2_BRESP),
        .m_axi_gmem2_BVALID(digitcaps_accel_1_m_axi_gmem2_BVALID),
        .m_axi_gmem2_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_gmem2_RLAST(1'b0),
        .m_axi_gmem2_RRESP({1'b0,1'b0}),
        .m_axi_gmem2_RVALID(1'b0),
        .m_axi_gmem2_WDATA(digitcaps_accel_1_m_axi_gmem2_WDATA),
        .m_axi_gmem2_WLAST(digitcaps_accel_1_m_axi_gmem2_WLAST),
        .m_axi_gmem2_WREADY(digitcaps_accel_1_m_axi_gmem2_WREADY),
        .m_axi_gmem2_WSTRB(digitcaps_accel_1_m_axi_gmem2_WSTRB),
        .m_axi_gmem2_WVALID(digitcaps_accel_1_m_axi_gmem2_WVALID),
        .s_axi_control_ARADDR(interconnect_axilite_user_slr1_M01_AXI_ARADDR),
        .s_axi_control_ARREADY(interconnect_axilite_user_slr1_M01_AXI_ARREADY),
        .s_axi_control_ARVALID(interconnect_axilite_user_slr1_M01_AXI_ARVALID),
        .s_axi_control_AWADDR(interconnect_axilite_user_slr1_M01_AXI_AWADDR),
        .s_axi_control_AWREADY(interconnect_axilite_user_slr1_M01_AXI_AWREADY),
        .s_axi_control_AWVALID(interconnect_axilite_user_slr1_M01_AXI_AWVALID),
        .s_axi_control_BREADY(interconnect_axilite_user_slr1_M01_AXI_BREADY),
        .s_axi_control_BRESP(interconnect_axilite_user_slr1_M01_AXI_BRESP),
        .s_axi_control_BVALID(interconnect_axilite_user_slr1_M01_AXI_BVALID),
        .s_axi_control_RDATA(interconnect_axilite_user_slr1_M01_AXI_RDATA),
        .s_axi_control_RREADY(interconnect_axilite_user_slr1_M01_AXI_RREADY),
        .s_axi_control_RRESP(interconnect_axilite_user_slr1_M01_AXI_RRESP),
        .s_axi_control_RVALID(interconnect_axilite_user_slr1_M01_AXI_RVALID),
        .s_axi_control_WDATA(interconnect_axilite_user_slr1_M01_AXI_WDATA),
        .s_axi_control_WREADY(interconnect_axilite_user_slr1_M01_AXI_WREADY),
        .s_axi_control_WSTRB(interconnect_axilite_user_slr1_M01_AXI_WSTRB),
        .s_axi_control_WVALID(interconnect_axilite_user_slr1_M01_AXI_WVALID));
  pfm_dynamic_interconnect_axifull_1_user_slr1_0 interconnect_axifull_1_user_slr1
       (.ACLK(M01_ACLK_1),
        .ARESETN(reset_controllers_interconnect_aresetn),
        .M00_ACLK(M01_ACLK_1),
        .M00_ARESETN(reset_controllers_interconnect_aresetn),
        .M00_AXI_araddr(interconnect_axifull_1_user_slr1_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect_axifull_1_user_slr1_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect_axifull_1_user_slr1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect_axifull_1_user_slr1_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect_axifull_1_user_slr1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect_axifull_1_user_slr1_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect_axifull_1_user_slr1_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect_axifull_1_user_slr1_M00_AXI_ARREADY),
        .M00_AXI_arsize(interconnect_axifull_1_user_slr1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(interconnect_axifull_1_user_slr1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_axifull_1_user_slr1_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect_axifull_1_user_slr1_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect_axifull_1_user_slr1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect_axifull_1_user_slr1_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect_axifull_1_user_slr1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect_axifull_1_user_slr1_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect_axifull_1_user_slr1_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect_axifull_1_user_slr1_M00_AXI_AWREADY),
        .M00_AXI_awsize(interconnect_axifull_1_user_slr1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(interconnect_axifull_1_user_slr1_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_axifull_1_user_slr1_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_axifull_1_user_slr1_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_axifull_1_user_slr1_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_axifull_1_user_slr1_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect_axifull_1_user_slr1_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect_axifull_1_user_slr1_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_axifull_1_user_slr1_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_axifull_1_user_slr1_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_axifull_1_user_slr1_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect_axifull_1_user_slr1_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect_axifull_1_user_slr1_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_axifull_1_user_slr1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_axifull_1_user_slr1_M00_AXI_WVALID),
        .S00_ACLK(M01_ACLK_1),
        .S00_ARESETN(reset_controllers_interconnect_aresetn),
        .S00_AXI_araddr(axi_vip_2_M_AXI_ARADDR),
        .S00_AXI_arburst(axi_vip_2_M_AXI_ARBURST),
        .S00_AXI_arcache(axi_vip_2_M_AXI_ARCACHE),
        .S00_AXI_arlen(axi_vip_2_M_AXI_ARLEN),
        .S00_AXI_arlock(axi_vip_2_M_AXI_ARLOCK),
        .S00_AXI_arprot(axi_vip_2_M_AXI_ARPROT),
        .S00_AXI_arqos(axi_vip_2_M_AXI_ARQOS),
        .S00_AXI_arready(axi_vip_2_M_AXI_ARREADY),
        .S00_AXI_arregion(axi_vip_2_M_AXI_ARREGION),
        .S00_AXI_arsize(axi_vip_2_M_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_vip_2_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_vip_2_M_AXI_AWADDR),
        .S00_AXI_awburst(axi_vip_2_M_AXI_AWBURST),
        .S00_AXI_awcache(axi_vip_2_M_AXI_AWCACHE),
        .S00_AXI_awlen(axi_vip_2_M_AXI_AWLEN),
        .S00_AXI_awlock(axi_vip_2_M_AXI_AWLOCK),
        .S00_AXI_awprot(axi_vip_2_M_AXI_AWPROT),
        .S00_AXI_awqos(axi_vip_2_M_AXI_AWQOS),
        .S00_AXI_awready(axi_vip_2_M_AXI_AWREADY),
        .S00_AXI_awregion(axi_vip_2_M_AXI_AWREGION),
        .S00_AXI_awsize(axi_vip_2_M_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_vip_2_M_AXI_AWVALID),
        .S00_AXI_bready(axi_vip_2_M_AXI_BREADY),
        .S00_AXI_bresp(axi_vip_2_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_vip_2_M_AXI_BVALID),
        .S00_AXI_rdata(axi_vip_2_M_AXI_RDATA),
        .S00_AXI_rlast(axi_vip_2_M_AXI_RLAST),
        .S00_AXI_rready(axi_vip_2_M_AXI_RREADY),
        .S00_AXI_rresp(axi_vip_2_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_vip_2_M_AXI_RVALID),
        .S00_AXI_wdata(axi_vip_2_M_AXI_WDATA),
        .S00_AXI_wlast(axi_vip_2_M_AXI_WLAST),
        .S00_AXI_wready(axi_vip_2_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_vip_2_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_vip_2_M_AXI_WVALID));
  (* DPA_TRACE_SLAVE = "true" *) 
  pfm_dynamic_interconnect_axifull_2_user_slr1_0 interconnect_axifull_2_user_slr1
       (.ACLK(M01_ACLK_1),
        .ARESETN(reset_controllers_interconnect_aresetn),
        .M00_ACLK(M01_ACLK_1),
        .M00_ARESETN(reset_controllers_interconnect_aresetn),
        .M00_AXI_araddr(interconnect_axifull_2_user_slr1_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect_axifull_2_user_slr1_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect_axifull_2_user_slr1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect_axifull_2_user_slr1_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect_axifull_2_user_slr1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect_axifull_2_user_slr1_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect_axifull_2_user_slr1_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect_axifull_2_user_slr1_M00_AXI_ARREADY),
        .M00_AXI_arsize(interconnect_axifull_2_user_slr1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(interconnect_axifull_2_user_slr1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_axifull_2_user_slr1_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect_axifull_2_user_slr1_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect_axifull_2_user_slr1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect_axifull_2_user_slr1_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect_axifull_2_user_slr1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect_axifull_2_user_slr1_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect_axifull_2_user_slr1_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect_axifull_2_user_slr1_M00_AXI_AWREADY),
        .M00_AXI_awsize(interconnect_axifull_2_user_slr1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(interconnect_axifull_2_user_slr1_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_axifull_2_user_slr1_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_axifull_2_user_slr1_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_axifull_2_user_slr1_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_axifull_2_user_slr1_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect_axifull_2_user_slr1_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect_axifull_2_user_slr1_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_axifull_2_user_slr1_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_axifull_2_user_slr1_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_axifull_2_user_slr1_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect_axifull_2_user_slr1_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect_axifull_2_user_slr1_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_axifull_2_user_slr1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_axifull_2_user_slr1_M00_AXI_WVALID),
        .S00_ACLK(M01_ACLK_1),
        .S00_ARESETN(reset_controllers_interconnect_aresetn),
        .S00_AXI_araddr(axi_vip_3_M_AXI_ARADDR),
        .S00_AXI_arburst(axi_vip_3_M_AXI_ARBURST),
        .S00_AXI_arcache(axi_vip_3_M_AXI_ARCACHE),
        .S00_AXI_arlen(axi_vip_3_M_AXI_ARLEN),
        .S00_AXI_arlock(axi_vip_3_M_AXI_ARLOCK),
        .S00_AXI_arprot(axi_vip_3_M_AXI_ARPROT),
        .S00_AXI_arqos(axi_vip_3_M_AXI_ARQOS),
        .S00_AXI_arready(axi_vip_3_M_AXI_ARREADY),
        .S00_AXI_arregion(axi_vip_3_M_AXI_ARREGION),
        .S00_AXI_arsize(axi_vip_3_M_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_vip_3_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_vip_3_M_AXI_AWADDR),
        .S00_AXI_awburst(axi_vip_3_M_AXI_AWBURST),
        .S00_AXI_awcache(axi_vip_3_M_AXI_AWCACHE),
        .S00_AXI_awlen(axi_vip_3_M_AXI_AWLEN),
        .S00_AXI_awlock(axi_vip_3_M_AXI_AWLOCK),
        .S00_AXI_awprot(axi_vip_3_M_AXI_AWPROT),
        .S00_AXI_awqos(axi_vip_3_M_AXI_AWQOS),
        .S00_AXI_awready(axi_vip_3_M_AXI_AWREADY),
        .S00_AXI_awregion(axi_vip_3_M_AXI_AWREGION),
        .S00_AXI_awsize(axi_vip_3_M_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_vip_3_M_AXI_AWVALID),
        .S00_AXI_bready(axi_vip_3_M_AXI_BREADY),
        .S00_AXI_bresp(axi_vip_3_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_vip_3_M_AXI_BVALID),
        .S00_AXI_rdata(axi_vip_3_M_AXI_RDATA),
        .S00_AXI_rlast(axi_vip_3_M_AXI_RLAST),
        .S00_AXI_rready(axi_vip_3_M_AXI_RREADY),
        .S00_AXI_rresp(axi_vip_3_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_vip_3_M_AXI_RVALID),
        .S00_AXI_wdata(axi_vip_3_M_AXI_WDATA),
        .S00_AXI_wlast(axi_vip_3_M_AXI_WLAST),
        .S00_AXI_wready(axi_vip_3_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_vip_3_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_vip_3_M_AXI_WVALID),
        .S01_ACLK(slowest_sync_clk_3),
        .S01_ARESETN(reset_controllers_peripheral_aresetn),
        .S01_AXI_araddr(digitcaps_accel_1_m_axi_gmem0_ARADDR),
        .S01_AXI_arburst(digitcaps_accel_1_m_axi_gmem0_ARBURST),
        .S01_AXI_arcache(digitcaps_accel_1_m_axi_gmem0_ARCACHE),
        .S01_AXI_arlen(digitcaps_accel_1_m_axi_gmem0_ARLEN),
        .S01_AXI_arlock(digitcaps_accel_1_m_axi_gmem0_ARLOCK),
        .S01_AXI_arprot(digitcaps_accel_1_m_axi_gmem0_ARPROT),
        .S01_AXI_arqos(digitcaps_accel_1_m_axi_gmem0_ARQOS),
        .S01_AXI_arready(digitcaps_accel_1_m_axi_gmem0_ARREADY),
        .S01_AXI_arregion(digitcaps_accel_1_m_axi_gmem0_ARREGION),
        .S01_AXI_arsize(digitcaps_accel_1_m_axi_gmem0_ARSIZE),
        .S01_AXI_arvalid(digitcaps_accel_1_m_axi_gmem0_ARVALID),
        .S01_AXI_rdata(digitcaps_accel_1_m_axi_gmem0_RDATA),
        .S01_AXI_rlast(digitcaps_accel_1_m_axi_gmem0_RLAST),
        .S01_AXI_rready(digitcaps_accel_1_m_axi_gmem0_RREADY),
        .S01_AXI_rresp(digitcaps_accel_1_m_axi_gmem0_RRESP),
        .S01_AXI_rvalid(digitcaps_accel_1_m_axi_gmem0_RVALID),
        .S02_ACLK(slowest_sync_clk_3),
        .S02_ARESETN(reset_controllers_peripheral_aresetn),
        .S02_AXI_araddr(digitcaps_accel_1_m_axi_gmem1_ARADDR),
        .S02_AXI_arburst(digitcaps_accel_1_m_axi_gmem1_ARBURST),
        .S02_AXI_arcache(digitcaps_accel_1_m_axi_gmem1_ARCACHE),
        .S02_AXI_arlen(digitcaps_accel_1_m_axi_gmem1_ARLEN),
        .S02_AXI_arlock(digitcaps_accel_1_m_axi_gmem1_ARLOCK),
        .S02_AXI_arprot(digitcaps_accel_1_m_axi_gmem1_ARPROT),
        .S02_AXI_arqos(digitcaps_accel_1_m_axi_gmem1_ARQOS),
        .S02_AXI_arready(digitcaps_accel_1_m_axi_gmem1_ARREADY),
        .S02_AXI_arregion(digitcaps_accel_1_m_axi_gmem1_ARREGION),
        .S02_AXI_arsize(digitcaps_accel_1_m_axi_gmem1_ARSIZE),
        .S02_AXI_arvalid(digitcaps_accel_1_m_axi_gmem1_ARVALID),
        .S02_AXI_rdata(digitcaps_accel_1_m_axi_gmem1_RDATA),
        .S02_AXI_rlast(digitcaps_accel_1_m_axi_gmem1_RLAST),
        .S02_AXI_rready(digitcaps_accel_1_m_axi_gmem1_RREADY),
        .S02_AXI_rresp(digitcaps_accel_1_m_axi_gmem1_RRESP),
        .S02_AXI_rvalid(digitcaps_accel_1_m_axi_gmem1_RVALID));
  (* DPA_AXILITE_MASTER = "fallback" *) 
  pfm_dynamic_interconnect_axilite_user_slr1_0 interconnect_axilite_user_slr1
       (.ACLK(slowest_sync_clk_1),
        .ARESETN(ARESETN_1),
        .M00_ACLK(slowest_sync_clk_1),
        .M00_ARESETN(ARESETN_1),
        .M00_AXI_araddr(interconnect_axilite_user_M00_AXI_ARADDR),
        .M00_AXI_arready(interconnect_axilite_user_M00_AXI_ARREADY),
        .M00_AXI_arvalid(interconnect_axilite_user_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_axilite_user_M00_AXI_AWADDR),
        .M00_AXI_awready(interconnect_axilite_user_M00_AXI_AWREADY),
        .M00_AXI_awvalid(interconnect_axilite_user_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_axilite_user_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_axilite_user_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_axilite_user_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_axilite_user_M00_AXI_RDATA),
        .M00_AXI_rready(interconnect_axilite_user_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_axilite_user_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_axilite_user_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_axilite_user_M00_AXI_WDATA),
        .M00_AXI_wready(interconnect_axilite_user_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_axilite_user_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_axilite_user_M00_AXI_WVALID),
        .M01_ACLK(slowest_sync_clk_3),
        .M01_ARESETN(reset_controllers_peripheral_aresetn),
        .M01_AXI_araddr(interconnect_axilite_user_slr1_M01_AXI_ARADDR),
        .M01_AXI_arready(interconnect_axilite_user_slr1_M01_AXI_ARREADY),
        .M01_AXI_arvalid(interconnect_axilite_user_slr1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(interconnect_axilite_user_slr1_M01_AXI_AWADDR),
        .M01_AXI_awready(interconnect_axilite_user_slr1_M01_AXI_AWREADY),
        .M01_AXI_awvalid(interconnect_axilite_user_slr1_M01_AXI_AWVALID),
        .M01_AXI_bready(interconnect_axilite_user_slr1_M01_AXI_BREADY),
        .M01_AXI_bresp(interconnect_axilite_user_slr1_M01_AXI_BRESP),
        .M01_AXI_bvalid(interconnect_axilite_user_slr1_M01_AXI_BVALID),
        .M01_AXI_rdata(interconnect_axilite_user_slr1_M01_AXI_RDATA),
        .M01_AXI_rready(interconnect_axilite_user_slr1_M01_AXI_RREADY),
        .M01_AXI_rresp(interconnect_axilite_user_slr1_M01_AXI_RRESP),
        .M01_AXI_rvalid(interconnect_axilite_user_slr1_M01_AXI_RVALID),
        .M01_AXI_wdata(interconnect_axilite_user_slr1_M01_AXI_WDATA),
        .M01_AXI_wready(interconnect_axilite_user_slr1_M01_AXI_WREADY),
        .M01_AXI_wstrb(interconnect_axilite_user_slr1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(interconnect_axilite_user_slr1_M01_AXI_WVALID),
        .S00_ACLK(slowest_sync_clk_1),
        .S00_ARESETN(ARESETN_1),
        .S00_AXI_araddr(axi_vip_ctrl_userpf_M_AXI_ARADDR),
        .S00_AXI_arprot(axi_vip_ctrl_userpf_M_AXI_ARPROT),
        .S00_AXI_arready(axi_vip_ctrl_userpf_M_AXI_ARREADY),
        .S00_AXI_arvalid(axi_vip_ctrl_userpf_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_vip_ctrl_userpf_M_AXI_AWADDR),
        .S00_AXI_awprot(axi_vip_ctrl_userpf_M_AXI_AWPROT),
        .S00_AXI_awready(axi_vip_ctrl_userpf_M_AXI_AWREADY),
        .S00_AXI_awvalid(axi_vip_ctrl_userpf_M_AXI_AWVALID),
        .S00_AXI_bready(axi_vip_ctrl_userpf_M_AXI_BREADY),
        .S00_AXI_bresp(axi_vip_ctrl_userpf_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_vip_ctrl_userpf_M_AXI_BVALID),
        .S00_AXI_rdata(axi_vip_ctrl_userpf_M_AXI_RDATA),
        .S00_AXI_rready(axi_vip_ctrl_userpf_M_AXI_RREADY),
        .S00_AXI_rresp(axi_vip_ctrl_userpf_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_vip_ctrl_userpf_M_AXI_RVALID),
        .S00_AXI_wdata(axi_vip_ctrl_userpf_M_AXI_WDATA),
        .S00_AXI_wready(axi_vip_ctrl_userpf_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_vip_ctrl_userpf_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_vip_ctrl_userpf_M_AXI_WVALID));
  interrupt_concat_imp_1SXQM3I interrupt_concat
       (.In0(digitcaps_accel_1_interrupt),
        .xlconcat_interrupt_dout(interrupt_concat_xlconcat_interrupt_dout));
  reset_controllers_imp_UJLAET reset_controllers
       (.clkwiz_kernel2_clk_out1(M01_ACLK_1),
        .clkwiz_kernel2_locked(dcm_locked_3),
        .clkwiz_kernel3_clk_out(clkwiz_kernel3_clk_out_1),
        .clkwiz_kernel4_clk_out(clkwiz_kernel4_clk_out_1),
        .clkwiz_kernel5_clk_out(clkwiz_kernel5_clk_out_1),
        .clkwiz_kernel6_clk_out(clkwiz_kernel6_clk_out_1),
        .clkwiz_kernel_clk_out1(slowest_sync_clk_3),
        .clkwiz_kernel_locked(dcm_locked_1),
        .clkwiz_sysclks_clk_out2(slowest_sync_clk_1),
        .clkwiz_sysclks_locked(logic_reset_op_Res_1),
        .peripheral_aresetn(reset_controllers_peripheral_aresetn),
        .psreset_gate_pr_control_interconnect_aresetn(ARESETN_1),
        .psreset_gate_pr_control_peripheral_aresetn(expanded_resets_interconnect_aresetn1),
        .psreset_gate_pr_kernel2_interconnect_aresetn_0(reset_controllers_interconnect_aresetn),
        .slice_reset_kernel_pr_Dout(ext_reset_in_1));
endmodule

module pfm_dynamic_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awregion,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [63:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [63:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [127:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [127:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [15:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [127:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [127:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [15:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [63:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [7:0]S01_AXI_awlen;
  input [1:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [3:0]S01_AXI_awregion;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  input [511:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [63:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire axi_interconnect_0_ACLK_net;
  wire axi_interconnect_0_ARESETN_net;
  wire [31:0]axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARCACHE;
  wire [7:0]axi_interconnect_0_to_s00_couplers_ARLEN;
  wire [0:0]axi_interconnect_0_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARQOS;
  wire axi_interconnect_0_to_s00_couplers_ARREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARREGION;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARSIZE;
  wire axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWCACHE;
  wire [7:0]axi_interconnect_0_to_s00_couplers_AWLEN;
  wire [0:0]axi_interconnect_0_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWQOS;
  wire axi_interconnect_0_to_s00_couplers_AWREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWREGION;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWSIZE;
  wire axi_interconnect_0_to_s00_couplers_AWVALID;
  wire axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_BRESP;
  wire axi_interconnect_0_to_s00_couplers_BVALID;
  wire [127:0]axi_interconnect_0_to_s00_couplers_RDATA;
  wire axi_interconnect_0_to_s00_couplers_RLAST;
  wire axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_RRESP;
  wire axi_interconnect_0_to_s00_couplers_RVALID;
  wire [127:0]axi_interconnect_0_to_s00_couplers_WDATA;
  wire axi_interconnect_0_to_s00_couplers_WLAST;
  wire axi_interconnect_0_to_s00_couplers_WREADY;
  wire [15:0]axi_interconnect_0_to_s00_couplers_WSTRB;
  wire axi_interconnect_0_to_s00_couplers_WVALID;
  wire [63:0]axi_interconnect_0_to_s01_couplers_AWADDR;
  wire [1:0]axi_interconnect_0_to_s01_couplers_AWBURST;
  wire [3:0]axi_interconnect_0_to_s01_couplers_AWCACHE;
  wire [7:0]axi_interconnect_0_to_s01_couplers_AWLEN;
  wire [1:0]axi_interconnect_0_to_s01_couplers_AWLOCK;
  wire [2:0]axi_interconnect_0_to_s01_couplers_AWPROT;
  wire [3:0]axi_interconnect_0_to_s01_couplers_AWQOS;
  wire axi_interconnect_0_to_s01_couplers_AWREADY;
  wire [3:0]axi_interconnect_0_to_s01_couplers_AWREGION;
  wire [2:0]axi_interconnect_0_to_s01_couplers_AWSIZE;
  wire axi_interconnect_0_to_s01_couplers_AWVALID;
  wire axi_interconnect_0_to_s01_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s01_couplers_BRESP;
  wire axi_interconnect_0_to_s01_couplers_BVALID;
  wire [511:0]axi_interconnect_0_to_s01_couplers_WDATA;
  wire axi_interconnect_0_to_s01_couplers_WLAST;
  wire axi_interconnect_0_to_s01_couplers_WREADY;
  wire [63:0]axi_interconnect_0_to_s01_couplers_WSTRB;
  wire axi_interconnect_0_to_s01_couplers_WVALID;
  wire [63:0]m00_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_0_ARCACHE;
  wire [7:0]m00_couplers_to_axi_interconnect_0_ARLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_0_ARPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_0_ARQOS;
  wire m00_couplers_to_axi_interconnect_0_ARREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_0_ARSIZE;
  wire m00_couplers_to_axi_interconnect_0_ARVALID;
  wire [63:0]m00_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_0_AWCACHE;
  wire [7:0]m00_couplers_to_axi_interconnect_0_AWLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_0_AWPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_0_AWQOS;
  wire m00_couplers_to_axi_interconnect_0_AWREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_0_AWSIZE;
  wire m00_couplers_to_axi_interconnect_0_AWVALID;
  wire m00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_BRESP;
  wire m00_couplers_to_axi_interconnect_0_BVALID;
  wire [127:0]m00_couplers_to_axi_interconnect_0_RDATA;
  wire m00_couplers_to_axi_interconnect_0_RLAST;
  wire m00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_RRESP;
  wire m00_couplers_to_axi_interconnect_0_RVALID;
  wire [127:0]m00_couplers_to_axi_interconnect_0_WDATA;
  wire m00_couplers_to_axi_interconnect_0_WLAST;
  wire m00_couplers_to_axi_interconnect_0_WREADY;
  wire [15:0]m00_couplers_to_axi_interconnect_0_WSTRB;
  wire m00_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [511:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [511:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [63:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [63:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [511:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [63:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [0:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [0:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [511:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [511:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [63:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[63:0] = m00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_interconnect_0_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_interconnect_0_ARCACHE;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_interconnect_0_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_axi_interconnect_0_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_0_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_interconnect_0_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_interconnect_0_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[63:0] = m00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_interconnect_0_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_interconnect_0_AWCACHE;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_interconnect_0_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_axi_interconnect_0_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_0_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_interconnect_0_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_interconnect_0_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[127:0] = m00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_axi_interconnect_0_WLAST;
  assign M00_AXI_wstrb[15:0] = m00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[127:0] = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_interconnect_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_0_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_awready = axi_interconnect_0_to_s01_couplers_AWREADY;
  assign S01_AXI_bresp[1:0] = axi_interconnect_0_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = axi_interconnect_0_to_s01_couplers_BVALID;
  assign S01_AXI_wready = axi_interconnect_0_to_s01_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = ACLK;
  assign axi_interconnect_0_ARESETN_net = ARESETN;
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[127:0];
  assign axi_interconnect_0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[15:0];
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign axi_interconnect_0_to_s01_couplers_AWADDR = S01_AXI_awaddr[63:0];
  assign axi_interconnect_0_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign axi_interconnect_0_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign axi_interconnect_0_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign axi_interconnect_0_to_s01_couplers_AWLOCK = S01_AXI_awlock[1:0];
  assign axi_interconnect_0_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s01_couplers_AWQOS = S01_AXI_awqos[3:0];
  assign axi_interconnect_0_to_s01_couplers_AWREGION = S01_AXI_awregion[3:0];
  assign axi_interconnect_0_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign axi_interconnect_0_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign axi_interconnect_0_to_s01_couplers_BREADY = S01_AXI_bready;
  assign axi_interconnect_0_to_s01_couplers_WDATA = S01_AXI_wdata[511:0];
  assign axi_interconnect_0_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign axi_interconnect_0_to_s01_couplers_WSTRB = S01_AXI_wstrb[63:0];
  assign axi_interconnect_0_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[127:0];
  assign m00_couplers_to_axi_interconnect_0_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready;
  m00_couplers_imp_R2G0XH m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arlen(m00_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_interconnect_0_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awlen(m00_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_interconnect_0_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rlast(m00_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_139VRFP s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_0_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_0_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_0_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_0_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
  s01_couplers_imp_536K3F s01_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_awaddr(axi_interconnect_0_to_s01_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s01_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s01_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_0_to_s01_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s01_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_0_to_s01_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_0_to_s01_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_0_to_s01_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_0_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_to_s01_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_0_to_s01_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s01_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s01_couplers_BVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s01_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_0_to_s01_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s01_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s01_couplers_WVALID));
  pfm_dynamic_xbar_0 xbar
       (.aclk(axi_interconnect_0_ACLK_net),
        .aresetn(axi_interconnect_0_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({1'b0,1'b0,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({1'b0,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arsize({1'b1,1'b0,1'b1,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({1'b0,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0}),
        .s_axi_awlen({s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rready({1'b0,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module pfm_dynamic_axi_interconnect_1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [127:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [127:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [15:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [127:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [127:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [15:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_1_ACLK_net;
  wire axi_interconnect_1_ARESETN_net;
  wire [31:0]axi_interconnect_1_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_1_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_1_to_s00_couplers_ARCACHE;
  wire [7:0]axi_interconnect_1_to_s00_couplers_ARLEN;
  wire [0:0]axi_interconnect_1_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_1_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_1_to_s00_couplers_ARQOS;
  wire axi_interconnect_1_to_s00_couplers_ARREADY;
  wire [3:0]axi_interconnect_1_to_s00_couplers_ARREGION;
  wire [2:0]axi_interconnect_1_to_s00_couplers_ARSIZE;
  wire axi_interconnect_1_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_1_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_1_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_1_to_s00_couplers_AWCACHE;
  wire [7:0]axi_interconnect_1_to_s00_couplers_AWLEN;
  wire [0:0]axi_interconnect_1_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_1_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_1_to_s00_couplers_AWQOS;
  wire axi_interconnect_1_to_s00_couplers_AWREADY;
  wire [3:0]axi_interconnect_1_to_s00_couplers_AWREGION;
  wire [2:0]axi_interconnect_1_to_s00_couplers_AWSIZE;
  wire axi_interconnect_1_to_s00_couplers_AWVALID;
  wire axi_interconnect_1_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_1_to_s00_couplers_BRESP;
  wire axi_interconnect_1_to_s00_couplers_BVALID;
  wire [127:0]axi_interconnect_1_to_s00_couplers_RDATA;
  wire axi_interconnect_1_to_s00_couplers_RLAST;
  wire axi_interconnect_1_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_1_to_s00_couplers_RRESP;
  wire axi_interconnect_1_to_s00_couplers_RVALID;
  wire [127:0]axi_interconnect_1_to_s00_couplers_WDATA;
  wire axi_interconnect_1_to_s00_couplers_WLAST;
  wire axi_interconnect_1_to_s00_couplers_WREADY;
  wire [15:0]axi_interconnect_1_to_s00_couplers_WSTRB;
  wire axi_interconnect_1_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_1_ARADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_1_ARBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_1_ARCACHE;
  wire [7:0]s00_couplers_to_axi_interconnect_1_ARLEN;
  wire [0:0]s00_couplers_to_axi_interconnect_1_ARLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_1_ARPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_1_ARQOS;
  wire s00_couplers_to_axi_interconnect_1_ARREADY;
  wire [2:0]s00_couplers_to_axi_interconnect_1_ARSIZE;
  wire s00_couplers_to_axi_interconnect_1_ARVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_1_AWADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_1_AWBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_1_AWCACHE;
  wire [7:0]s00_couplers_to_axi_interconnect_1_AWLEN;
  wire [0:0]s00_couplers_to_axi_interconnect_1_AWLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_1_AWPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_1_AWQOS;
  wire s00_couplers_to_axi_interconnect_1_AWREADY;
  wire [2:0]s00_couplers_to_axi_interconnect_1_AWSIZE;
  wire s00_couplers_to_axi_interconnect_1_AWVALID;
  wire s00_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_1_BRESP;
  wire s00_couplers_to_axi_interconnect_1_BVALID;
  wire [127:0]s00_couplers_to_axi_interconnect_1_RDATA;
  wire s00_couplers_to_axi_interconnect_1_RLAST;
  wire s00_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_1_RRESP;
  wire s00_couplers_to_axi_interconnect_1_RVALID;
  wire [127:0]s00_couplers_to_axi_interconnect_1_WDATA;
  wire s00_couplers_to_axi_interconnect_1_WLAST;
  wire s00_couplers_to_axi_interconnect_1_WREADY;
  wire [15:0]s00_couplers_to_axi_interconnect_1_WSTRB;
  wire s00_couplers_to_axi_interconnect_1_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_axi_interconnect_1_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_axi_interconnect_1_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_axi_interconnect_1_ARCACHE;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_axi_interconnect_1_ARLEN;
  assign M00_AXI_arlock[0] = s00_couplers_to_axi_interconnect_1_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_interconnect_1_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_axi_interconnect_1_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_axi_interconnect_1_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_axi_interconnect_1_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_interconnect_1_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_interconnect_1_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_interconnect_1_AWCACHE;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_axi_interconnect_1_AWLEN;
  assign M00_AXI_awlock[0] = s00_couplers_to_axi_interconnect_1_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_interconnect_1_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_interconnect_1_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_interconnect_1_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_interconnect_1_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_interconnect_1_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_interconnect_1_RREADY;
  assign M00_AXI_wdata[127:0] = s00_couplers_to_axi_interconnect_1_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_axi_interconnect_1_WLAST;
  assign M00_AXI_wstrb[15:0] = s00_couplers_to_axi_interconnect_1_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_interconnect_1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_1_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[127:0] = axi_interconnect_1_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_interconnect_1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_1_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_1_to_s00_couplers_WREADY;
  assign axi_interconnect_1_ACLK_net = M00_ACLK;
  assign axi_interconnect_1_ARESETN_net = M00_ARESETN;
  assign axi_interconnect_1_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_1_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_1_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_1_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_1_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_interconnect_1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_1_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_1_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_interconnect_1_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_1_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_1_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_1_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_1_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_1_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_1_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_interconnect_1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_1_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_1_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_interconnect_1_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_1_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_1_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_1_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_1_to_s00_couplers_WDATA = S00_AXI_wdata[127:0];
  assign axi_interconnect_1_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_1_to_s00_couplers_WSTRB = S00_AXI_wstrb[15:0];
  assign axi_interconnect_1_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_interconnect_1_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_interconnect_1_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_interconnect_1_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_interconnect_1_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_interconnect_1_RDATA = M00_AXI_rdata[127:0];
  assign s00_couplers_to_axi_interconnect_1_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_axi_interconnect_1_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_interconnect_1_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_interconnect_1_WREADY = M00_AXI_wready;
  s00_couplers_imp_B3UQP7 s00_couplers
       (.M_ACLK(axi_interconnect_1_ACLK_net),
        .M_ARESETN(axi_interconnect_1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arburst(s00_couplers_to_axi_interconnect_1_ARBURST),
        .M_AXI_arcache(s00_couplers_to_axi_interconnect_1_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_axi_interconnect_1_ARLEN),
        .M_AXI_arlock(s00_couplers_to_axi_interconnect_1_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_axi_interconnect_1_ARPROT),
        .M_AXI_arqos(s00_couplers_to_axi_interconnect_1_ARQOS),
        .M_AXI_arready(s00_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arsize(s00_couplers_to_axi_interconnect_1_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_interconnect_1_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_interconnect_1_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_axi_interconnect_1_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_interconnect_1_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_interconnect_1_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_interconnect_1_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awsize(s00_couplers_to_axi_interconnect_1_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rlast(s00_couplers_to_axi_interconnect_1_RLAST),
        .M_AXI_rready(s00_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wlast(s00_couplers_to_axi_interconnect_1_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_interconnect_1_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_1_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_1_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_1_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_1_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_1_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_1_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_1_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_1_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_1_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_1_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_1_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_1_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_1_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_1_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_1_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_1_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_1_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_1_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_1_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_1_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_1_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_1_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_1_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_1_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_1_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_1_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_1_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_1_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_1_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_1_to_s00_couplers_WVALID));
endmodule

module pfm_dynamic_axi_interconnect_hpm0fpd_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [15:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [3:0]M00_AXI_arregion;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [15:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [3:0]M00_AXI_awregion;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [15:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [127:0]M00_AXI_rdata;
  input [15:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [127:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [15:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [127:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [127:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [15:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_hpm0fpd_ACLK_net;
  wire axi_interconnect_hpm0fpd_ARESETN_net;
  wire [31:0]axi_interconnect_hpm0fpd_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_hpm0fpd_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_hpm0fpd_to_s00_couplers_ARCACHE;
  wire [15:0]axi_interconnect_hpm0fpd_to_s00_couplers_ARID;
  wire [7:0]axi_interconnect_hpm0fpd_to_s00_couplers_ARLEN;
  wire [0:0]axi_interconnect_hpm0fpd_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_hpm0fpd_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_hpm0fpd_to_s00_couplers_ARQOS;
  wire axi_interconnect_hpm0fpd_to_s00_couplers_ARREADY;
  wire [3:0]axi_interconnect_hpm0fpd_to_s00_couplers_ARREGION;
  wire [2:0]axi_interconnect_hpm0fpd_to_s00_couplers_ARSIZE;
  wire axi_interconnect_hpm0fpd_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_hpm0fpd_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_hpm0fpd_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_hpm0fpd_to_s00_couplers_AWCACHE;
  wire [15:0]axi_interconnect_hpm0fpd_to_s00_couplers_AWID;
  wire [7:0]axi_interconnect_hpm0fpd_to_s00_couplers_AWLEN;
  wire [0:0]axi_interconnect_hpm0fpd_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_hpm0fpd_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_hpm0fpd_to_s00_couplers_AWQOS;
  wire axi_interconnect_hpm0fpd_to_s00_couplers_AWREADY;
  wire [3:0]axi_interconnect_hpm0fpd_to_s00_couplers_AWREGION;
  wire [2:0]axi_interconnect_hpm0fpd_to_s00_couplers_AWSIZE;
  wire axi_interconnect_hpm0fpd_to_s00_couplers_AWVALID;
  wire [15:0]axi_interconnect_hpm0fpd_to_s00_couplers_BID;
  wire axi_interconnect_hpm0fpd_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_hpm0fpd_to_s00_couplers_BRESP;
  wire axi_interconnect_hpm0fpd_to_s00_couplers_BVALID;
  wire [127:0]axi_interconnect_hpm0fpd_to_s00_couplers_RDATA;
  wire [15:0]axi_interconnect_hpm0fpd_to_s00_couplers_RID;
  wire axi_interconnect_hpm0fpd_to_s00_couplers_RLAST;
  wire axi_interconnect_hpm0fpd_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_hpm0fpd_to_s00_couplers_RRESP;
  wire axi_interconnect_hpm0fpd_to_s00_couplers_RVALID;
  wire [127:0]axi_interconnect_hpm0fpd_to_s00_couplers_WDATA;
  wire axi_interconnect_hpm0fpd_to_s00_couplers_WLAST;
  wire axi_interconnect_hpm0fpd_to_s00_couplers_WREADY;
  wire [15:0]axi_interconnect_hpm0fpd_to_s00_couplers_WSTRB;
  wire axi_interconnect_hpm0fpd_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_hpm0fpd_ARADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_hpm0fpd_ARBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_hpm0fpd_ARCACHE;
  wire [15:0]s00_couplers_to_axi_interconnect_hpm0fpd_ARID;
  wire [7:0]s00_couplers_to_axi_interconnect_hpm0fpd_ARLEN;
  wire [0:0]s00_couplers_to_axi_interconnect_hpm0fpd_ARLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_hpm0fpd_ARPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_hpm0fpd_ARQOS;
  wire s00_couplers_to_axi_interconnect_hpm0fpd_ARREADY;
  wire [3:0]s00_couplers_to_axi_interconnect_hpm0fpd_ARREGION;
  wire [2:0]s00_couplers_to_axi_interconnect_hpm0fpd_ARSIZE;
  wire s00_couplers_to_axi_interconnect_hpm0fpd_ARVALID;
  wire [31:0]s00_couplers_to_axi_interconnect_hpm0fpd_AWADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_hpm0fpd_AWBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_hpm0fpd_AWCACHE;
  wire [15:0]s00_couplers_to_axi_interconnect_hpm0fpd_AWID;
  wire [7:0]s00_couplers_to_axi_interconnect_hpm0fpd_AWLEN;
  wire [0:0]s00_couplers_to_axi_interconnect_hpm0fpd_AWLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_hpm0fpd_AWPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_hpm0fpd_AWQOS;
  wire s00_couplers_to_axi_interconnect_hpm0fpd_AWREADY;
  wire [3:0]s00_couplers_to_axi_interconnect_hpm0fpd_AWREGION;
  wire [2:0]s00_couplers_to_axi_interconnect_hpm0fpd_AWSIZE;
  wire s00_couplers_to_axi_interconnect_hpm0fpd_AWVALID;
  wire [15:0]s00_couplers_to_axi_interconnect_hpm0fpd_BID;
  wire s00_couplers_to_axi_interconnect_hpm0fpd_BREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_hpm0fpd_BRESP;
  wire s00_couplers_to_axi_interconnect_hpm0fpd_BVALID;
  wire [127:0]s00_couplers_to_axi_interconnect_hpm0fpd_RDATA;
  wire [15:0]s00_couplers_to_axi_interconnect_hpm0fpd_RID;
  wire s00_couplers_to_axi_interconnect_hpm0fpd_RLAST;
  wire s00_couplers_to_axi_interconnect_hpm0fpd_RREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_hpm0fpd_RRESP;
  wire s00_couplers_to_axi_interconnect_hpm0fpd_RVALID;
  wire [127:0]s00_couplers_to_axi_interconnect_hpm0fpd_WDATA;
  wire s00_couplers_to_axi_interconnect_hpm0fpd_WLAST;
  wire s00_couplers_to_axi_interconnect_hpm0fpd_WREADY;
  wire [15:0]s00_couplers_to_axi_interconnect_hpm0fpd_WSTRB;
  wire s00_couplers_to_axi_interconnect_hpm0fpd_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_axi_interconnect_hpm0fpd_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_axi_interconnect_hpm0fpd_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_axi_interconnect_hpm0fpd_ARCACHE;
  assign M00_AXI_arid[15:0] = s00_couplers_to_axi_interconnect_hpm0fpd_ARID;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_axi_interconnect_hpm0fpd_ARLEN;
  assign M00_AXI_arlock[0] = s00_couplers_to_axi_interconnect_hpm0fpd_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_interconnect_hpm0fpd_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_axi_interconnect_hpm0fpd_ARQOS;
  assign M00_AXI_arregion[3:0] = s00_couplers_to_axi_interconnect_hpm0fpd_ARREGION;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_axi_interconnect_hpm0fpd_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_axi_interconnect_hpm0fpd_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_axi_interconnect_hpm0fpd_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_interconnect_hpm0fpd_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_interconnect_hpm0fpd_AWCACHE;
  assign M00_AXI_awid[15:0] = s00_couplers_to_axi_interconnect_hpm0fpd_AWID;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_axi_interconnect_hpm0fpd_AWLEN;
  assign M00_AXI_awlock[0] = s00_couplers_to_axi_interconnect_hpm0fpd_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_interconnect_hpm0fpd_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_interconnect_hpm0fpd_AWQOS;
  assign M00_AXI_awregion[3:0] = s00_couplers_to_axi_interconnect_hpm0fpd_AWREGION;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_interconnect_hpm0fpd_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_interconnect_hpm0fpd_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_interconnect_hpm0fpd_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_interconnect_hpm0fpd_RREADY;
  assign M00_AXI_wdata[127:0] = s00_couplers_to_axi_interconnect_hpm0fpd_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_axi_interconnect_hpm0fpd_WLAST;
  assign M00_AXI_wstrb[15:0] = s00_couplers_to_axi_interconnect_hpm0fpd_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_interconnect_hpm0fpd_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_hpm0fpd_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_hpm0fpd_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = axi_interconnect_hpm0fpd_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_hpm0fpd_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_hpm0fpd_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[127:0] = axi_interconnect_hpm0fpd_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = axi_interconnect_hpm0fpd_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_hpm0fpd_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_hpm0fpd_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_hpm0fpd_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_hpm0fpd_to_s00_couplers_WREADY;
  assign axi_interconnect_hpm0fpd_ACLK_net = M00_ACLK;
  assign axi_interconnect_hpm0fpd_ARESETN_net = M00_ARESETN;
  assign axi_interconnect_hpm0fpd_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_hpm0fpd_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_hpm0fpd_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_hpm0fpd_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign axi_interconnect_hpm0fpd_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_hpm0fpd_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_interconnect_hpm0fpd_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_hpm0fpd_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_hpm0fpd_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_interconnect_hpm0fpd_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_hpm0fpd_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_hpm0fpd_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_hpm0fpd_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_hpm0fpd_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_hpm0fpd_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign axi_interconnect_hpm0fpd_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_hpm0fpd_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_interconnect_hpm0fpd_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_hpm0fpd_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_hpm0fpd_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_interconnect_hpm0fpd_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_hpm0fpd_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_hpm0fpd_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_hpm0fpd_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_hpm0fpd_to_s00_couplers_WDATA = S00_AXI_wdata[127:0];
  assign axi_interconnect_hpm0fpd_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_hpm0fpd_to_s00_couplers_WSTRB = S00_AXI_wstrb[15:0];
  assign axi_interconnect_hpm0fpd_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_interconnect_hpm0fpd_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_interconnect_hpm0fpd_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_interconnect_hpm0fpd_BID = M00_AXI_bid[15:0];
  assign s00_couplers_to_axi_interconnect_hpm0fpd_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_interconnect_hpm0fpd_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_interconnect_hpm0fpd_RDATA = M00_AXI_rdata[127:0];
  assign s00_couplers_to_axi_interconnect_hpm0fpd_RID = M00_AXI_rid[15:0];
  assign s00_couplers_to_axi_interconnect_hpm0fpd_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_axi_interconnect_hpm0fpd_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_interconnect_hpm0fpd_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_interconnect_hpm0fpd_WREADY = M00_AXI_wready;
  s00_couplers_imp_2LVM1Y s00_couplers
       (.M_ACLK(axi_interconnect_hpm0fpd_ACLK_net),
        .M_ARESETN(axi_interconnect_hpm0fpd_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_interconnect_hpm0fpd_ARADDR),
        .M_AXI_arburst(s00_couplers_to_axi_interconnect_hpm0fpd_ARBURST),
        .M_AXI_arcache(s00_couplers_to_axi_interconnect_hpm0fpd_ARCACHE),
        .M_AXI_arid(s00_couplers_to_axi_interconnect_hpm0fpd_ARID),
        .M_AXI_arlen(s00_couplers_to_axi_interconnect_hpm0fpd_ARLEN),
        .M_AXI_arlock(s00_couplers_to_axi_interconnect_hpm0fpd_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_axi_interconnect_hpm0fpd_ARPROT),
        .M_AXI_arqos(s00_couplers_to_axi_interconnect_hpm0fpd_ARQOS),
        .M_AXI_arready(s00_couplers_to_axi_interconnect_hpm0fpd_ARREADY),
        .M_AXI_arregion(s00_couplers_to_axi_interconnect_hpm0fpd_ARREGION),
        .M_AXI_arsize(s00_couplers_to_axi_interconnect_hpm0fpd_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_axi_interconnect_hpm0fpd_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_interconnect_hpm0fpd_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_interconnect_hpm0fpd_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_interconnect_hpm0fpd_AWCACHE),
        .M_AXI_awid(s00_couplers_to_axi_interconnect_hpm0fpd_AWID),
        .M_AXI_awlen(s00_couplers_to_axi_interconnect_hpm0fpd_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_interconnect_hpm0fpd_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_interconnect_hpm0fpd_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_interconnect_hpm0fpd_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_interconnect_hpm0fpd_AWREADY),
        .M_AXI_awregion(s00_couplers_to_axi_interconnect_hpm0fpd_AWREGION),
        .M_AXI_awsize(s00_couplers_to_axi_interconnect_hpm0fpd_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_interconnect_hpm0fpd_AWVALID),
        .M_AXI_bid(s00_couplers_to_axi_interconnect_hpm0fpd_BID),
        .M_AXI_bready(s00_couplers_to_axi_interconnect_hpm0fpd_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_interconnect_hpm0fpd_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_interconnect_hpm0fpd_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_interconnect_hpm0fpd_RDATA),
        .M_AXI_rid(s00_couplers_to_axi_interconnect_hpm0fpd_RID),
        .M_AXI_rlast(s00_couplers_to_axi_interconnect_hpm0fpd_RLAST),
        .M_AXI_rready(s00_couplers_to_axi_interconnect_hpm0fpd_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_interconnect_hpm0fpd_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_interconnect_hpm0fpd_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_interconnect_hpm0fpd_WDATA),
        .M_AXI_wlast(s00_couplers_to_axi_interconnect_hpm0fpd_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_interconnect_hpm0fpd_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_interconnect_hpm0fpd_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_interconnect_hpm0fpd_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_hpm0fpd_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_hpm0fpd_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_hpm0fpd_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_hpm0fpd_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_hpm0fpd_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_hpm0fpd_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_hpm0fpd_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_hpm0fpd_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_hpm0fpd_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_hpm0fpd_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_hpm0fpd_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_hpm0fpd_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_hpm0fpd_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_hpm0fpd_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_hpm0fpd_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_hpm0fpd_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_hpm0fpd_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_hpm0fpd_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_hpm0fpd_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_hpm0fpd_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_hpm0fpd_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_hpm0fpd_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_hpm0fpd_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_hpm0fpd_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_hpm0fpd_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_hpm0fpd_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_hpm0fpd_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_hpm0fpd_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_hpm0fpd_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_hpm0fpd_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_hpm0fpd_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_hpm0fpd_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_hpm0fpd_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_hpm0fpd_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_hpm0fpd_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_hpm0fpd_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_hpm0fpd_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_hpm0fpd_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_hpm0fpd_to_s00_couplers_WVALID));
endmodule

module pfm_dynamic_interconnect_axifull_1_user_slr1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [127:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [127:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [15:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [127:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [127:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [15:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire interconnect_axifull_1_user_slr1_ACLK_net;
  wire interconnect_axifull_1_user_slr1_ARESETN_net;
  wire [31:0]interconnect_axifull_1_user_slr1_to_s00_couplers_ARADDR;
  wire [1:0]interconnect_axifull_1_user_slr1_to_s00_couplers_ARBURST;
  wire [3:0]interconnect_axifull_1_user_slr1_to_s00_couplers_ARCACHE;
  wire [7:0]interconnect_axifull_1_user_slr1_to_s00_couplers_ARLEN;
  wire [0:0]interconnect_axifull_1_user_slr1_to_s00_couplers_ARLOCK;
  wire [2:0]interconnect_axifull_1_user_slr1_to_s00_couplers_ARPROT;
  wire [3:0]interconnect_axifull_1_user_slr1_to_s00_couplers_ARQOS;
  wire interconnect_axifull_1_user_slr1_to_s00_couplers_ARREADY;
  wire [3:0]interconnect_axifull_1_user_slr1_to_s00_couplers_ARREGION;
  wire [2:0]interconnect_axifull_1_user_slr1_to_s00_couplers_ARSIZE;
  wire interconnect_axifull_1_user_slr1_to_s00_couplers_ARVALID;
  wire [31:0]interconnect_axifull_1_user_slr1_to_s00_couplers_AWADDR;
  wire [1:0]interconnect_axifull_1_user_slr1_to_s00_couplers_AWBURST;
  wire [3:0]interconnect_axifull_1_user_slr1_to_s00_couplers_AWCACHE;
  wire [7:0]interconnect_axifull_1_user_slr1_to_s00_couplers_AWLEN;
  wire [0:0]interconnect_axifull_1_user_slr1_to_s00_couplers_AWLOCK;
  wire [2:0]interconnect_axifull_1_user_slr1_to_s00_couplers_AWPROT;
  wire [3:0]interconnect_axifull_1_user_slr1_to_s00_couplers_AWQOS;
  wire interconnect_axifull_1_user_slr1_to_s00_couplers_AWREADY;
  wire [3:0]interconnect_axifull_1_user_slr1_to_s00_couplers_AWREGION;
  wire [2:0]interconnect_axifull_1_user_slr1_to_s00_couplers_AWSIZE;
  wire interconnect_axifull_1_user_slr1_to_s00_couplers_AWVALID;
  wire interconnect_axifull_1_user_slr1_to_s00_couplers_BREADY;
  wire [1:0]interconnect_axifull_1_user_slr1_to_s00_couplers_BRESP;
  wire interconnect_axifull_1_user_slr1_to_s00_couplers_BVALID;
  wire [127:0]interconnect_axifull_1_user_slr1_to_s00_couplers_RDATA;
  wire interconnect_axifull_1_user_slr1_to_s00_couplers_RLAST;
  wire interconnect_axifull_1_user_slr1_to_s00_couplers_RREADY;
  wire [1:0]interconnect_axifull_1_user_slr1_to_s00_couplers_RRESP;
  wire interconnect_axifull_1_user_slr1_to_s00_couplers_RVALID;
  wire [127:0]interconnect_axifull_1_user_slr1_to_s00_couplers_WDATA;
  wire interconnect_axifull_1_user_slr1_to_s00_couplers_WLAST;
  wire interconnect_axifull_1_user_slr1_to_s00_couplers_WREADY;
  wire [15:0]interconnect_axifull_1_user_slr1_to_s00_couplers_WSTRB;
  wire interconnect_axifull_1_user_slr1_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_interconnect_axifull_1_user_slr1_ARADDR;
  wire [1:0]s00_couplers_to_interconnect_axifull_1_user_slr1_ARBURST;
  wire [3:0]s00_couplers_to_interconnect_axifull_1_user_slr1_ARCACHE;
  wire [7:0]s00_couplers_to_interconnect_axifull_1_user_slr1_ARLEN;
  wire [0:0]s00_couplers_to_interconnect_axifull_1_user_slr1_ARLOCK;
  wire [2:0]s00_couplers_to_interconnect_axifull_1_user_slr1_ARPROT;
  wire [3:0]s00_couplers_to_interconnect_axifull_1_user_slr1_ARQOS;
  wire s00_couplers_to_interconnect_axifull_1_user_slr1_ARREADY;
  wire [2:0]s00_couplers_to_interconnect_axifull_1_user_slr1_ARSIZE;
  wire s00_couplers_to_interconnect_axifull_1_user_slr1_ARVALID;
  wire [31:0]s00_couplers_to_interconnect_axifull_1_user_slr1_AWADDR;
  wire [1:0]s00_couplers_to_interconnect_axifull_1_user_slr1_AWBURST;
  wire [3:0]s00_couplers_to_interconnect_axifull_1_user_slr1_AWCACHE;
  wire [7:0]s00_couplers_to_interconnect_axifull_1_user_slr1_AWLEN;
  wire [0:0]s00_couplers_to_interconnect_axifull_1_user_slr1_AWLOCK;
  wire [2:0]s00_couplers_to_interconnect_axifull_1_user_slr1_AWPROT;
  wire [3:0]s00_couplers_to_interconnect_axifull_1_user_slr1_AWQOS;
  wire s00_couplers_to_interconnect_axifull_1_user_slr1_AWREADY;
  wire [2:0]s00_couplers_to_interconnect_axifull_1_user_slr1_AWSIZE;
  wire s00_couplers_to_interconnect_axifull_1_user_slr1_AWVALID;
  wire s00_couplers_to_interconnect_axifull_1_user_slr1_BREADY;
  wire [1:0]s00_couplers_to_interconnect_axifull_1_user_slr1_BRESP;
  wire s00_couplers_to_interconnect_axifull_1_user_slr1_BVALID;
  wire [127:0]s00_couplers_to_interconnect_axifull_1_user_slr1_RDATA;
  wire s00_couplers_to_interconnect_axifull_1_user_slr1_RLAST;
  wire s00_couplers_to_interconnect_axifull_1_user_slr1_RREADY;
  wire [1:0]s00_couplers_to_interconnect_axifull_1_user_slr1_RRESP;
  wire s00_couplers_to_interconnect_axifull_1_user_slr1_RVALID;
  wire [127:0]s00_couplers_to_interconnect_axifull_1_user_slr1_WDATA;
  wire s00_couplers_to_interconnect_axifull_1_user_slr1_WLAST;
  wire s00_couplers_to_interconnect_axifull_1_user_slr1_WREADY;
  wire [15:0]s00_couplers_to_interconnect_axifull_1_user_slr1_WSTRB;
  wire s00_couplers_to_interconnect_axifull_1_user_slr1_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_interconnect_axifull_1_user_slr1_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_interconnect_axifull_1_user_slr1_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_interconnect_axifull_1_user_slr1_ARCACHE;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_interconnect_axifull_1_user_slr1_ARLEN;
  assign M00_AXI_arlock[0] = s00_couplers_to_interconnect_axifull_1_user_slr1_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_interconnect_axifull_1_user_slr1_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_interconnect_axifull_1_user_slr1_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_interconnect_axifull_1_user_slr1_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_interconnect_axifull_1_user_slr1_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_interconnect_axifull_1_user_slr1_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_interconnect_axifull_1_user_slr1_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_interconnect_axifull_1_user_slr1_AWCACHE;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_interconnect_axifull_1_user_slr1_AWLEN;
  assign M00_AXI_awlock[0] = s00_couplers_to_interconnect_axifull_1_user_slr1_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_interconnect_axifull_1_user_slr1_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_interconnect_axifull_1_user_slr1_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_interconnect_axifull_1_user_slr1_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_interconnect_axifull_1_user_slr1_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_interconnect_axifull_1_user_slr1_BREADY;
  assign M00_AXI_rready = s00_couplers_to_interconnect_axifull_1_user_slr1_RREADY;
  assign M00_AXI_wdata[127:0] = s00_couplers_to_interconnect_axifull_1_user_slr1_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_interconnect_axifull_1_user_slr1_WLAST;
  assign M00_AXI_wstrb[15:0] = s00_couplers_to_interconnect_axifull_1_user_slr1_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_interconnect_axifull_1_user_slr1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = interconnect_axifull_1_user_slr1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = interconnect_axifull_1_user_slr1_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = interconnect_axifull_1_user_slr1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = interconnect_axifull_1_user_slr1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[127:0] = interconnect_axifull_1_user_slr1_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = interconnect_axifull_1_user_slr1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = interconnect_axifull_1_user_slr1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = interconnect_axifull_1_user_slr1_to_s00_couplers_RVALID;
  assign S00_AXI_wready = interconnect_axifull_1_user_slr1_to_s00_couplers_WREADY;
  assign interconnect_axifull_1_user_slr1_ACLK_net = M00_ACLK;
  assign interconnect_axifull_1_user_slr1_ARESETN_net = M00_ARESETN;
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_BREADY = S00_AXI_bready;
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_RREADY = S00_AXI_rready;
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_WDATA = S00_AXI_wdata[127:0];
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_WSTRB = S00_AXI_wstrb[15:0];
  assign interconnect_axifull_1_user_slr1_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_interconnect_axifull_1_user_slr1_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_interconnect_axifull_1_user_slr1_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_interconnect_axifull_1_user_slr1_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_interconnect_axifull_1_user_slr1_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_interconnect_axifull_1_user_slr1_RDATA = M00_AXI_rdata[127:0];
  assign s00_couplers_to_interconnect_axifull_1_user_slr1_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_interconnect_axifull_1_user_slr1_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_interconnect_axifull_1_user_slr1_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_interconnect_axifull_1_user_slr1_WREADY = M00_AXI_wready;
  s00_couplers_imp_1HPK08H s00_couplers
       (.M_ACLK(interconnect_axifull_1_user_slr1_ACLK_net),
        .M_ARESETN(interconnect_axifull_1_user_slr1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_interconnect_axifull_1_user_slr1_ARADDR),
        .M_AXI_arburst(s00_couplers_to_interconnect_axifull_1_user_slr1_ARBURST),
        .M_AXI_arcache(s00_couplers_to_interconnect_axifull_1_user_slr1_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_interconnect_axifull_1_user_slr1_ARLEN),
        .M_AXI_arlock(s00_couplers_to_interconnect_axifull_1_user_slr1_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_interconnect_axifull_1_user_slr1_ARPROT),
        .M_AXI_arqos(s00_couplers_to_interconnect_axifull_1_user_slr1_ARQOS),
        .M_AXI_arready(s00_couplers_to_interconnect_axifull_1_user_slr1_ARREADY),
        .M_AXI_arsize(s00_couplers_to_interconnect_axifull_1_user_slr1_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_interconnect_axifull_1_user_slr1_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_interconnect_axifull_1_user_slr1_AWADDR),
        .M_AXI_awburst(s00_couplers_to_interconnect_axifull_1_user_slr1_AWBURST),
        .M_AXI_awcache(s00_couplers_to_interconnect_axifull_1_user_slr1_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_interconnect_axifull_1_user_slr1_AWLEN),
        .M_AXI_awlock(s00_couplers_to_interconnect_axifull_1_user_slr1_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_interconnect_axifull_1_user_slr1_AWPROT),
        .M_AXI_awqos(s00_couplers_to_interconnect_axifull_1_user_slr1_AWQOS),
        .M_AXI_awready(s00_couplers_to_interconnect_axifull_1_user_slr1_AWREADY),
        .M_AXI_awsize(s00_couplers_to_interconnect_axifull_1_user_slr1_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_interconnect_axifull_1_user_slr1_AWVALID),
        .M_AXI_bready(s00_couplers_to_interconnect_axifull_1_user_slr1_BREADY),
        .M_AXI_bresp(s00_couplers_to_interconnect_axifull_1_user_slr1_BRESP),
        .M_AXI_bvalid(s00_couplers_to_interconnect_axifull_1_user_slr1_BVALID),
        .M_AXI_rdata(s00_couplers_to_interconnect_axifull_1_user_slr1_RDATA),
        .M_AXI_rlast(s00_couplers_to_interconnect_axifull_1_user_slr1_RLAST),
        .M_AXI_rready(s00_couplers_to_interconnect_axifull_1_user_slr1_RREADY),
        .M_AXI_rresp(s00_couplers_to_interconnect_axifull_1_user_slr1_RRESP),
        .M_AXI_rvalid(s00_couplers_to_interconnect_axifull_1_user_slr1_RVALID),
        .M_AXI_wdata(s00_couplers_to_interconnect_axifull_1_user_slr1_WDATA),
        .M_AXI_wlast(s00_couplers_to_interconnect_axifull_1_user_slr1_WLAST),
        .M_AXI_wready(s00_couplers_to_interconnect_axifull_1_user_slr1_WREADY),
        .M_AXI_wstrb(s00_couplers_to_interconnect_axifull_1_user_slr1_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_interconnect_axifull_1_user_slr1_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(interconnect_axifull_1_user_slr1_to_s00_couplers_ARADDR),
        .S_AXI_arburst(interconnect_axifull_1_user_slr1_to_s00_couplers_ARBURST),
        .S_AXI_arcache(interconnect_axifull_1_user_slr1_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(interconnect_axifull_1_user_slr1_to_s00_couplers_ARLEN),
        .S_AXI_arlock(interconnect_axifull_1_user_slr1_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(interconnect_axifull_1_user_slr1_to_s00_couplers_ARPROT),
        .S_AXI_arqos(interconnect_axifull_1_user_slr1_to_s00_couplers_ARQOS),
        .S_AXI_arready(interconnect_axifull_1_user_slr1_to_s00_couplers_ARREADY),
        .S_AXI_arregion(interconnect_axifull_1_user_slr1_to_s00_couplers_ARREGION),
        .S_AXI_arsize(interconnect_axifull_1_user_slr1_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(interconnect_axifull_1_user_slr1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(interconnect_axifull_1_user_slr1_to_s00_couplers_AWADDR),
        .S_AXI_awburst(interconnect_axifull_1_user_slr1_to_s00_couplers_AWBURST),
        .S_AXI_awcache(interconnect_axifull_1_user_slr1_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(interconnect_axifull_1_user_slr1_to_s00_couplers_AWLEN),
        .S_AXI_awlock(interconnect_axifull_1_user_slr1_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(interconnect_axifull_1_user_slr1_to_s00_couplers_AWPROT),
        .S_AXI_awqos(interconnect_axifull_1_user_slr1_to_s00_couplers_AWQOS),
        .S_AXI_awready(interconnect_axifull_1_user_slr1_to_s00_couplers_AWREADY),
        .S_AXI_awregion(interconnect_axifull_1_user_slr1_to_s00_couplers_AWREGION),
        .S_AXI_awsize(interconnect_axifull_1_user_slr1_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(interconnect_axifull_1_user_slr1_to_s00_couplers_AWVALID),
        .S_AXI_bready(interconnect_axifull_1_user_slr1_to_s00_couplers_BREADY),
        .S_AXI_bresp(interconnect_axifull_1_user_slr1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(interconnect_axifull_1_user_slr1_to_s00_couplers_BVALID),
        .S_AXI_rdata(interconnect_axifull_1_user_slr1_to_s00_couplers_RDATA),
        .S_AXI_rlast(interconnect_axifull_1_user_slr1_to_s00_couplers_RLAST),
        .S_AXI_rready(interconnect_axifull_1_user_slr1_to_s00_couplers_RREADY),
        .S_AXI_rresp(interconnect_axifull_1_user_slr1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(interconnect_axifull_1_user_slr1_to_s00_couplers_RVALID),
        .S_AXI_wdata(interconnect_axifull_1_user_slr1_to_s00_couplers_WDATA),
        .S_AXI_wlast(interconnect_axifull_1_user_slr1_to_s00_couplers_WLAST),
        .S_AXI_wready(interconnect_axifull_1_user_slr1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(interconnect_axifull_1_user_slr1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(interconnect_axifull_1_user_slr1_to_s00_couplers_WVALID));
endmodule

module pfm_dynamic_interconnect_axifull_2_user_slr1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arregion,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arregion,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_rdata,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [63:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [63:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [127:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [127:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [15:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [127:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [127:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [15:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [63:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input [1:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [3:0]S01_AXI_arregion;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  output [511:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [63:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [7:0]S02_AXI_arlen;
  input [1:0]S02_AXI_arlock;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arqos;
  output S02_AXI_arready;
  input [3:0]S02_AXI_arregion;
  input [2:0]S02_AXI_arsize;
  input S02_AXI_arvalid;
  output [511:0]S02_AXI_rdata;
  output S02_AXI_rlast;
  input S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire S02_ACLK_1;
  wire S02_ARESETN_1;
  wire interconnect_axifull_2_user_slr1_ACLK_net;
  wire interconnect_axifull_2_user_slr1_ARESETN_net;
  wire [31:0]interconnect_axifull_2_user_slr1_to_s00_couplers_ARADDR;
  wire [1:0]interconnect_axifull_2_user_slr1_to_s00_couplers_ARBURST;
  wire [3:0]interconnect_axifull_2_user_slr1_to_s00_couplers_ARCACHE;
  wire [7:0]interconnect_axifull_2_user_slr1_to_s00_couplers_ARLEN;
  wire [0:0]interconnect_axifull_2_user_slr1_to_s00_couplers_ARLOCK;
  wire [2:0]interconnect_axifull_2_user_slr1_to_s00_couplers_ARPROT;
  wire [3:0]interconnect_axifull_2_user_slr1_to_s00_couplers_ARQOS;
  wire interconnect_axifull_2_user_slr1_to_s00_couplers_ARREADY;
  wire [3:0]interconnect_axifull_2_user_slr1_to_s00_couplers_ARREGION;
  wire [2:0]interconnect_axifull_2_user_slr1_to_s00_couplers_ARSIZE;
  wire interconnect_axifull_2_user_slr1_to_s00_couplers_ARVALID;
  wire [31:0]interconnect_axifull_2_user_slr1_to_s00_couplers_AWADDR;
  wire [1:0]interconnect_axifull_2_user_slr1_to_s00_couplers_AWBURST;
  wire [3:0]interconnect_axifull_2_user_slr1_to_s00_couplers_AWCACHE;
  wire [7:0]interconnect_axifull_2_user_slr1_to_s00_couplers_AWLEN;
  wire [0:0]interconnect_axifull_2_user_slr1_to_s00_couplers_AWLOCK;
  wire [2:0]interconnect_axifull_2_user_slr1_to_s00_couplers_AWPROT;
  wire [3:0]interconnect_axifull_2_user_slr1_to_s00_couplers_AWQOS;
  wire interconnect_axifull_2_user_slr1_to_s00_couplers_AWREADY;
  wire [3:0]interconnect_axifull_2_user_slr1_to_s00_couplers_AWREGION;
  wire [2:0]interconnect_axifull_2_user_slr1_to_s00_couplers_AWSIZE;
  wire interconnect_axifull_2_user_slr1_to_s00_couplers_AWVALID;
  wire interconnect_axifull_2_user_slr1_to_s00_couplers_BREADY;
  wire [1:0]interconnect_axifull_2_user_slr1_to_s00_couplers_BRESP;
  wire interconnect_axifull_2_user_slr1_to_s00_couplers_BVALID;
  wire [127:0]interconnect_axifull_2_user_slr1_to_s00_couplers_RDATA;
  wire interconnect_axifull_2_user_slr1_to_s00_couplers_RLAST;
  wire interconnect_axifull_2_user_slr1_to_s00_couplers_RREADY;
  wire [1:0]interconnect_axifull_2_user_slr1_to_s00_couplers_RRESP;
  wire interconnect_axifull_2_user_slr1_to_s00_couplers_RVALID;
  wire [127:0]interconnect_axifull_2_user_slr1_to_s00_couplers_WDATA;
  wire interconnect_axifull_2_user_slr1_to_s00_couplers_WLAST;
  wire interconnect_axifull_2_user_slr1_to_s00_couplers_WREADY;
  wire [15:0]interconnect_axifull_2_user_slr1_to_s00_couplers_WSTRB;
  wire interconnect_axifull_2_user_slr1_to_s00_couplers_WVALID;
  wire [63:0]interconnect_axifull_2_user_slr1_to_s01_couplers_ARADDR;
  wire [1:0]interconnect_axifull_2_user_slr1_to_s01_couplers_ARBURST;
  wire [3:0]interconnect_axifull_2_user_slr1_to_s01_couplers_ARCACHE;
  wire [7:0]interconnect_axifull_2_user_slr1_to_s01_couplers_ARLEN;
  wire [1:0]interconnect_axifull_2_user_slr1_to_s01_couplers_ARLOCK;
  wire [2:0]interconnect_axifull_2_user_slr1_to_s01_couplers_ARPROT;
  wire [3:0]interconnect_axifull_2_user_slr1_to_s01_couplers_ARQOS;
  wire interconnect_axifull_2_user_slr1_to_s01_couplers_ARREADY;
  wire [3:0]interconnect_axifull_2_user_slr1_to_s01_couplers_ARREGION;
  wire [2:0]interconnect_axifull_2_user_slr1_to_s01_couplers_ARSIZE;
  wire interconnect_axifull_2_user_slr1_to_s01_couplers_ARVALID;
  wire [511:0]interconnect_axifull_2_user_slr1_to_s01_couplers_RDATA;
  wire interconnect_axifull_2_user_slr1_to_s01_couplers_RLAST;
  wire interconnect_axifull_2_user_slr1_to_s01_couplers_RREADY;
  wire [1:0]interconnect_axifull_2_user_slr1_to_s01_couplers_RRESP;
  wire interconnect_axifull_2_user_slr1_to_s01_couplers_RVALID;
  wire [63:0]interconnect_axifull_2_user_slr1_to_s02_couplers_ARADDR;
  wire [1:0]interconnect_axifull_2_user_slr1_to_s02_couplers_ARBURST;
  wire [3:0]interconnect_axifull_2_user_slr1_to_s02_couplers_ARCACHE;
  wire [7:0]interconnect_axifull_2_user_slr1_to_s02_couplers_ARLEN;
  wire [1:0]interconnect_axifull_2_user_slr1_to_s02_couplers_ARLOCK;
  wire [2:0]interconnect_axifull_2_user_slr1_to_s02_couplers_ARPROT;
  wire [3:0]interconnect_axifull_2_user_slr1_to_s02_couplers_ARQOS;
  wire interconnect_axifull_2_user_slr1_to_s02_couplers_ARREADY;
  wire [3:0]interconnect_axifull_2_user_slr1_to_s02_couplers_ARREGION;
  wire [2:0]interconnect_axifull_2_user_slr1_to_s02_couplers_ARSIZE;
  wire interconnect_axifull_2_user_slr1_to_s02_couplers_ARVALID;
  wire [511:0]interconnect_axifull_2_user_slr1_to_s02_couplers_RDATA;
  wire interconnect_axifull_2_user_slr1_to_s02_couplers_RLAST;
  wire interconnect_axifull_2_user_slr1_to_s02_couplers_RREADY;
  wire [1:0]interconnect_axifull_2_user_slr1_to_s02_couplers_RRESP;
  wire interconnect_axifull_2_user_slr1_to_s02_couplers_RVALID;
  wire [63:0]m00_couplers_to_interconnect_axifull_2_user_slr1_ARADDR;
  wire [1:0]m00_couplers_to_interconnect_axifull_2_user_slr1_ARBURST;
  wire [3:0]m00_couplers_to_interconnect_axifull_2_user_slr1_ARCACHE;
  wire [7:0]m00_couplers_to_interconnect_axifull_2_user_slr1_ARLEN;
  wire [0:0]m00_couplers_to_interconnect_axifull_2_user_slr1_ARLOCK;
  wire [2:0]m00_couplers_to_interconnect_axifull_2_user_slr1_ARPROT;
  wire [3:0]m00_couplers_to_interconnect_axifull_2_user_slr1_ARQOS;
  wire m00_couplers_to_interconnect_axifull_2_user_slr1_ARREADY;
  wire [2:0]m00_couplers_to_interconnect_axifull_2_user_slr1_ARSIZE;
  wire m00_couplers_to_interconnect_axifull_2_user_slr1_ARVALID;
  wire [63:0]m00_couplers_to_interconnect_axifull_2_user_slr1_AWADDR;
  wire [1:0]m00_couplers_to_interconnect_axifull_2_user_slr1_AWBURST;
  wire [3:0]m00_couplers_to_interconnect_axifull_2_user_slr1_AWCACHE;
  wire [7:0]m00_couplers_to_interconnect_axifull_2_user_slr1_AWLEN;
  wire [0:0]m00_couplers_to_interconnect_axifull_2_user_slr1_AWLOCK;
  wire [2:0]m00_couplers_to_interconnect_axifull_2_user_slr1_AWPROT;
  wire [3:0]m00_couplers_to_interconnect_axifull_2_user_slr1_AWQOS;
  wire m00_couplers_to_interconnect_axifull_2_user_slr1_AWREADY;
  wire [2:0]m00_couplers_to_interconnect_axifull_2_user_slr1_AWSIZE;
  wire m00_couplers_to_interconnect_axifull_2_user_slr1_AWVALID;
  wire m00_couplers_to_interconnect_axifull_2_user_slr1_BREADY;
  wire [1:0]m00_couplers_to_interconnect_axifull_2_user_slr1_BRESP;
  wire m00_couplers_to_interconnect_axifull_2_user_slr1_BVALID;
  wire [127:0]m00_couplers_to_interconnect_axifull_2_user_slr1_RDATA;
  wire m00_couplers_to_interconnect_axifull_2_user_slr1_RLAST;
  wire m00_couplers_to_interconnect_axifull_2_user_slr1_RREADY;
  wire [1:0]m00_couplers_to_interconnect_axifull_2_user_slr1_RRESP;
  wire m00_couplers_to_interconnect_axifull_2_user_slr1_RVALID;
  wire [127:0]m00_couplers_to_interconnect_axifull_2_user_slr1_WDATA;
  wire m00_couplers_to_interconnect_axifull_2_user_slr1_WLAST;
  wire m00_couplers_to_interconnect_axifull_2_user_slr1_WREADY;
  wire [15:0]m00_couplers_to_interconnect_axifull_2_user_slr1_WSTRB;
  wire m00_couplers_to_interconnect_axifull_2_user_slr1_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [511:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [511:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [63:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [63:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [1023:512]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [63:0]s02_couplers_to_xbar_ARADDR;
  wire [1:0]s02_couplers_to_xbar_ARBURST;
  wire [3:0]s02_couplers_to_xbar_ARCACHE;
  wire [7:0]s02_couplers_to_xbar_ARLEN;
  wire [0:0]s02_couplers_to_xbar_ARLOCK;
  wire [2:0]s02_couplers_to_xbar_ARPROT;
  wire [3:0]s02_couplers_to_xbar_ARQOS;
  wire [2:2]s02_couplers_to_xbar_ARREADY;
  wire [2:0]s02_couplers_to_xbar_ARSIZE;
  wire s02_couplers_to_xbar_ARVALID;
  wire [1535:1024]s02_couplers_to_xbar_RDATA;
  wire [2:2]s02_couplers_to_xbar_RLAST;
  wire s02_couplers_to_xbar_RREADY;
  wire [5:4]s02_couplers_to_xbar_RRESP;
  wire [2:2]s02_couplers_to_xbar_RVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [1:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [1:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [1:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [511:0]xbar_to_m00_couplers_RDATA;
  wire [1:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [511:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [63:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[63:0] = m00_couplers_to_interconnect_axifull_2_user_slr1_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_interconnect_axifull_2_user_slr1_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_interconnect_axifull_2_user_slr1_ARCACHE;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_interconnect_axifull_2_user_slr1_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_interconnect_axifull_2_user_slr1_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_interconnect_axifull_2_user_slr1_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_interconnect_axifull_2_user_slr1_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_interconnect_axifull_2_user_slr1_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_interconnect_axifull_2_user_slr1_ARVALID;
  assign M00_AXI_awaddr[63:0] = m00_couplers_to_interconnect_axifull_2_user_slr1_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_interconnect_axifull_2_user_slr1_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_interconnect_axifull_2_user_slr1_AWCACHE;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_interconnect_axifull_2_user_slr1_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_interconnect_axifull_2_user_slr1_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_interconnect_axifull_2_user_slr1_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_interconnect_axifull_2_user_slr1_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_interconnect_axifull_2_user_slr1_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_interconnect_axifull_2_user_slr1_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_interconnect_axifull_2_user_slr1_BREADY;
  assign M00_AXI_rready = m00_couplers_to_interconnect_axifull_2_user_slr1_RREADY;
  assign M00_AXI_wdata[127:0] = m00_couplers_to_interconnect_axifull_2_user_slr1_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_interconnect_axifull_2_user_slr1_WLAST;
  assign M00_AXI_wstrb[15:0] = m00_couplers_to_interconnect_axifull_2_user_slr1_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_interconnect_axifull_2_user_slr1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = interconnect_axifull_2_user_slr1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = interconnect_axifull_2_user_slr1_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = interconnect_axifull_2_user_slr1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = interconnect_axifull_2_user_slr1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[127:0] = interconnect_axifull_2_user_slr1_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = interconnect_axifull_2_user_slr1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = interconnect_axifull_2_user_slr1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = interconnect_axifull_2_user_slr1_to_s00_couplers_RVALID;
  assign S00_AXI_wready = interconnect_axifull_2_user_slr1_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_arready = interconnect_axifull_2_user_slr1_to_s01_couplers_ARREADY;
  assign S01_AXI_rdata[511:0] = interconnect_axifull_2_user_slr1_to_s01_couplers_RDATA;
  assign S01_AXI_rlast = interconnect_axifull_2_user_slr1_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = interconnect_axifull_2_user_slr1_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = interconnect_axifull_2_user_slr1_to_s01_couplers_RVALID;
  assign S02_ACLK_1 = S02_ACLK;
  assign S02_ARESETN_1 = S02_ARESETN;
  assign S02_AXI_arready = interconnect_axifull_2_user_slr1_to_s02_couplers_ARREADY;
  assign S02_AXI_rdata[511:0] = interconnect_axifull_2_user_slr1_to_s02_couplers_RDATA;
  assign S02_AXI_rlast = interconnect_axifull_2_user_slr1_to_s02_couplers_RLAST;
  assign S02_AXI_rresp[1:0] = interconnect_axifull_2_user_slr1_to_s02_couplers_RRESP;
  assign S02_AXI_rvalid = interconnect_axifull_2_user_slr1_to_s02_couplers_RVALID;
  assign interconnect_axifull_2_user_slr1_ACLK_net = ACLK;
  assign interconnect_axifull_2_user_slr1_ARESETN_net = ARESETN;
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_BREADY = S00_AXI_bready;
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_RREADY = S00_AXI_rready;
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_WDATA = S00_AXI_wdata[127:0];
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_WSTRB = S00_AXI_wstrb[15:0];
  assign interconnect_axifull_2_user_slr1_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign interconnect_axifull_2_user_slr1_to_s01_couplers_ARADDR = S01_AXI_araddr[63:0];
  assign interconnect_axifull_2_user_slr1_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign interconnect_axifull_2_user_slr1_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign interconnect_axifull_2_user_slr1_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign interconnect_axifull_2_user_slr1_to_s01_couplers_ARLOCK = S01_AXI_arlock[1:0];
  assign interconnect_axifull_2_user_slr1_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign interconnect_axifull_2_user_slr1_to_s01_couplers_ARQOS = S01_AXI_arqos[3:0];
  assign interconnect_axifull_2_user_slr1_to_s01_couplers_ARREGION = S01_AXI_arregion[3:0];
  assign interconnect_axifull_2_user_slr1_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign interconnect_axifull_2_user_slr1_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign interconnect_axifull_2_user_slr1_to_s01_couplers_RREADY = S01_AXI_rready;
  assign interconnect_axifull_2_user_slr1_to_s02_couplers_ARADDR = S02_AXI_araddr[63:0];
  assign interconnect_axifull_2_user_slr1_to_s02_couplers_ARBURST = S02_AXI_arburst[1:0];
  assign interconnect_axifull_2_user_slr1_to_s02_couplers_ARCACHE = S02_AXI_arcache[3:0];
  assign interconnect_axifull_2_user_slr1_to_s02_couplers_ARLEN = S02_AXI_arlen[7:0];
  assign interconnect_axifull_2_user_slr1_to_s02_couplers_ARLOCK = S02_AXI_arlock[1:0];
  assign interconnect_axifull_2_user_slr1_to_s02_couplers_ARPROT = S02_AXI_arprot[2:0];
  assign interconnect_axifull_2_user_slr1_to_s02_couplers_ARQOS = S02_AXI_arqos[3:0];
  assign interconnect_axifull_2_user_slr1_to_s02_couplers_ARREGION = S02_AXI_arregion[3:0];
  assign interconnect_axifull_2_user_slr1_to_s02_couplers_ARSIZE = S02_AXI_arsize[2:0];
  assign interconnect_axifull_2_user_slr1_to_s02_couplers_ARVALID = S02_AXI_arvalid;
  assign interconnect_axifull_2_user_slr1_to_s02_couplers_RREADY = S02_AXI_rready;
  assign m00_couplers_to_interconnect_axifull_2_user_slr1_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_interconnect_axifull_2_user_slr1_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_interconnect_axifull_2_user_slr1_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_interconnect_axifull_2_user_slr1_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_interconnect_axifull_2_user_slr1_RDATA = M00_AXI_rdata[127:0];
  assign m00_couplers_to_interconnect_axifull_2_user_slr1_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_interconnect_axifull_2_user_slr1_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_interconnect_axifull_2_user_slr1_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_interconnect_axifull_2_user_slr1_WREADY = M00_AXI_wready;
  m00_couplers_imp_1A4N1A0 m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_interconnect_axifull_2_user_slr1_ARADDR),
        .M_AXI_arburst(m00_couplers_to_interconnect_axifull_2_user_slr1_ARBURST),
        .M_AXI_arcache(m00_couplers_to_interconnect_axifull_2_user_slr1_ARCACHE),
        .M_AXI_arlen(m00_couplers_to_interconnect_axifull_2_user_slr1_ARLEN),
        .M_AXI_arlock(m00_couplers_to_interconnect_axifull_2_user_slr1_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_interconnect_axifull_2_user_slr1_ARPROT),
        .M_AXI_arqos(m00_couplers_to_interconnect_axifull_2_user_slr1_ARQOS),
        .M_AXI_arready(m00_couplers_to_interconnect_axifull_2_user_slr1_ARREADY),
        .M_AXI_arsize(m00_couplers_to_interconnect_axifull_2_user_slr1_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_interconnect_axifull_2_user_slr1_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_interconnect_axifull_2_user_slr1_AWADDR),
        .M_AXI_awburst(m00_couplers_to_interconnect_axifull_2_user_slr1_AWBURST),
        .M_AXI_awcache(m00_couplers_to_interconnect_axifull_2_user_slr1_AWCACHE),
        .M_AXI_awlen(m00_couplers_to_interconnect_axifull_2_user_slr1_AWLEN),
        .M_AXI_awlock(m00_couplers_to_interconnect_axifull_2_user_slr1_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_interconnect_axifull_2_user_slr1_AWPROT),
        .M_AXI_awqos(m00_couplers_to_interconnect_axifull_2_user_slr1_AWQOS),
        .M_AXI_awready(m00_couplers_to_interconnect_axifull_2_user_slr1_AWREADY),
        .M_AXI_awsize(m00_couplers_to_interconnect_axifull_2_user_slr1_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_interconnect_axifull_2_user_slr1_AWVALID),
        .M_AXI_bready(m00_couplers_to_interconnect_axifull_2_user_slr1_BREADY),
        .M_AXI_bresp(m00_couplers_to_interconnect_axifull_2_user_slr1_BRESP),
        .M_AXI_bvalid(m00_couplers_to_interconnect_axifull_2_user_slr1_BVALID),
        .M_AXI_rdata(m00_couplers_to_interconnect_axifull_2_user_slr1_RDATA),
        .M_AXI_rlast(m00_couplers_to_interconnect_axifull_2_user_slr1_RLAST),
        .M_AXI_rready(m00_couplers_to_interconnect_axifull_2_user_slr1_RREADY),
        .M_AXI_rresp(m00_couplers_to_interconnect_axifull_2_user_slr1_RRESP),
        .M_AXI_rvalid(m00_couplers_to_interconnect_axifull_2_user_slr1_RVALID),
        .M_AXI_wdata(m00_couplers_to_interconnect_axifull_2_user_slr1_WDATA),
        .M_AXI_wlast(m00_couplers_to_interconnect_axifull_2_user_slr1_WLAST),
        .M_AXI_wready(m00_couplers_to_interconnect_axifull_2_user_slr1_WREADY),
        .M_AXI_wstrb(m00_couplers_to_interconnect_axifull_2_user_slr1_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_interconnect_axifull_2_user_slr1_WVALID),
        .S_ACLK(interconnect_axifull_2_user_slr1_ACLK_net),
        .S_ARESETN(interconnect_axifull_2_user_slr1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_KLQFC8 s00_couplers
       (.M_ACLK(interconnect_axifull_2_user_slr1_ACLK_net),
        .M_ARESETN(interconnect_axifull_2_user_slr1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(interconnect_axifull_2_user_slr1_to_s00_couplers_ARADDR),
        .S_AXI_arburst(interconnect_axifull_2_user_slr1_to_s00_couplers_ARBURST),
        .S_AXI_arcache(interconnect_axifull_2_user_slr1_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(interconnect_axifull_2_user_slr1_to_s00_couplers_ARLEN),
        .S_AXI_arlock(interconnect_axifull_2_user_slr1_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(interconnect_axifull_2_user_slr1_to_s00_couplers_ARPROT),
        .S_AXI_arqos(interconnect_axifull_2_user_slr1_to_s00_couplers_ARQOS),
        .S_AXI_arready(interconnect_axifull_2_user_slr1_to_s00_couplers_ARREADY),
        .S_AXI_arregion(interconnect_axifull_2_user_slr1_to_s00_couplers_ARREGION),
        .S_AXI_arsize(interconnect_axifull_2_user_slr1_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(interconnect_axifull_2_user_slr1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(interconnect_axifull_2_user_slr1_to_s00_couplers_AWADDR),
        .S_AXI_awburst(interconnect_axifull_2_user_slr1_to_s00_couplers_AWBURST),
        .S_AXI_awcache(interconnect_axifull_2_user_slr1_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(interconnect_axifull_2_user_slr1_to_s00_couplers_AWLEN),
        .S_AXI_awlock(interconnect_axifull_2_user_slr1_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(interconnect_axifull_2_user_slr1_to_s00_couplers_AWPROT),
        .S_AXI_awqos(interconnect_axifull_2_user_slr1_to_s00_couplers_AWQOS),
        .S_AXI_awready(interconnect_axifull_2_user_slr1_to_s00_couplers_AWREADY),
        .S_AXI_awregion(interconnect_axifull_2_user_slr1_to_s00_couplers_AWREGION),
        .S_AXI_awsize(interconnect_axifull_2_user_slr1_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(interconnect_axifull_2_user_slr1_to_s00_couplers_AWVALID),
        .S_AXI_bready(interconnect_axifull_2_user_slr1_to_s00_couplers_BREADY),
        .S_AXI_bresp(interconnect_axifull_2_user_slr1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(interconnect_axifull_2_user_slr1_to_s00_couplers_BVALID),
        .S_AXI_rdata(interconnect_axifull_2_user_slr1_to_s00_couplers_RDATA),
        .S_AXI_rlast(interconnect_axifull_2_user_slr1_to_s00_couplers_RLAST),
        .S_AXI_rready(interconnect_axifull_2_user_slr1_to_s00_couplers_RREADY),
        .S_AXI_rresp(interconnect_axifull_2_user_slr1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(interconnect_axifull_2_user_slr1_to_s00_couplers_RVALID),
        .S_AXI_wdata(interconnect_axifull_2_user_slr1_to_s00_couplers_WDATA),
        .S_AXI_wlast(interconnect_axifull_2_user_slr1_to_s00_couplers_WLAST),
        .S_AXI_wready(interconnect_axifull_2_user_slr1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(interconnect_axifull_2_user_slr1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(interconnect_axifull_2_user_slr1_to_s00_couplers_WVALID));
  s01_couplers_imp_1N9NPO6 s01_couplers
       (.M_ACLK(interconnect_axifull_2_user_slr1_ACLK_net),
        .M_ARESETN(interconnect_axifull_2_user_slr1_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(interconnect_axifull_2_user_slr1_to_s01_couplers_ARADDR),
        .S_AXI_arburst(interconnect_axifull_2_user_slr1_to_s01_couplers_ARBURST),
        .S_AXI_arcache(interconnect_axifull_2_user_slr1_to_s01_couplers_ARCACHE),
        .S_AXI_arlen(interconnect_axifull_2_user_slr1_to_s01_couplers_ARLEN),
        .S_AXI_arlock(interconnect_axifull_2_user_slr1_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(interconnect_axifull_2_user_slr1_to_s01_couplers_ARPROT),
        .S_AXI_arqos(interconnect_axifull_2_user_slr1_to_s01_couplers_ARQOS),
        .S_AXI_arready(interconnect_axifull_2_user_slr1_to_s01_couplers_ARREADY),
        .S_AXI_arregion(interconnect_axifull_2_user_slr1_to_s01_couplers_ARREGION),
        .S_AXI_arsize(interconnect_axifull_2_user_slr1_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(interconnect_axifull_2_user_slr1_to_s01_couplers_ARVALID),
        .S_AXI_rdata(interconnect_axifull_2_user_slr1_to_s01_couplers_RDATA),
        .S_AXI_rlast(interconnect_axifull_2_user_slr1_to_s01_couplers_RLAST),
        .S_AXI_rready(interconnect_axifull_2_user_slr1_to_s01_couplers_RREADY),
        .S_AXI_rresp(interconnect_axifull_2_user_slr1_to_s01_couplers_RRESP),
        .S_AXI_rvalid(interconnect_axifull_2_user_slr1_to_s01_couplers_RVALID));
  s02_couplers_imp_1CF9C2D s02_couplers
       (.M_ACLK(interconnect_axifull_2_user_slr1_ACLK_net),
        .M_ARESETN(interconnect_axifull_2_user_slr1_ARESETN_net),
        .M_AXI_araddr(s02_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s02_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s02_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s02_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s02_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s02_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s02_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s02_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s02_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s02_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s02_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s02_couplers_to_xbar_RLAST),
        .M_AXI_rready(s02_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s02_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s02_couplers_to_xbar_RVALID),
        .S_ACLK(S02_ACLK_1),
        .S_ARESETN(S02_ARESETN_1),
        .S_AXI_araddr(interconnect_axifull_2_user_slr1_to_s02_couplers_ARADDR),
        .S_AXI_arburst(interconnect_axifull_2_user_slr1_to_s02_couplers_ARBURST),
        .S_AXI_arcache(interconnect_axifull_2_user_slr1_to_s02_couplers_ARCACHE),
        .S_AXI_arlen(interconnect_axifull_2_user_slr1_to_s02_couplers_ARLEN),
        .S_AXI_arlock(interconnect_axifull_2_user_slr1_to_s02_couplers_ARLOCK),
        .S_AXI_arprot(interconnect_axifull_2_user_slr1_to_s02_couplers_ARPROT),
        .S_AXI_arqos(interconnect_axifull_2_user_slr1_to_s02_couplers_ARQOS),
        .S_AXI_arready(interconnect_axifull_2_user_slr1_to_s02_couplers_ARREADY),
        .S_AXI_arregion(interconnect_axifull_2_user_slr1_to_s02_couplers_ARREGION),
        .S_AXI_arsize(interconnect_axifull_2_user_slr1_to_s02_couplers_ARSIZE),
        .S_AXI_arvalid(interconnect_axifull_2_user_slr1_to_s02_couplers_ARVALID),
        .S_AXI_rdata(interconnect_axifull_2_user_slr1_to_s02_couplers_RDATA),
        .S_AXI_rlast(interconnect_axifull_2_user_slr1_to_s02_couplers_RLAST),
        .S_AXI_rready(interconnect_axifull_2_user_slr1_to_s02_couplers_RREADY),
        .S_AXI_rresp(interconnect_axifull_2_user_slr1_to_s02_couplers_RRESP),
        .S_AXI_rvalid(interconnect_axifull_2_user_slr1_to_s02_couplers_RVALID));
  pfm_dynamic_xbar_1 xbar
       (.aclk(interconnect_axifull_2_user_slr1_ACLK_net),
        .aresetn(interconnect_axifull_2_user_slr1_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s02_couplers_to_xbar_ARADDR,s01_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s02_couplers_to_xbar_ARBURST,s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s02_couplers_to_xbar_ARCACHE,s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({s02_couplers_to_xbar_ARLEN,s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s02_couplers_to_xbar_ARLOCK,s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s02_couplers_to_xbar_ARPROT,s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s02_couplers_to_xbar_ARQOS,s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s02_couplers_to_xbar_ARREADY,s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s02_couplers_to_xbar_ARSIZE,s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s02_couplers_to_xbar_ARVALID,s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({1'b0,1'b0,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awsize({1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({1'b0,1'b0,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({1'b0,1'b0,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata({s02_couplers_to_xbar_RDATA,s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rlast({s02_couplers_to_xbar_RLAST,s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s02_couplers_to_xbar_RREADY,s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s02_couplers_to_xbar_RRESP,s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s02_couplers_to_xbar_RVALID,s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({1'b0,1'b0,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({1'b0,1'b0,s00_couplers_to_xbar_WVALID}));
endmodule

module pfm_dynamic_interconnect_axilite_user_slr1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [8:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [8:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [5:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [5:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire interconnect_axilite_user_slr1_ACLK_net;
  wire interconnect_axilite_user_slr1_ARESETN_net;
  wire [31:0]interconnect_axilite_user_slr1_to_s00_couplers_ARADDR;
  wire [2:0]interconnect_axilite_user_slr1_to_s00_couplers_ARPROT;
  wire interconnect_axilite_user_slr1_to_s00_couplers_ARREADY;
  wire interconnect_axilite_user_slr1_to_s00_couplers_ARVALID;
  wire [31:0]interconnect_axilite_user_slr1_to_s00_couplers_AWADDR;
  wire [2:0]interconnect_axilite_user_slr1_to_s00_couplers_AWPROT;
  wire interconnect_axilite_user_slr1_to_s00_couplers_AWREADY;
  wire interconnect_axilite_user_slr1_to_s00_couplers_AWVALID;
  wire interconnect_axilite_user_slr1_to_s00_couplers_BREADY;
  wire [1:0]interconnect_axilite_user_slr1_to_s00_couplers_BRESP;
  wire interconnect_axilite_user_slr1_to_s00_couplers_BVALID;
  wire [31:0]interconnect_axilite_user_slr1_to_s00_couplers_RDATA;
  wire interconnect_axilite_user_slr1_to_s00_couplers_RREADY;
  wire [1:0]interconnect_axilite_user_slr1_to_s00_couplers_RRESP;
  wire interconnect_axilite_user_slr1_to_s00_couplers_RVALID;
  wire [31:0]interconnect_axilite_user_slr1_to_s00_couplers_WDATA;
  wire interconnect_axilite_user_slr1_to_s00_couplers_WREADY;
  wire [3:0]interconnect_axilite_user_slr1_to_s00_couplers_WSTRB;
  wire interconnect_axilite_user_slr1_to_s00_couplers_WVALID;
  wire [8:0]m00_couplers_to_interconnect_axilite_user_slr1_ARADDR;
  wire m00_couplers_to_interconnect_axilite_user_slr1_ARREADY;
  wire m00_couplers_to_interconnect_axilite_user_slr1_ARVALID;
  wire [8:0]m00_couplers_to_interconnect_axilite_user_slr1_AWADDR;
  wire m00_couplers_to_interconnect_axilite_user_slr1_AWREADY;
  wire m00_couplers_to_interconnect_axilite_user_slr1_AWVALID;
  wire m00_couplers_to_interconnect_axilite_user_slr1_BREADY;
  wire [1:0]m00_couplers_to_interconnect_axilite_user_slr1_BRESP;
  wire m00_couplers_to_interconnect_axilite_user_slr1_BVALID;
  wire [31:0]m00_couplers_to_interconnect_axilite_user_slr1_RDATA;
  wire m00_couplers_to_interconnect_axilite_user_slr1_RREADY;
  wire [1:0]m00_couplers_to_interconnect_axilite_user_slr1_RRESP;
  wire m00_couplers_to_interconnect_axilite_user_slr1_RVALID;
  wire [31:0]m00_couplers_to_interconnect_axilite_user_slr1_WDATA;
  wire m00_couplers_to_interconnect_axilite_user_slr1_WREADY;
  wire [3:0]m00_couplers_to_interconnect_axilite_user_slr1_WSTRB;
  wire m00_couplers_to_interconnect_axilite_user_slr1_WVALID;
  wire [5:0]m01_couplers_to_interconnect_axilite_user_slr1_ARADDR;
  wire m01_couplers_to_interconnect_axilite_user_slr1_ARREADY;
  wire m01_couplers_to_interconnect_axilite_user_slr1_ARVALID;
  wire [5:0]m01_couplers_to_interconnect_axilite_user_slr1_AWADDR;
  wire m01_couplers_to_interconnect_axilite_user_slr1_AWREADY;
  wire m01_couplers_to_interconnect_axilite_user_slr1_AWVALID;
  wire m01_couplers_to_interconnect_axilite_user_slr1_BREADY;
  wire [1:0]m01_couplers_to_interconnect_axilite_user_slr1_BRESP;
  wire m01_couplers_to_interconnect_axilite_user_slr1_BVALID;
  wire [31:0]m01_couplers_to_interconnect_axilite_user_slr1_RDATA;
  wire m01_couplers_to_interconnect_axilite_user_slr1_RREADY;
  wire [1:0]m01_couplers_to_interconnect_axilite_user_slr1_RRESP;
  wire m01_couplers_to_interconnect_axilite_user_slr1_RVALID;
  wire [31:0]m01_couplers_to_interconnect_axilite_user_slr1_WDATA;
  wire m01_couplers_to_interconnect_axilite_user_slr1_WREADY;
  wire [3:0]m01_couplers_to_interconnect_axilite_user_slr1_WSTRB;
  wire m01_couplers_to_interconnect_axilite_user_slr1_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[8:0] = m00_couplers_to_interconnect_axilite_user_slr1_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_interconnect_axilite_user_slr1_ARVALID;
  assign M00_AXI_awaddr[8:0] = m00_couplers_to_interconnect_axilite_user_slr1_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_interconnect_axilite_user_slr1_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_interconnect_axilite_user_slr1_BREADY;
  assign M00_AXI_rready = m00_couplers_to_interconnect_axilite_user_slr1_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_interconnect_axilite_user_slr1_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_interconnect_axilite_user_slr1_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_interconnect_axilite_user_slr1_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[5:0] = m01_couplers_to_interconnect_axilite_user_slr1_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_interconnect_axilite_user_slr1_ARVALID;
  assign M01_AXI_awaddr[5:0] = m01_couplers_to_interconnect_axilite_user_slr1_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_interconnect_axilite_user_slr1_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_interconnect_axilite_user_slr1_BREADY;
  assign M01_AXI_rready = m01_couplers_to_interconnect_axilite_user_slr1_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_interconnect_axilite_user_slr1_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_interconnect_axilite_user_slr1_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_interconnect_axilite_user_slr1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = interconnect_axilite_user_slr1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = interconnect_axilite_user_slr1_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = interconnect_axilite_user_slr1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = interconnect_axilite_user_slr1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = interconnect_axilite_user_slr1_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = interconnect_axilite_user_slr1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = interconnect_axilite_user_slr1_to_s00_couplers_RVALID;
  assign S00_AXI_wready = interconnect_axilite_user_slr1_to_s00_couplers_WREADY;
  assign interconnect_axilite_user_slr1_ACLK_net = ACLK;
  assign interconnect_axilite_user_slr1_ARESETN_net = ARESETN;
  assign interconnect_axilite_user_slr1_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign interconnect_axilite_user_slr1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign interconnect_axilite_user_slr1_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign interconnect_axilite_user_slr1_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign interconnect_axilite_user_slr1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign interconnect_axilite_user_slr1_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign interconnect_axilite_user_slr1_to_s00_couplers_BREADY = S00_AXI_bready;
  assign interconnect_axilite_user_slr1_to_s00_couplers_RREADY = S00_AXI_rready;
  assign interconnect_axilite_user_slr1_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign interconnect_axilite_user_slr1_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign interconnect_axilite_user_slr1_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_interconnect_axilite_user_slr1_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_interconnect_axilite_user_slr1_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_interconnect_axilite_user_slr1_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_interconnect_axilite_user_slr1_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_interconnect_axilite_user_slr1_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_interconnect_axilite_user_slr1_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_interconnect_axilite_user_slr1_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_interconnect_axilite_user_slr1_WREADY = M00_AXI_wready;
  assign m01_couplers_to_interconnect_axilite_user_slr1_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_interconnect_axilite_user_slr1_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_interconnect_axilite_user_slr1_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_interconnect_axilite_user_slr1_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_interconnect_axilite_user_slr1_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_interconnect_axilite_user_slr1_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_interconnect_axilite_user_slr1_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_interconnect_axilite_user_slr1_WREADY = M01_AXI_wready;
  m00_couplers_imp_XZDQE6 m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_interconnect_axilite_user_slr1_ARADDR),
        .M_AXI_arready(m00_couplers_to_interconnect_axilite_user_slr1_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_interconnect_axilite_user_slr1_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_interconnect_axilite_user_slr1_AWADDR),
        .M_AXI_awready(m00_couplers_to_interconnect_axilite_user_slr1_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_interconnect_axilite_user_slr1_AWVALID),
        .M_AXI_bready(m00_couplers_to_interconnect_axilite_user_slr1_BREADY),
        .M_AXI_bresp(m00_couplers_to_interconnect_axilite_user_slr1_BRESP),
        .M_AXI_bvalid(m00_couplers_to_interconnect_axilite_user_slr1_BVALID),
        .M_AXI_rdata(m00_couplers_to_interconnect_axilite_user_slr1_RDATA),
        .M_AXI_rready(m00_couplers_to_interconnect_axilite_user_slr1_RREADY),
        .M_AXI_rresp(m00_couplers_to_interconnect_axilite_user_slr1_RRESP),
        .M_AXI_rvalid(m00_couplers_to_interconnect_axilite_user_slr1_RVALID),
        .M_AXI_wdata(m00_couplers_to_interconnect_axilite_user_slr1_WDATA),
        .M_AXI_wready(m00_couplers_to_interconnect_axilite_user_slr1_WREADY),
        .M_AXI_wstrb(m00_couplers_to_interconnect_axilite_user_slr1_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_interconnect_axilite_user_slr1_WVALID),
        .S_ACLK(interconnect_axilite_user_slr1_ACLK_net),
        .S_ARESETN(interconnect_axilite_user_slr1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1RPSKZK m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_interconnect_axilite_user_slr1_ARADDR),
        .M_AXI_arready(m01_couplers_to_interconnect_axilite_user_slr1_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_interconnect_axilite_user_slr1_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_interconnect_axilite_user_slr1_AWADDR),
        .M_AXI_awready(m01_couplers_to_interconnect_axilite_user_slr1_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_interconnect_axilite_user_slr1_AWVALID),
        .M_AXI_bready(m01_couplers_to_interconnect_axilite_user_slr1_BREADY),
        .M_AXI_bresp(m01_couplers_to_interconnect_axilite_user_slr1_BRESP),
        .M_AXI_bvalid(m01_couplers_to_interconnect_axilite_user_slr1_BVALID),
        .M_AXI_rdata(m01_couplers_to_interconnect_axilite_user_slr1_RDATA),
        .M_AXI_rready(m01_couplers_to_interconnect_axilite_user_slr1_RREADY),
        .M_AXI_rresp(m01_couplers_to_interconnect_axilite_user_slr1_RRESP),
        .M_AXI_rvalid(m01_couplers_to_interconnect_axilite_user_slr1_RVALID),
        .M_AXI_wdata(m01_couplers_to_interconnect_axilite_user_slr1_WDATA),
        .M_AXI_wready(m01_couplers_to_interconnect_axilite_user_slr1_WREADY),
        .M_AXI_wstrb(m01_couplers_to_interconnect_axilite_user_slr1_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_interconnect_axilite_user_slr1_WVALID),
        .S_ACLK(interconnect_axilite_user_slr1_ACLK_net),
        .S_ARESETN(interconnect_axilite_user_slr1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_15R05HQ s00_couplers
       (.M_ACLK(interconnect_axilite_user_slr1_ACLK_net),
        .M_ARESETN(interconnect_axilite_user_slr1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(interconnect_axilite_user_slr1_to_s00_couplers_ARADDR),
        .S_AXI_arprot(interconnect_axilite_user_slr1_to_s00_couplers_ARPROT),
        .S_AXI_arready(interconnect_axilite_user_slr1_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(interconnect_axilite_user_slr1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(interconnect_axilite_user_slr1_to_s00_couplers_AWADDR),
        .S_AXI_awprot(interconnect_axilite_user_slr1_to_s00_couplers_AWPROT),
        .S_AXI_awready(interconnect_axilite_user_slr1_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(interconnect_axilite_user_slr1_to_s00_couplers_AWVALID),
        .S_AXI_bready(interconnect_axilite_user_slr1_to_s00_couplers_BREADY),
        .S_AXI_bresp(interconnect_axilite_user_slr1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(interconnect_axilite_user_slr1_to_s00_couplers_BVALID),
        .S_AXI_rdata(interconnect_axilite_user_slr1_to_s00_couplers_RDATA),
        .S_AXI_rready(interconnect_axilite_user_slr1_to_s00_couplers_RREADY),
        .S_AXI_rresp(interconnect_axilite_user_slr1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(interconnect_axilite_user_slr1_to_s00_couplers_RVALID),
        .S_AXI_wdata(interconnect_axilite_user_slr1_to_s00_couplers_WDATA),
        .S_AXI_wready(interconnect_axilite_user_slr1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(interconnect_axilite_user_slr1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(interconnect_axilite_user_slr1_to_s00_couplers_WVALID));
  pfm_dynamic_xbar_2 xbar
       (.aclk(interconnect_axilite_user_slr1_ACLK_net),
        .aresetn(interconnect_axilite_user_slr1_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module reset_controllers_imp_UJLAET
   (clkwiz_kernel2_clk_out1,
    clkwiz_kernel2_locked,
    clkwiz_kernel3_clk_out,
    clkwiz_kernel4_clk_out,
    clkwiz_kernel5_clk_out,
    clkwiz_kernel6_clk_out,
    clkwiz_kernel_clk_out1,
    clkwiz_kernel_locked,
    clkwiz_sysclks_clk_out2,
    clkwiz_sysclks_locked,
    peripheral_aresetn,
    psreset_gate_pr_control_interconnect_aresetn,
    psreset_gate_pr_control_peripheral_aresetn,
    psreset_gate_pr_kernel2_interconnect_aresetn_0,
    psreset_gate_pr_kernel3_interconnect_aresetn,
    psreset_gate_pr_kernel4_interconnect_aresetn,
    psreset_gate_pr_kernel5_interconnect_aresetn,
    psreset_gate_pr_kernel6_interconnect_aresetn,
    psreset_gate_pr_kernel_interconnect_aresetn,
    slice_reset_kernel_pr_Dout);
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
  output [0:0]peripheral_aresetn;
  output [0:0]psreset_gate_pr_control_interconnect_aresetn;
  output [0:0]psreset_gate_pr_control_peripheral_aresetn;
  output [0:0]psreset_gate_pr_kernel2_interconnect_aresetn_0;
  output [0:0]psreset_gate_pr_kernel3_interconnect_aresetn;
  output [0:0]psreset_gate_pr_kernel4_interconnect_aresetn;
  output [0:0]psreset_gate_pr_kernel5_interconnect_aresetn;
  output [0:0]psreset_gate_pr_kernel6_interconnect_aresetn;
  output [0:0]psreset_gate_pr_kernel_interconnect_aresetn;
  input [0:0]slice_reset_kernel_pr_Dout;

  wire clkwiz_kernel3_clk_out_1;
  wire clkwiz_kernel4_clk_out_1;
  wire clkwiz_kernel5_clk_out_1;
  wire clkwiz_kernel6_clk_out_1;
  wire clkwiz_kernel_clk_out1;
  wire dcm_locked_1;
  wire dcm_locked_2;
  wire dcm_locked_4;
  wire [0:0]ext_reset_in_1;
  wire [0:0]psreset_gate_pr_control_interconnect_aresetn1;
  wire [0:0]psreset_gate_pr_control_peripheral_aresetn;
  wire [0:0]psreset_gate_pr_kernel2_interconnect_aresetn;
  wire [0:0]psreset_gate_pr_kernel3_interconnect_aresetn;
  wire [0:0]psreset_gate_pr_kernel4_interconnect_aresetn;
  wire [0:0]psreset_gate_pr_kernel5_interconnect_aresetn;
  wire [0:0]psreset_gate_pr_kernel6_interconnect_aresetn;
  wire [0:0]psreset_gate_pr_kernel_interconnect_aresetn;
  wire [0:0]psreset_gate_pr_kernel_peripheral_aresetn;
  wire slowest_sync_clk_1;
  wire slowest_sync_clk_4;

  assign clkwiz_kernel3_clk_out_1 = clkwiz_kernel3_clk_out;
  assign clkwiz_kernel4_clk_out_1 = clkwiz_kernel4_clk_out;
  assign clkwiz_kernel5_clk_out_1 = clkwiz_kernel5_clk_out;
  assign clkwiz_kernel6_clk_out_1 = clkwiz_kernel6_clk_out;
  assign dcm_locked_1 = clkwiz_kernel_locked;
  assign dcm_locked_2 = clkwiz_sysclks_locked;
  assign dcm_locked_4 = clkwiz_kernel2_locked;
  assign ext_reset_in_1 = slice_reset_kernel_pr_Dout[0];
  assign peripheral_aresetn[0] = psreset_gate_pr_kernel_peripheral_aresetn;
  assign psreset_gate_pr_control_interconnect_aresetn[0] = psreset_gate_pr_control_interconnect_aresetn1;
  assign psreset_gate_pr_kernel2_interconnect_aresetn_0[0] = psreset_gate_pr_kernel2_interconnect_aresetn;
  assign slowest_sync_clk_1 = clkwiz_sysclks_clk_out2;
  assign slowest_sync_clk_4 = clkwiz_kernel2_clk_out1;
  pfm_dynamic_psreset_gate_pr_control_0 psreset_gate_pr_control
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked_2),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(psreset_gate_pr_control_interconnect_aresetn1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(psreset_gate_pr_control_peripheral_aresetn),
        .slowest_sync_clk(slowest_sync_clk_1));
  pfm_dynamic_psreset_gate_pr_kernel_0 psreset_gate_pr_kernel
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked_1),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(psreset_gate_pr_kernel_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(psreset_gate_pr_kernel_peripheral_aresetn),
        .slowest_sync_clk(clkwiz_kernel_clk_out1));
  pfm_dynamic_psreset_gate_pr_kernel2_0 psreset_gate_pr_kernel2
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked_4),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(psreset_gate_pr_kernel2_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk_4));
  pfm_dynamic_psreset_gate_pr_kernel3_0 psreset_gate_pr_kernel3
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked_1),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(psreset_gate_pr_kernel3_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clkwiz_kernel3_clk_out_1));
  pfm_dynamic_psreset_gate_pr_kernel4_0 psreset_gate_pr_kernel4
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked_1),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(psreset_gate_pr_kernel4_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clkwiz_kernel4_clk_out_1));
  pfm_dynamic_psreset_gate_pr_kernel5_0 psreset_gate_pr_kernel5
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked_1),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(psreset_gate_pr_kernel5_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clkwiz_kernel6_clk_out_1));
  pfm_dynamic_psreset_gate_pr_kernel6_0 psreset_gate_pr_kernel6
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked_1),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(psreset_gate_pr_kernel6_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clkwiz_kernel5_clk_out_1));
endmodule

module s00_couplers_imp_139VRFP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_rs_w_to_s00_couplers_ARADDR;
  wire [1:0]auto_rs_w_to_s00_couplers_ARBURST;
  wire [3:0]auto_rs_w_to_s00_couplers_ARCACHE;
  wire [7:0]auto_rs_w_to_s00_couplers_ARLEN;
  wire [0:0]auto_rs_w_to_s00_couplers_ARLOCK;
  wire [2:0]auto_rs_w_to_s00_couplers_ARPROT;
  wire [3:0]auto_rs_w_to_s00_couplers_ARQOS;
  wire auto_rs_w_to_s00_couplers_ARREADY;
  wire [2:0]auto_rs_w_to_s00_couplers_ARSIZE;
  wire auto_rs_w_to_s00_couplers_ARVALID;
  wire [31:0]auto_rs_w_to_s00_couplers_AWADDR;
  wire [1:0]auto_rs_w_to_s00_couplers_AWBURST;
  wire [3:0]auto_rs_w_to_s00_couplers_AWCACHE;
  wire [7:0]auto_rs_w_to_s00_couplers_AWLEN;
  wire [0:0]auto_rs_w_to_s00_couplers_AWLOCK;
  wire [2:0]auto_rs_w_to_s00_couplers_AWPROT;
  wire [3:0]auto_rs_w_to_s00_couplers_AWQOS;
  wire auto_rs_w_to_s00_couplers_AWREADY;
  wire [2:0]auto_rs_w_to_s00_couplers_AWSIZE;
  wire auto_rs_w_to_s00_couplers_AWVALID;
  wire auto_rs_w_to_s00_couplers_BREADY;
  wire [1:0]auto_rs_w_to_s00_couplers_BRESP;
  wire auto_rs_w_to_s00_couplers_BVALID;
  wire [511:0]auto_rs_w_to_s00_couplers_RDATA;
  wire auto_rs_w_to_s00_couplers_RLAST;
  wire auto_rs_w_to_s00_couplers_RREADY;
  wire [1:0]auto_rs_w_to_s00_couplers_RRESP;
  wire auto_rs_w_to_s00_couplers_RVALID;
  wire [511:0]auto_rs_w_to_s00_couplers_WDATA;
  wire auto_rs_w_to_s00_couplers_WLAST;
  wire auto_rs_w_to_s00_couplers_WREADY;
  wire [63:0]auto_rs_w_to_s00_couplers_WSTRB;
  wire auto_rs_w_to_s00_couplers_WVALID;
  wire [31:0]auto_us_to_auto_rs_w_ARADDR;
  wire [1:0]auto_us_to_auto_rs_w_ARBURST;
  wire [3:0]auto_us_to_auto_rs_w_ARCACHE;
  wire [7:0]auto_us_to_auto_rs_w_ARLEN;
  wire [0:0]auto_us_to_auto_rs_w_ARLOCK;
  wire [2:0]auto_us_to_auto_rs_w_ARPROT;
  wire [3:0]auto_us_to_auto_rs_w_ARQOS;
  wire auto_us_to_auto_rs_w_ARREADY;
  wire [3:0]auto_us_to_auto_rs_w_ARREGION;
  wire [2:0]auto_us_to_auto_rs_w_ARSIZE;
  wire auto_us_to_auto_rs_w_ARVALID;
  wire [31:0]auto_us_to_auto_rs_w_AWADDR;
  wire [1:0]auto_us_to_auto_rs_w_AWBURST;
  wire [3:0]auto_us_to_auto_rs_w_AWCACHE;
  wire [7:0]auto_us_to_auto_rs_w_AWLEN;
  wire [0:0]auto_us_to_auto_rs_w_AWLOCK;
  wire [2:0]auto_us_to_auto_rs_w_AWPROT;
  wire [3:0]auto_us_to_auto_rs_w_AWQOS;
  wire auto_us_to_auto_rs_w_AWREADY;
  wire [3:0]auto_us_to_auto_rs_w_AWREGION;
  wire [2:0]auto_us_to_auto_rs_w_AWSIZE;
  wire auto_us_to_auto_rs_w_AWVALID;
  wire auto_us_to_auto_rs_w_BREADY;
  wire [1:0]auto_us_to_auto_rs_w_BRESP;
  wire auto_us_to_auto_rs_w_BVALID;
  wire [511:0]auto_us_to_auto_rs_w_RDATA;
  wire auto_us_to_auto_rs_w_RLAST;
  wire auto_us_to_auto_rs_w_RREADY;
  wire [1:0]auto_us_to_auto_rs_w_RRESP;
  wire auto_us_to_auto_rs_w_RVALID;
  wire [511:0]auto_us_to_auto_rs_w_WDATA;
  wire auto_us_to_auto_rs_w_WLAST;
  wire auto_us_to_auto_rs_w_WREADY;
  wire [63:0]auto_us_to_auto_rs_w_WSTRB;
  wire auto_us_to_auto_rs_w_WVALID;
  wire [31:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [0:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [3:0]s00_couplers_to_s00_regslice_ARREGION;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [31:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [0:0]s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [3:0]s00_couplers_to_s00_regslice_AWREGION;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [127:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [127:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [15:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [31:0]s00_regslice_to_auto_us_ARADDR;
  wire [1:0]s00_regslice_to_auto_us_ARBURST;
  wire [3:0]s00_regslice_to_auto_us_ARCACHE;
  wire [7:0]s00_regslice_to_auto_us_ARLEN;
  wire [0:0]s00_regslice_to_auto_us_ARLOCK;
  wire [2:0]s00_regslice_to_auto_us_ARPROT;
  wire [3:0]s00_regslice_to_auto_us_ARQOS;
  wire s00_regslice_to_auto_us_ARREADY;
  wire [3:0]s00_regslice_to_auto_us_ARREGION;
  wire [2:0]s00_regslice_to_auto_us_ARSIZE;
  wire s00_regslice_to_auto_us_ARVALID;
  wire [31:0]s00_regslice_to_auto_us_AWADDR;
  wire [1:0]s00_regslice_to_auto_us_AWBURST;
  wire [3:0]s00_regslice_to_auto_us_AWCACHE;
  wire [7:0]s00_regslice_to_auto_us_AWLEN;
  wire [0:0]s00_regslice_to_auto_us_AWLOCK;
  wire [2:0]s00_regslice_to_auto_us_AWPROT;
  wire [3:0]s00_regslice_to_auto_us_AWQOS;
  wire s00_regslice_to_auto_us_AWREADY;
  wire [3:0]s00_regslice_to_auto_us_AWREGION;
  wire [2:0]s00_regslice_to_auto_us_AWSIZE;
  wire s00_regslice_to_auto_us_AWVALID;
  wire s00_regslice_to_auto_us_BREADY;
  wire [1:0]s00_regslice_to_auto_us_BRESP;
  wire s00_regslice_to_auto_us_BVALID;
  wire [127:0]s00_regslice_to_auto_us_RDATA;
  wire s00_regslice_to_auto_us_RLAST;
  wire s00_regslice_to_auto_us_RREADY;
  wire [1:0]s00_regslice_to_auto_us_RRESP;
  wire s00_regslice_to_auto_us_RVALID;
  wire [127:0]s00_regslice_to_auto_us_WDATA;
  wire s00_regslice_to_auto_us_WLAST;
  wire s00_regslice_to_auto_us_WREADY;
  wire [15:0]s00_regslice_to_auto_us_WSTRB;
  wire s00_regslice_to_auto_us_WVALID;

  assign M_AXI_araddr[31:0] = auto_rs_w_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_rs_w_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_rs_w_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_rs_w_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_rs_w_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_rs_w_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_rs_w_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_rs_w_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_rs_w_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_rs_w_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_rs_w_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_rs_w_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_rs_w_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_rs_w_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_rs_w_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_rs_w_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_rs_w_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_rs_w_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_rs_w_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_rs_w_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_rs_w_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_rs_w_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_rs_w_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_rs_w_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[127:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign auto_rs_w_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_rs_w_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_rs_w_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_rs_w_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_rs_w_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_rs_w_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_rs_w_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_rs_w_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_rs_w_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[127:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[15:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  pfm_dynamic_auto_rs_w_1 auto_rs_w
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_rs_w_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_rs_w_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_rs_w_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_rs_w_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_rs_w_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_rs_w_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_rs_w_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_rs_w_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_rs_w_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_rs_w_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_rs_w_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_rs_w_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_rs_w_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_rs_w_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_rs_w_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_rs_w_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_rs_w_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_rs_w_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_rs_w_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_rs_w_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_rs_w_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_rs_w_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_rs_w_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_rs_w_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_rs_w_to_s00_couplers_RLAST),
        .m_axi_rready(auto_rs_w_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_rs_w_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_rs_w_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_rs_w_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_rs_w_to_s00_couplers_WLAST),
        .m_axi_wready(auto_rs_w_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_rs_w_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_rs_w_to_s00_couplers_WVALID),
        .s_axi_araddr(auto_us_to_auto_rs_w_ARADDR),
        .s_axi_arburst(auto_us_to_auto_rs_w_ARBURST),
        .s_axi_arcache(auto_us_to_auto_rs_w_ARCACHE),
        .s_axi_arlen(auto_us_to_auto_rs_w_ARLEN),
        .s_axi_arlock(auto_us_to_auto_rs_w_ARLOCK),
        .s_axi_arprot(auto_us_to_auto_rs_w_ARPROT),
        .s_axi_arqos(auto_us_to_auto_rs_w_ARQOS),
        .s_axi_arready(auto_us_to_auto_rs_w_ARREADY),
        .s_axi_arregion(auto_us_to_auto_rs_w_ARREGION),
        .s_axi_arsize(auto_us_to_auto_rs_w_ARSIZE),
        .s_axi_arvalid(auto_us_to_auto_rs_w_ARVALID),
        .s_axi_awaddr(auto_us_to_auto_rs_w_AWADDR),
        .s_axi_awburst(auto_us_to_auto_rs_w_AWBURST),
        .s_axi_awcache(auto_us_to_auto_rs_w_AWCACHE),
        .s_axi_awlen(auto_us_to_auto_rs_w_AWLEN),
        .s_axi_awlock(auto_us_to_auto_rs_w_AWLOCK),
        .s_axi_awprot(auto_us_to_auto_rs_w_AWPROT),
        .s_axi_awqos(auto_us_to_auto_rs_w_AWQOS),
        .s_axi_awready(auto_us_to_auto_rs_w_AWREADY),
        .s_axi_awregion(auto_us_to_auto_rs_w_AWREGION),
        .s_axi_awsize(auto_us_to_auto_rs_w_AWSIZE),
        .s_axi_awvalid(auto_us_to_auto_rs_w_AWVALID),
        .s_axi_bready(auto_us_to_auto_rs_w_BREADY),
        .s_axi_bresp(auto_us_to_auto_rs_w_BRESP),
        .s_axi_bvalid(auto_us_to_auto_rs_w_BVALID),
        .s_axi_rdata(auto_us_to_auto_rs_w_RDATA),
        .s_axi_rlast(auto_us_to_auto_rs_w_RLAST),
        .s_axi_rready(auto_us_to_auto_rs_w_RREADY),
        .s_axi_rresp(auto_us_to_auto_rs_w_RRESP),
        .s_axi_rvalid(auto_us_to_auto_rs_w_RVALID),
        .s_axi_wdata(auto_us_to_auto_rs_w_WDATA),
        .s_axi_wlast(auto_us_to_auto_rs_w_WLAST),
        .s_axi_wready(auto_us_to_auto_rs_w_WREADY),
        .s_axi_wstrb(auto_us_to_auto_rs_w_WSTRB),
        .s_axi_wvalid(auto_us_to_auto_rs_w_WVALID));
  pfm_dynamic_auto_us_0 auto_us
       (.m_axi_araddr(auto_us_to_auto_rs_w_ARADDR),
        .m_axi_arburst(auto_us_to_auto_rs_w_ARBURST),
        .m_axi_arcache(auto_us_to_auto_rs_w_ARCACHE),
        .m_axi_arlen(auto_us_to_auto_rs_w_ARLEN),
        .m_axi_arlock(auto_us_to_auto_rs_w_ARLOCK),
        .m_axi_arprot(auto_us_to_auto_rs_w_ARPROT),
        .m_axi_arqos(auto_us_to_auto_rs_w_ARQOS),
        .m_axi_arready(auto_us_to_auto_rs_w_ARREADY),
        .m_axi_arregion(auto_us_to_auto_rs_w_ARREGION),
        .m_axi_arsize(auto_us_to_auto_rs_w_ARSIZE),
        .m_axi_arvalid(auto_us_to_auto_rs_w_ARVALID),
        .m_axi_awaddr(auto_us_to_auto_rs_w_AWADDR),
        .m_axi_awburst(auto_us_to_auto_rs_w_AWBURST),
        .m_axi_awcache(auto_us_to_auto_rs_w_AWCACHE),
        .m_axi_awlen(auto_us_to_auto_rs_w_AWLEN),
        .m_axi_awlock(auto_us_to_auto_rs_w_AWLOCK),
        .m_axi_awprot(auto_us_to_auto_rs_w_AWPROT),
        .m_axi_awqos(auto_us_to_auto_rs_w_AWQOS),
        .m_axi_awready(auto_us_to_auto_rs_w_AWREADY),
        .m_axi_awregion(auto_us_to_auto_rs_w_AWREGION),
        .m_axi_awsize(auto_us_to_auto_rs_w_AWSIZE),
        .m_axi_awvalid(auto_us_to_auto_rs_w_AWVALID),
        .m_axi_bready(auto_us_to_auto_rs_w_BREADY),
        .m_axi_bresp(auto_us_to_auto_rs_w_BRESP),
        .m_axi_bvalid(auto_us_to_auto_rs_w_BVALID),
        .m_axi_rdata(auto_us_to_auto_rs_w_RDATA),
        .m_axi_rlast(auto_us_to_auto_rs_w_RLAST),
        .m_axi_rready(auto_us_to_auto_rs_w_RREADY),
        .m_axi_rresp(auto_us_to_auto_rs_w_RRESP),
        .m_axi_rvalid(auto_us_to_auto_rs_w_RVALID),
        .m_axi_wdata(auto_us_to_auto_rs_w_WDATA),
        .m_axi_wlast(auto_us_to_auto_rs_w_WLAST),
        .m_axi_wready(auto_us_to_auto_rs_w_WREADY),
        .m_axi_wstrb(auto_us_to_auto_rs_w_WSTRB),
        .m_axi_wvalid(auto_us_to_auto_rs_w_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_regslice_to_auto_us_ARADDR),
        .s_axi_arburst(s00_regslice_to_auto_us_ARBURST),
        .s_axi_arcache(s00_regslice_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s00_regslice_to_auto_us_ARLEN),
        .s_axi_arlock(s00_regslice_to_auto_us_ARLOCK),
        .s_axi_arprot(s00_regslice_to_auto_us_ARPROT),
        .s_axi_arqos(s00_regslice_to_auto_us_ARQOS),
        .s_axi_arready(s00_regslice_to_auto_us_ARREADY),
        .s_axi_arregion(s00_regslice_to_auto_us_ARREGION),
        .s_axi_arsize(s00_regslice_to_auto_us_ARSIZE),
        .s_axi_arvalid(s00_regslice_to_auto_us_ARVALID),
        .s_axi_awaddr(s00_regslice_to_auto_us_AWADDR),
        .s_axi_awburst(s00_regslice_to_auto_us_AWBURST),
        .s_axi_awcache(s00_regslice_to_auto_us_AWCACHE),
        .s_axi_awlen(s00_regslice_to_auto_us_AWLEN),
        .s_axi_awlock(s00_regslice_to_auto_us_AWLOCK),
        .s_axi_awprot(s00_regslice_to_auto_us_AWPROT),
        .s_axi_awqos(s00_regslice_to_auto_us_AWQOS),
        .s_axi_awready(s00_regslice_to_auto_us_AWREADY),
        .s_axi_awregion(s00_regslice_to_auto_us_AWREGION),
        .s_axi_awsize(s00_regslice_to_auto_us_AWSIZE),
        .s_axi_awvalid(s00_regslice_to_auto_us_AWVALID),
        .s_axi_bready(s00_regslice_to_auto_us_BREADY),
        .s_axi_bresp(s00_regslice_to_auto_us_BRESP),
        .s_axi_bvalid(s00_regslice_to_auto_us_BVALID),
        .s_axi_rdata(s00_regslice_to_auto_us_RDATA),
        .s_axi_rlast(s00_regslice_to_auto_us_RLAST),
        .s_axi_rready(s00_regslice_to_auto_us_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_us_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_us_RVALID),
        .s_axi_wdata(s00_regslice_to_auto_us_WDATA),
        .s_axi_wlast(s00_regslice_to_auto_us_WLAST),
        .s_axi_wready(s00_regslice_to_auto_us_WREADY),
        .s_axi_wstrb(s00_regslice_to_auto_us_WSTRB),
        .s_axi_wvalid(s00_regslice_to_auto_us_WVALID));
  pfm_dynamic_s00_regslice_35 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_auto_us_ARADDR),
        .m_axi_arburst(s00_regslice_to_auto_us_ARBURST),
        .m_axi_arcache(s00_regslice_to_auto_us_ARCACHE),
        .m_axi_arlen(s00_regslice_to_auto_us_ARLEN),
        .m_axi_arlock(s00_regslice_to_auto_us_ARLOCK),
        .m_axi_arprot(s00_regslice_to_auto_us_ARPROT),
        .m_axi_arqos(s00_regslice_to_auto_us_ARQOS),
        .m_axi_arready(s00_regslice_to_auto_us_ARREADY),
        .m_axi_arregion(s00_regslice_to_auto_us_ARREGION),
        .m_axi_arsize(s00_regslice_to_auto_us_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_auto_us_ARVALID),
        .m_axi_awaddr(s00_regslice_to_auto_us_AWADDR),
        .m_axi_awburst(s00_regslice_to_auto_us_AWBURST),
        .m_axi_awcache(s00_regslice_to_auto_us_AWCACHE),
        .m_axi_awlen(s00_regslice_to_auto_us_AWLEN),
        .m_axi_awlock(s00_regslice_to_auto_us_AWLOCK),
        .m_axi_awprot(s00_regslice_to_auto_us_AWPROT),
        .m_axi_awqos(s00_regslice_to_auto_us_AWQOS),
        .m_axi_awready(s00_regslice_to_auto_us_AWREADY),
        .m_axi_awregion(s00_regslice_to_auto_us_AWREGION),
        .m_axi_awsize(s00_regslice_to_auto_us_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_auto_us_AWVALID),
        .m_axi_bready(s00_regslice_to_auto_us_BREADY),
        .m_axi_bresp(s00_regslice_to_auto_us_BRESP),
        .m_axi_bvalid(s00_regslice_to_auto_us_BVALID),
        .m_axi_rdata(s00_regslice_to_auto_us_RDATA),
        .m_axi_rlast(s00_regslice_to_auto_us_RLAST),
        .m_axi_rready(s00_regslice_to_auto_us_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_us_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_us_RVALID),
        .m_axi_wdata(s00_regslice_to_auto_us_WDATA),
        .m_axi_wlast(s00_regslice_to_auto_us_WLAST),
        .m_axi_wready(s00_regslice_to_auto_us_WREADY),
        .m_axi_wstrb(s00_regslice_to_auto_us_WSTRB),
        .m_axi_wvalid(s00_regslice_to_auto_us_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion(s00_couplers_to_s00_regslice_ARREGION),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion(s00_couplers_to_s00_regslice_AWREGION),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_15R05HQ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [31:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [31:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [31:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [3:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [31:0]s00_regslice_to_s00_couplers_ARADDR;
  wire [2:0]s00_regslice_to_s00_couplers_ARPROT;
  wire s00_regslice_to_s00_couplers_ARREADY;
  wire s00_regslice_to_s00_couplers_ARVALID;
  wire [31:0]s00_regslice_to_s00_couplers_AWADDR;
  wire [2:0]s00_regslice_to_s00_couplers_AWPROT;
  wire s00_regslice_to_s00_couplers_AWREADY;
  wire s00_regslice_to_s00_couplers_AWVALID;
  wire s00_regslice_to_s00_couplers_BREADY;
  wire [1:0]s00_regslice_to_s00_couplers_BRESP;
  wire s00_regslice_to_s00_couplers_BVALID;
  wire [31:0]s00_regslice_to_s00_couplers_RDATA;
  wire s00_regslice_to_s00_couplers_RREADY;
  wire [1:0]s00_regslice_to_s00_couplers_RRESP;
  wire s00_regslice_to_s00_couplers_RVALID;
  wire [31:0]s00_regslice_to_s00_couplers_WDATA;
  wire s00_regslice_to_s00_couplers_WREADY;
  wire [3:0]s00_regslice_to_s00_couplers_WSTRB;
  wire s00_regslice_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_regslice_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_regslice_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_regslice_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_regslice_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_regslice_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_regslice_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_regslice_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_regslice_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_regslice_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_regslice_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_regslice_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  assign s00_regslice_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_regslice_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_regslice_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_regslice_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_regslice_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_regslice_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_regslice_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_regslice_to_s00_couplers_WREADY = M_AXI_wready;
  pfm_dynamic_s00_regslice_40 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_s00_couplers_ARADDR),
        .m_axi_arprot(s00_regslice_to_s00_couplers_ARPROT),
        .m_axi_arready(s00_regslice_to_s00_couplers_ARREADY),
        .m_axi_arvalid(s00_regslice_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_regslice_to_s00_couplers_AWADDR),
        .m_axi_awprot(s00_regslice_to_s00_couplers_AWPROT),
        .m_axi_awready(s00_regslice_to_s00_couplers_AWREADY),
        .m_axi_awvalid(s00_regslice_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_regslice_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_regslice_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_regslice_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_regslice_to_s00_couplers_RDATA),
        .m_axi_rready(s00_regslice_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_regslice_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_regslice_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_regslice_to_s00_couplers_WDATA),
        .m_axi_wready(s00_regslice_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_regslice_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_regslice_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_1HPK08H
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [0:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [3:0]s00_couplers_to_s00_regslice_ARREGION;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [31:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [0:0]s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [3:0]s00_couplers_to_s00_regslice_AWREGION;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [127:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [127:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [15:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [31:0]s00_regslice_to_s00_couplers_ARADDR;
  wire [1:0]s00_regslice_to_s00_couplers_ARBURST;
  wire [3:0]s00_regslice_to_s00_couplers_ARCACHE;
  wire [7:0]s00_regslice_to_s00_couplers_ARLEN;
  wire [0:0]s00_regslice_to_s00_couplers_ARLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_ARPROT;
  wire [3:0]s00_regslice_to_s00_couplers_ARQOS;
  wire s00_regslice_to_s00_couplers_ARREADY;
  wire [2:0]s00_regslice_to_s00_couplers_ARSIZE;
  wire s00_regslice_to_s00_couplers_ARVALID;
  wire [31:0]s00_regslice_to_s00_couplers_AWADDR;
  wire [1:0]s00_regslice_to_s00_couplers_AWBURST;
  wire [3:0]s00_regslice_to_s00_couplers_AWCACHE;
  wire [7:0]s00_regslice_to_s00_couplers_AWLEN;
  wire [0:0]s00_regslice_to_s00_couplers_AWLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_AWPROT;
  wire [3:0]s00_regslice_to_s00_couplers_AWQOS;
  wire s00_regslice_to_s00_couplers_AWREADY;
  wire [2:0]s00_regslice_to_s00_couplers_AWSIZE;
  wire s00_regslice_to_s00_couplers_AWVALID;
  wire s00_regslice_to_s00_couplers_BREADY;
  wire [1:0]s00_regslice_to_s00_couplers_BRESP;
  wire s00_regslice_to_s00_couplers_BVALID;
  wire [127:0]s00_regslice_to_s00_couplers_RDATA;
  wire s00_regslice_to_s00_couplers_RLAST;
  wire s00_regslice_to_s00_couplers_RREADY;
  wire [1:0]s00_regslice_to_s00_couplers_RRESP;
  wire s00_regslice_to_s00_couplers_RVALID;
  wire [127:0]s00_regslice_to_s00_couplers_WDATA;
  wire s00_regslice_to_s00_couplers_WLAST;
  wire s00_regslice_to_s00_couplers_WREADY;
  wire [15:0]s00_regslice_to_s00_couplers_WSTRB;
  wire s00_regslice_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_regslice_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_regslice_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_regslice_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s00_regslice_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_regslice_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_regslice_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_regslice_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_regslice_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_regslice_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_regslice_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_regslice_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_regslice_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s00_regslice_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_regslice_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_regslice_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_regslice_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_regslice_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_regslice_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_regslice_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_regslice_to_s00_couplers_RREADY;
  assign M_AXI_wdata[127:0] = s00_regslice_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_regslice_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = s00_regslice_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_regslice_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[127:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[127:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[15:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  assign s00_regslice_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_regslice_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_regslice_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_regslice_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_regslice_to_s00_couplers_RDATA = M_AXI_rdata[127:0];
  assign s00_regslice_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_regslice_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_regslice_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_regslice_to_s00_couplers_WREADY = M_AXI_wready;
  pfm_dynamic_s00_regslice_38 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_regslice_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_regslice_to_s00_couplers_ARCACHE),
        .m_axi_arlen(s00_regslice_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_regslice_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_regslice_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_regslice_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_regslice_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_regslice_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_regslice_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_regslice_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_regslice_to_s00_couplers_AWCACHE),
        .m_axi_awlen(s00_regslice_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_regslice_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_regslice_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_regslice_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_regslice_to_s00_couplers_AWREADY),
        .m_axi_awsize(s00_regslice_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_regslice_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_regslice_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_regslice_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_regslice_to_s00_couplers_RDATA),
        .m_axi_rlast(s00_regslice_to_s00_couplers_RLAST),
        .m_axi_rready(s00_regslice_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_regslice_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_regslice_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_regslice_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_regslice_to_s00_couplers_WLAST),
        .m_axi_wready(s00_regslice_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_regslice_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_regslice_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion(s00_couplers_to_s00_regslice_ARREGION),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion(s00_couplers_to_s00_regslice_AWREGION),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_2LVM1Y
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [15:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [15:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [15:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input [15:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [15:0]s00_couplers_to_s00_regslice_ARID;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [0:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [3:0]s00_couplers_to_s00_regslice_ARREGION;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [31:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [15:0]s00_couplers_to_s00_regslice_AWID;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [0:0]s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [3:0]s00_couplers_to_s00_regslice_AWREGION;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire [15:0]s00_couplers_to_s00_regslice_BID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [127:0]s00_couplers_to_s00_regslice_RDATA;
  wire [15:0]s00_couplers_to_s00_regslice_RID;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [127:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [15:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [31:0]s00_regslice_to_s00_couplers_ARADDR;
  wire [1:0]s00_regslice_to_s00_couplers_ARBURST;
  wire [3:0]s00_regslice_to_s00_couplers_ARCACHE;
  wire [15:0]s00_regslice_to_s00_couplers_ARID;
  wire [7:0]s00_regslice_to_s00_couplers_ARLEN;
  wire [0:0]s00_regslice_to_s00_couplers_ARLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_ARPROT;
  wire [3:0]s00_regslice_to_s00_couplers_ARQOS;
  wire s00_regslice_to_s00_couplers_ARREADY;
  wire [3:0]s00_regslice_to_s00_couplers_ARREGION;
  wire [2:0]s00_regslice_to_s00_couplers_ARSIZE;
  wire s00_regslice_to_s00_couplers_ARVALID;
  wire [31:0]s00_regslice_to_s00_couplers_AWADDR;
  wire [1:0]s00_regslice_to_s00_couplers_AWBURST;
  wire [3:0]s00_regslice_to_s00_couplers_AWCACHE;
  wire [15:0]s00_regslice_to_s00_couplers_AWID;
  wire [7:0]s00_regslice_to_s00_couplers_AWLEN;
  wire [0:0]s00_regslice_to_s00_couplers_AWLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_AWPROT;
  wire [3:0]s00_regslice_to_s00_couplers_AWQOS;
  wire s00_regslice_to_s00_couplers_AWREADY;
  wire [3:0]s00_regslice_to_s00_couplers_AWREGION;
  wire [2:0]s00_regslice_to_s00_couplers_AWSIZE;
  wire s00_regslice_to_s00_couplers_AWVALID;
  wire [15:0]s00_regslice_to_s00_couplers_BID;
  wire s00_regslice_to_s00_couplers_BREADY;
  wire [1:0]s00_regslice_to_s00_couplers_BRESP;
  wire s00_regslice_to_s00_couplers_BVALID;
  wire [127:0]s00_regslice_to_s00_couplers_RDATA;
  wire [15:0]s00_regslice_to_s00_couplers_RID;
  wire s00_regslice_to_s00_couplers_RLAST;
  wire s00_regslice_to_s00_couplers_RREADY;
  wire [1:0]s00_regslice_to_s00_couplers_RRESP;
  wire s00_regslice_to_s00_couplers_RVALID;
  wire [127:0]s00_regslice_to_s00_couplers_WDATA;
  wire s00_regslice_to_s00_couplers_WLAST;
  wire s00_regslice_to_s00_couplers_WREADY;
  wire [15:0]s00_regslice_to_s00_couplers_WSTRB;
  wire s00_regslice_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_regslice_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_regslice_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_regslice_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[15:0] = s00_regslice_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_regslice_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_regslice_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_regslice_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_regslice_to_s00_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = s00_regslice_to_s00_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = s00_regslice_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_regslice_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_regslice_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_regslice_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_regslice_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[15:0] = s00_regslice_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_regslice_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_regslice_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_regslice_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_regslice_to_s00_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = s00_regslice_to_s00_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = s00_regslice_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_regslice_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_regslice_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_regslice_to_s00_couplers_RREADY;
  assign M_AXI_wdata[127:0] = s00_regslice_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_regslice_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = s00_regslice_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_regslice_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_s00_regslice_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[127:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_s00_regslice_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[127:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[15:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  assign s00_regslice_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_regslice_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_regslice_to_s00_couplers_BID = M_AXI_bid[15:0];
  assign s00_regslice_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_regslice_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_regslice_to_s00_couplers_RDATA = M_AXI_rdata[127:0];
  assign s00_regslice_to_s00_couplers_RID = M_AXI_rid[15:0];
  assign s00_regslice_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_regslice_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_regslice_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_regslice_to_s00_couplers_WREADY = M_AXI_wready;
  pfm_dynamic_s00_regslice_37 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_regslice_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_regslice_to_s00_couplers_ARCACHE),
        .m_axi_arid(s00_regslice_to_s00_couplers_ARID),
        .m_axi_arlen(s00_regslice_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_regslice_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_regslice_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_regslice_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_regslice_to_s00_couplers_ARREADY),
        .m_axi_arregion(s00_regslice_to_s00_couplers_ARREGION),
        .m_axi_arsize(s00_regslice_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_regslice_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_regslice_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_regslice_to_s00_couplers_AWCACHE),
        .m_axi_awid(s00_regslice_to_s00_couplers_AWID),
        .m_axi_awlen(s00_regslice_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_regslice_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_regslice_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_regslice_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_regslice_to_s00_couplers_AWREADY),
        .m_axi_awregion(s00_regslice_to_s00_couplers_AWREGION),
        .m_axi_awsize(s00_regslice_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_s00_couplers_AWVALID),
        .m_axi_bid(s00_regslice_to_s00_couplers_BID),
        .m_axi_bready(s00_regslice_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_regslice_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_regslice_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_regslice_to_s00_couplers_RDATA),
        .m_axi_rid(s00_regslice_to_s00_couplers_RID),
        .m_axi_rlast(s00_regslice_to_s00_couplers_RLAST),
        .m_axi_rready(s00_regslice_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_regslice_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_regslice_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_regslice_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_regslice_to_s00_couplers_WLAST),
        .m_axi_wready(s00_regslice_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_regslice_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_regslice_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arid(s00_couplers_to_s00_regslice_ARID),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion(s00_couplers_to_s00_regslice_ARREGION),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awid(s00_couplers_to_s00_regslice_AWID),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion(s00_couplers_to_s00_regslice_AWREGION),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bid(s00_couplers_to_s00_regslice_BID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rid(s00_couplers_to_s00_regslice_RID),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_B3UQP7
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [0:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [3:0]s00_couplers_to_s00_regslice_ARREGION;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [31:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [0:0]s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [3:0]s00_couplers_to_s00_regslice_AWREGION;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [127:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [127:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [15:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [31:0]s00_regslice_to_s00_couplers_ARADDR;
  wire [1:0]s00_regslice_to_s00_couplers_ARBURST;
  wire [3:0]s00_regslice_to_s00_couplers_ARCACHE;
  wire [7:0]s00_regslice_to_s00_couplers_ARLEN;
  wire [0:0]s00_regslice_to_s00_couplers_ARLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_ARPROT;
  wire [3:0]s00_regslice_to_s00_couplers_ARQOS;
  wire s00_regslice_to_s00_couplers_ARREADY;
  wire [2:0]s00_regslice_to_s00_couplers_ARSIZE;
  wire s00_regslice_to_s00_couplers_ARVALID;
  wire [31:0]s00_regslice_to_s00_couplers_AWADDR;
  wire [1:0]s00_regslice_to_s00_couplers_AWBURST;
  wire [3:0]s00_regslice_to_s00_couplers_AWCACHE;
  wire [7:0]s00_regslice_to_s00_couplers_AWLEN;
  wire [0:0]s00_regslice_to_s00_couplers_AWLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_AWPROT;
  wire [3:0]s00_regslice_to_s00_couplers_AWQOS;
  wire s00_regslice_to_s00_couplers_AWREADY;
  wire [2:0]s00_regslice_to_s00_couplers_AWSIZE;
  wire s00_regslice_to_s00_couplers_AWVALID;
  wire s00_regslice_to_s00_couplers_BREADY;
  wire [1:0]s00_regslice_to_s00_couplers_BRESP;
  wire s00_regslice_to_s00_couplers_BVALID;
  wire [127:0]s00_regslice_to_s00_couplers_RDATA;
  wire s00_regslice_to_s00_couplers_RLAST;
  wire s00_regslice_to_s00_couplers_RREADY;
  wire [1:0]s00_regslice_to_s00_couplers_RRESP;
  wire s00_regslice_to_s00_couplers_RVALID;
  wire [127:0]s00_regslice_to_s00_couplers_WDATA;
  wire s00_regslice_to_s00_couplers_WLAST;
  wire s00_regslice_to_s00_couplers_WREADY;
  wire [15:0]s00_regslice_to_s00_couplers_WSTRB;
  wire s00_regslice_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_regslice_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_regslice_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_regslice_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s00_regslice_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_regslice_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_regslice_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_regslice_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_regslice_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_regslice_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_regslice_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_regslice_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_regslice_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s00_regslice_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_regslice_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_regslice_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_regslice_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_regslice_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_regslice_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_regslice_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_regslice_to_s00_couplers_RREADY;
  assign M_AXI_wdata[127:0] = s00_regslice_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_regslice_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = s00_regslice_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_regslice_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[127:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[127:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[15:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  assign s00_regslice_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_regslice_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_regslice_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_regslice_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_regslice_to_s00_couplers_RDATA = M_AXI_rdata[127:0];
  assign s00_regslice_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_regslice_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_regslice_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_regslice_to_s00_couplers_WREADY = M_AXI_wready;
  pfm_dynamic_s00_regslice_36 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_regslice_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_regslice_to_s00_couplers_ARCACHE),
        .m_axi_arlen(s00_regslice_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_regslice_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_regslice_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_regslice_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_regslice_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_regslice_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_regslice_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_regslice_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_regslice_to_s00_couplers_AWCACHE),
        .m_axi_awlen(s00_regslice_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_regslice_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_regslice_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_regslice_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_regslice_to_s00_couplers_AWREADY),
        .m_axi_awsize(s00_regslice_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_regslice_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_regslice_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_regslice_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_regslice_to_s00_couplers_RDATA),
        .m_axi_rlast(s00_regslice_to_s00_couplers_RLAST),
        .m_axi_rready(s00_regslice_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_regslice_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_regslice_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_regslice_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_regslice_to_s00_couplers_WLAST),
        .m_axi_wready(s00_regslice_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_regslice_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_regslice_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion(s00_couplers_to_s00_regslice_ARREGION),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion(s00_couplers_to_s00_regslice_AWREGION),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_KLQFC8
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_rs_w_to_s00_couplers_ARADDR;
  wire [1:0]auto_rs_w_to_s00_couplers_ARBURST;
  wire [3:0]auto_rs_w_to_s00_couplers_ARCACHE;
  wire [7:0]auto_rs_w_to_s00_couplers_ARLEN;
  wire [0:0]auto_rs_w_to_s00_couplers_ARLOCK;
  wire [2:0]auto_rs_w_to_s00_couplers_ARPROT;
  wire [3:0]auto_rs_w_to_s00_couplers_ARQOS;
  wire auto_rs_w_to_s00_couplers_ARREADY;
  wire [2:0]auto_rs_w_to_s00_couplers_ARSIZE;
  wire auto_rs_w_to_s00_couplers_ARVALID;
  wire [31:0]auto_rs_w_to_s00_couplers_AWADDR;
  wire [1:0]auto_rs_w_to_s00_couplers_AWBURST;
  wire [3:0]auto_rs_w_to_s00_couplers_AWCACHE;
  wire [7:0]auto_rs_w_to_s00_couplers_AWLEN;
  wire [0:0]auto_rs_w_to_s00_couplers_AWLOCK;
  wire [2:0]auto_rs_w_to_s00_couplers_AWPROT;
  wire [3:0]auto_rs_w_to_s00_couplers_AWQOS;
  wire auto_rs_w_to_s00_couplers_AWREADY;
  wire [2:0]auto_rs_w_to_s00_couplers_AWSIZE;
  wire auto_rs_w_to_s00_couplers_AWVALID;
  wire auto_rs_w_to_s00_couplers_BREADY;
  wire [1:0]auto_rs_w_to_s00_couplers_BRESP;
  wire auto_rs_w_to_s00_couplers_BVALID;
  wire [511:0]auto_rs_w_to_s00_couplers_RDATA;
  wire auto_rs_w_to_s00_couplers_RLAST;
  wire auto_rs_w_to_s00_couplers_RREADY;
  wire [1:0]auto_rs_w_to_s00_couplers_RRESP;
  wire auto_rs_w_to_s00_couplers_RVALID;
  wire [511:0]auto_rs_w_to_s00_couplers_WDATA;
  wire auto_rs_w_to_s00_couplers_WLAST;
  wire auto_rs_w_to_s00_couplers_WREADY;
  wire [63:0]auto_rs_w_to_s00_couplers_WSTRB;
  wire auto_rs_w_to_s00_couplers_WVALID;
  wire [31:0]auto_us_to_auto_rs_w_ARADDR;
  wire [1:0]auto_us_to_auto_rs_w_ARBURST;
  wire [3:0]auto_us_to_auto_rs_w_ARCACHE;
  wire [7:0]auto_us_to_auto_rs_w_ARLEN;
  wire [0:0]auto_us_to_auto_rs_w_ARLOCK;
  wire [2:0]auto_us_to_auto_rs_w_ARPROT;
  wire [3:0]auto_us_to_auto_rs_w_ARQOS;
  wire auto_us_to_auto_rs_w_ARREADY;
  wire [3:0]auto_us_to_auto_rs_w_ARREGION;
  wire [2:0]auto_us_to_auto_rs_w_ARSIZE;
  wire auto_us_to_auto_rs_w_ARVALID;
  wire [31:0]auto_us_to_auto_rs_w_AWADDR;
  wire [1:0]auto_us_to_auto_rs_w_AWBURST;
  wire [3:0]auto_us_to_auto_rs_w_AWCACHE;
  wire [7:0]auto_us_to_auto_rs_w_AWLEN;
  wire [0:0]auto_us_to_auto_rs_w_AWLOCK;
  wire [2:0]auto_us_to_auto_rs_w_AWPROT;
  wire [3:0]auto_us_to_auto_rs_w_AWQOS;
  wire auto_us_to_auto_rs_w_AWREADY;
  wire [3:0]auto_us_to_auto_rs_w_AWREGION;
  wire [2:0]auto_us_to_auto_rs_w_AWSIZE;
  wire auto_us_to_auto_rs_w_AWVALID;
  wire auto_us_to_auto_rs_w_BREADY;
  wire [1:0]auto_us_to_auto_rs_w_BRESP;
  wire auto_us_to_auto_rs_w_BVALID;
  wire [511:0]auto_us_to_auto_rs_w_RDATA;
  wire auto_us_to_auto_rs_w_RLAST;
  wire auto_us_to_auto_rs_w_RREADY;
  wire [1:0]auto_us_to_auto_rs_w_RRESP;
  wire auto_us_to_auto_rs_w_RVALID;
  wire [511:0]auto_us_to_auto_rs_w_WDATA;
  wire auto_us_to_auto_rs_w_WLAST;
  wire auto_us_to_auto_rs_w_WREADY;
  wire [63:0]auto_us_to_auto_rs_w_WSTRB;
  wire auto_us_to_auto_rs_w_WVALID;
  wire [31:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [0:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [3:0]s00_couplers_to_s00_regslice_ARREGION;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [31:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [0:0]s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [3:0]s00_couplers_to_s00_regslice_AWREGION;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [127:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [127:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [15:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [31:0]s00_regslice_to_auto_us_ARADDR;
  wire [1:0]s00_regslice_to_auto_us_ARBURST;
  wire [3:0]s00_regslice_to_auto_us_ARCACHE;
  wire [7:0]s00_regslice_to_auto_us_ARLEN;
  wire [0:0]s00_regslice_to_auto_us_ARLOCK;
  wire [2:0]s00_regslice_to_auto_us_ARPROT;
  wire [3:0]s00_regslice_to_auto_us_ARQOS;
  wire s00_regslice_to_auto_us_ARREADY;
  wire [3:0]s00_regslice_to_auto_us_ARREGION;
  wire [2:0]s00_regslice_to_auto_us_ARSIZE;
  wire s00_regslice_to_auto_us_ARVALID;
  wire [31:0]s00_regslice_to_auto_us_AWADDR;
  wire [1:0]s00_regslice_to_auto_us_AWBURST;
  wire [3:0]s00_regslice_to_auto_us_AWCACHE;
  wire [7:0]s00_regslice_to_auto_us_AWLEN;
  wire [0:0]s00_regslice_to_auto_us_AWLOCK;
  wire [2:0]s00_regslice_to_auto_us_AWPROT;
  wire [3:0]s00_regslice_to_auto_us_AWQOS;
  wire s00_regslice_to_auto_us_AWREADY;
  wire [3:0]s00_regslice_to_auto_us_AWREGION;
  wire [2:0]s00_regslice_to_auto_us_AWSIZE;
  wire s00_regslice_to_auto_us_AWVALID;
  wire s00_regslice_to_auto_us_BREADY;
  wire [1:0]s00_regslice_to_auto_us_BRESP;
  wire s00_regslice_to_auto_us_BVALID;
  wire [127:0]s00_regslice_to_auto_us_RDATA;
  wire s00_regslice_to_auto_us_RLAST;
  wire s00_regslice_to_auto_us_RREADY;
  wire [1:0]s00_regslice_to_auto_us_RRESP;
  wire s00_regslice_to_auto_us_RVALID;
  wire [127:0]s00_regslice_to_auto_us_WDATA;
  wire s00_regslice_to_auto_us_WLAST;
  wire s00_regslice_to_auto_us_WREADY;
  wire [15:0]s00_regslice_to_auto_us_WSTRB;
  wire s00_regslice_to_auto_us_WVALID;

  assign M_AXI_araddr[31:0] = auto_rs_w_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_rs_w_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_rs_w_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_rs_w_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_rs_w_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_rs_w_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_rs_w_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_rs_w_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_rs_w_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_rs_w_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_rs_w_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_rs_w_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_rs_w_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_rs_w_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_rs_w_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_rs_w_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_rs_w_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_rs_w_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_rs_w_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_rs_w_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_rs_w_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_rs_w_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_rs_w_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_rs_w_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[127:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign auto_rs_w_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_rs_w_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_rs_w_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_rs_w_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_rs_w_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_rs_w_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_rs_w_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_rs_w_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_rs_w_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[127:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[15:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  pfm_dynamic_auto_rs_w_3 auto_rs_w
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_rs_w_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_rs_w_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_rs_w_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_rs_w_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_rs_w_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_rs_w_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_rs_w_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_rs_w_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_rs_w_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_rs_w_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_rs_w_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_rs_w_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_rs_w_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_rs_w_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_rs_w_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_rs_w_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_rs_w_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_rs_w_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_rs_w_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_rs_w_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_rs_w_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_rs_w_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_rs_w_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_rs_w_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_rs_w_to_s00_couplers_RLAST),
        .m_axi_rready(auto_rs_w_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_rs_w_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_rs_w_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_rs_w_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_rs_w_to_s00_couplers_WLAST),
        .m_axi_wready(auto_rs_w_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_rs_w_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_rs_w_to_s00_couplers_WVALID),
        .s_axi_araddr(auto_us_to_auto_rs_w_ARADDR),
        .s_axi_arburst(auto_us_to_auto_rs_w_ARBURST),
        .s_axi_arcache(auto_us_to_auto_rs_w_ARCACHE),
        .s_axi_arlen(auto_us_to_auto_rs_w_ARLEN),
        .s_axi_arlock(auto_us_to_auto_rs_w_ARLOCK),
        .s_axi_arprot(auto_us_to_auto_rs_w_ARPROT),
        .s_axi_arqos(auto_us_to_auto_rs_w_ARQOS),
        .s_axi_arready(auto_us_to_auto_rs_w_ARREADY),
        .s_axi_arregion(auto_us_to_auto_rs_w_ARREGION),
        .s_axi_arsize(auto_us_to_auto_rs_w_ARSIZE),
        .s_axi_arvalid(auto_us_to_auto_rs_w_ARVALID),
        .s_axi_awaddr(auto_us_to_auto_rs_w_AWADDR),
        .s_axi_awburst(auto_us_to_auto_rs_w_AWBURST),
        .s_axi_awcache(auto_us_to_auto_rs_w_AWCACHE),
        .s_axi_awlen(auto_us_to_auto_rs_w_AWLEN),
        .s_axi_awlock(auto_us_to_auto_rs_w_AWLOCK),
        .s_axi_awprot(auto_us_to_auto_rs_w_AWPROT),
        .s_axi_awqos(auto_us_to_auto_rs_w_AWQOS),
        .s_axi_awready(auto_us_to_auto_rs_w_AWREADY),
        .s_axi_awregion(auto_us_to_auto_rs_w_AWREGION),
        .s_axi_awsize(auto_us_to_auto_rs_w_AWSIZE),
        .s_axi_awvalid(auto_us_to_auto_rs_w_AWVALID),
        .s_axi_bready(auto_us_to_auto_rs_w_BREADY),
        .s_axi_bresp(auto_us_to_auto_rs_w_BRESP),
        .s_axi_bvalid(auto_us_to_auto_rs_w_BVALID),
        .s_axi_rdata(auto_us_to_auto_rs_w_RDATA),
        .s_axi_rlast(auto_us_to_auto_rs_w_RLAST),
        .s_axi_rready(auto_us_to_auto_rs_w_RREADY),
        .s_axi_rresp(auto_us_to_auto_rs_w_RRESP),
        .s_axi_rvalid(auto_us_to_auto_rs_w_RVALID),
        .s_axi_wdata(auto_us_to_auto_rs_w_WDATA),
        .s_axi_wlast(auto_us_to_auto_rs_w_WLAST),
        .s_axi_wready(auto_us_to_auto_rs_w_WREADY),
        .s_axi_wstrb(auto_us_to_auto_rs_w_WSTRB),
        .s_axi_wvalid(auto_us_to_auto_rs_w_WVALID));
  pfm_dynamic_auto_us_1 auto_us
       (.m_axi_araddr(auto_us_to_auto_rs_w_ARADDR),
        .m_axi_arburst(auto_us_to_auto_rs_w_ARBURST),
        .m_axi_arcache(auto_us_to_auto_rs_w_ARCACHE),
        .m_axi_arlen(auto_us_to_auto_rs_w_ARLEN),
        .m_axi_arlock(auto_us_to_auto_rs_w_ARLOCK),
        .m_axi_arprot(auto_us_to_auto_rs_w_ARPROT),
        .m_axi_arqos(auto_us_to_auto_rs_w_ARQOS),
        .m_axi_arready(auto_us_to_auto_rs_w_ARREADY),
        .m_axi_arregion(auto_us_to_auto_rs_w_ARREGION),
        .m_axi_arsize(auto_us_to_auto_rs_w_ARSIZE),
        .m_axi_arvalid(auto_us_to_auto_rs_w_ARVALID),
        .m_axi_awaddr(auto_us_to_auto_rs_w_AWADDR),
        .m_axi_awburst(auto_us_to_auto_rs_w_AWBURST),
        .m_axi_awcache(auto_us_to_auto_rs_w_AWCACHE),
        .m_axi_awlen(auto_us_to_auto_rs_w_AWLEN),
        .m_axi_awlock(auto_us_to_auto_rs_w_AWLOCK),
        .m_axi_awprot(auto_us_to_auto_rs_w_AWPROT),
        .m_axi_awqos(auto_us_to_auto_rs_w_AWQOS),
        .m_axi_awready(auto_us_to_auto_rs_w_AWREADY),
        .m_axi_awregion(auto_us_to_auto_rs_w_AWREGION),
        .m_axi_awsize(auto_us_to_auto_rs_w_AWSIZE),
        .m_axi_awvalid(auto_us_to_auto_rs_w_AWVALID),
        .m_axi_bready(auto_us_to_auto_rs_w_BREADY),
        .m_axi_bresp(auto_us_to_auto_rs_w_BRESP),
        .m_axi_bvalid(auto_us_to_auto_rs_w_BVALID),
        .m_axi_rdata(auto_us_to_auto_rs_w_RDATA),
        .m_axi_rlast(auto_us_to_auto_rs_w_RLAST),
        .m_axi_rready(auto_us_to_auto_rs_w_RREADY),
        .m_axi_rresp(auto_us_to_auto_rs_w_RRESP),
        .m_axi_rvalid(auto_us_to_auto_rs_w_RVALID),
        .m_axi_wdata(auto_us_to_auto_rs_w_WDATA),
        .m_axi_wlast(auto_us_to_auto_rs_w_WLAST),
        .m_axi_wready(auto_us_to_auto_rs_w_WREADY),
        .m_axi_wstrb(auto_us_to_auto_rs_w_WSTRB),
        .m_axi_wvalid(auto_us_to_auto_rs_w_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_regslice_to_auto_us_ARADDR),
        .s_axi_arburst(s00_regslice_to_auto_us_ARBURST),
        .s_axi_arcache(s00_regslice_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s00_regslice_to_auto_us_ARLEN),
        .s_axi_arlock(s00_regslice_to_auto_us_ARLOCK),
        .s_axi_arprot(s00_regslice_to_auto_us_ARPROT),
        .s_axi_arqos(s00_regslice_to_auto_us_ARQOS),
        .s_axi_arready(s00_regslice_to_auto_us_ARREADY),
        .s_axi_arregion(s00_regslice_to_auto_us_ARREGION),
        .s_axi_arsize(s00_regslice_to_auto_us_ARSIZE),
        .s_axi_arvalid(s00_regslice_to_auto_us_ARVALID),
        .s_axi_awaddr(s00_regslice_to_auto_us_AWADDR),
        .s_axi_awburst(s00_regslice_to_auto_us_AWBURST),
        .s_axi_awcache(s00_regslice_to_auto_us_AWCACHE),
        .s_axi_awlen(s00_regslice_to_auto_us_AWLEN),
        .s_axi_awlock(s00_regslice_to_auto_us_AWLOCK),
        .s_axi_awprot(s00_regslice_to_auto_us_AWPROT),
        .s_axi_awqos(s00_regslice_to_auto_us_AWQOS),
        .s_axi_awready(s00_regslice_to_auto_us_AWREADY),
        .s_axi_awregion(s00_regslice_to_auto_us_AWREGION),
        .s_axi_awsize(s00_regslice_to_auto_us_AWSIZE),
        .s_axi_awvalid(s00_regslice_to_auto_us_AWVALID),
        .s_axi_bready(s00_regslice_to_auto_us_BREADY),
        .s_axi_bresp(s00_regslice_to_auto_us_BRESP),
        .s_axi_bvalid(s00_regslice_to_auto_us_BVALID),
        .s_axi_rdata(s00_regslice_to_auto_us_RDATA),
        .s_axi_rlast(s00_regslice_to_auto_us_RLAST),
        .s_axi_rready(s00_regslice_to_auto_us_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_us_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_us_RVALID),
        .s_axi_wdata(s00_regslice_to_auto_us_WDATA),
        .s_axi_wlast(s00_regslice_to_auto_us_WLAST),
        .s_axi_wready(s00_regslice_to_auto_us_WREADY),
        .s_axi_wstrb(s00_regslice_to_auto_us_WSTRB),
        .s_axi_wvalid(s00_regslice_to_auto_us_WVALID));
  pfm_dynamic_s00_regslice_39 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_auto_us_ARADDR),
        .m_axi_arburst(s00_regslice_to_auto_us_ARBURST),
        .m_axi_arcache(s00_regslice_to_auto_us_ARCACHE),
        .m_axi_arlen(s00_regslice_to_auto_us_ARLEN),
        .m_axi_arlock(s00_regslice_to_auto_us_ARLOCK),
        .m_axi_arprot(s00_regslice_to_auto_us_ARPROT),
        .m_axi_arqos(s00_regslice_to_auto_us_ARQOS),
        .m_axi_arready(s00_regslice_to_auto_us_ARREADY),
        .m_axi_arregion(s00_regslice_to_auto_us_ARREGION),
        .m_axi_arsize(s00_regslice_to_auto_us_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_auto_us_ARVALID),
        .m_axi_awaddr(s00_regslice_to_auto_us_AWADDR),
        .m_axi_awburst(s00_regslice_to_auto_us_AWBURST),
        .m_axi_awcache(s00_regslice_to_auto_us_AWCACHE),
        .m_axi_awlen(s00_regslice_to_auto_us_AWLEN),
        .m_axi_awlock(s00_regslice_to_auto_us_AWLOCK),
        .m_axi_awprot(s00_regslice_to_auto_us_AWPROT),
        .m_axi_awqos(s00_regslice_to_auto_us_AWQOS),
        .m_axi_awready(s00_regslice_to_auto_us_AWREADY),
        .m_axi_awregion(s00_regslice_to_auto_us_AWREGION),
        .m_axi_awsize(s00_regslice_to_auto_us_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_auto_us_AWVALID),
        .m_axi_bready(s00_regslice_to_auto_us_BREADY),
        .m_axi_bresp(s00_regslice_to_auto_us_BRESP),
        .m_axi_bvalid(s00_regslice_to_auto_us_BVALID),
        .m_axi_rdata(s00_regslice_to_auto_us_RDATA),
        .m_axi_rlast(s00_regslice_to_auto_us_RLAST),
        .m_axi_rready(s00_regslice_to_auto_us_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_us_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_us_RVALID),
        .m_axi_wdata(s00_regslice_to_auto_us_WDATA),
        .m_axi_wlast(s00_regslice_to_auto_us_WLAST),
        .m_axi_wready(s00_regslice_to_auto_us_WREADY),
        .m_axi_wstrb(s00_regslice_to_auto_us_WSTRB),
        .m_axi_wvalid(s00_regslice_to_auto_us_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion(s00_couplers_to_s00_regslice_ARREGION),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion(s00_couplers_to_s00_regslice_AWREGION),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s01_couplers_imp_1N9NPO6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [511:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_cc_to_s01_data_fifo_ARADDR;
  wire [1:0]auto_cc_to_s01_data_fifo_ARBURST;
  wire [3:0]auto_cc_to_s01_data_fifo_ARCACHE;
  wire [7:0]auto_cc_to_s01_data_fifo_ARLEN;
  wire [0:0]auto_cc_to_s01_data_fifo_ARLOCK;
  wire [2:0]auto_cc_to_s01_data_fifo_ARPROT;
  wire [3:0]auto_cc_to_s01_data_fifo_ARQOS;
  wire auto_cc_to_s01_data_fifo_ARREADY;
  wire [3:0]auto_cc_to_s01_data_fifo_ARREGION;
  wire [2:0]auto_cc_to_s01_data_fifo_ARSIZE;
  wire auto_cc_to_s01_data_fifo_ARVALID;
  wire [511:0]auto_cc_to_s01_data_fifo_RDATA;
  wire auto_cc_to_s01_data_fifo_RLAST;
  wire auto_cc_to_s01_data_fifo_RREADY;
  wire [1:0]auto_cc_to_s01_data_fifo_RRESP;
  wire auto_cc_to_s01_data_fifo_RVALID;
  wire [63:0]s01_couplers_to_s01_regslice_ARADDR;
  wire [1:0]s01_couplers_to_s01_regslice_ARBURST;
  wire [3:0]s01_couplers_to_s01_regslice_ARCACHE;
  wire [7:0]s01_couplers_to_s01_regslice_ARLEN;
  wire [1:0]s01_couplers_to_s01_regslice_ARLOCK;
  wire [2:0]s01_couplers_to_s01_regslice_ARPROT;
  wire [3:0]s01_couplers_to_s01_regslice_ARQOS;
  wire s01_couplers_to_s01_regslice_ARREADY;
  wire [3:0]s01_couplers_to_s01_regslice_ARREGION;
  wire [2:0]s01_couplers_to_s01_regslice_ARSIZE;
  wire s01_couplers_to_s01_regslice_ARVALID;
  wire [511:0]s01_couplers_to_s01_regslice_RDATA;
  wire s01_couplers_to_s01_regslice_RLAST;
  wire s01_couplers_to_s01_regslice_RREADY;
  wire [1:0]s01_couplers_to_s01_regslice_RRESP;
  wire s01_couplers_to_s01_regslice_RVALID;
  wire [63:0]s01_data_fifo_to_s01_couplers_ARADDR;
  wire [1:0]s01_data_fifo_to_s01_couplers_ARBURST;
  wire [3:0]s01_data_fifo_to_s01_couplers_ARCACHE;
  wire [7:0]s01_data_fifo_to_s01_couplers_ARLEN;
  wire [0:0]s01_data_fifo_to_s01_couplers_ARLOCK;
  wire [2:0]s01_data_fifo_to_s01_couplers_ARPROT;
  wire [3:0]s01_data_fifo_to_s01_couplers_ARQOS;
  wire s01_data_fifo_to_s01_couplers_ARREADY;
  wire [2:0]s01_data_fifo_to_s01_couplers_ARSIZE;
  wire s01_data_fifo_to_s01_couplers_ARVALID;
  wire [511:0]s01_data_fifo_to_s01_couplers_RDATA;
  wire s01_data_fifo_to_s01_couplers_RLAST;
  wire s01_data_fifo_to_s01_couplers_RREADY;
  wire [1:0]s01_data_fifo_to_s01_couplers_RRESP;
  wire s01_data_fifo_to_s01_couplers_RVALID;
  wire [63:0]s01_regslice_to_auto_cc_ARADDR;
  wire [1:0]s01_regslice_to_auto_cc_ARBURST;
  wire [3:0]s01_regslice_to_auto_cc_ARCACHE;
  wire [7:0]s01_regslice_to_auto_cc_ARLEN;
  wire [0:0]s01_regslice_to_auto_cc_ARLOCK;
  wire [2:0]s01_regslice_to_auto_cc_ARPROT;
  wire [3:0]s01_regslice_to_auto_cc_ARQOS;
  wire s01_regslice_to_auto_cc_ARREADY;
  wire [3:0]s01_regslice_to_auto_cc_ARREGION;
  wire [2:0]s01_regslice_to_auto_cc_ARSIZE;
  wire s01_regslice_to_auto_cc_ARVALID;
  wire [511:0]s01_regslice_to_auto_cc_RDATA;
  wire s01_regslice_to_auto_cc_RLAST;
  wire s01_regslice_to_auto_cc_RREADY;
  wire [1:0]s01_regslice_to_auto_cc_RRESP;
  wire s01_regslice_to_auto_cc_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = s01_data_fifo_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s01_data_fifo_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s01_data_fifo_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s01_data_fifo_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = s01_data_fifo_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s01_data_fifo_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s01_data_fifo_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s01_data_fifo_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = s01_data_fifo_to_s01_couplers_ARVALID;
  assign M_AXI_rready = s01_data_fifo_to_s01_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_s01_regslice_ARREADY;
  assign S_AXI_rdata[511:0] = s01_couplers_to_s01_regslice_RDATA;
  assign S_AXI_rlast = s01_couplers_to_s01_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_s01_regslice_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_s01_regslice_RVALID;
  assign s01_couplers_to_s01_regslice_ARADDR = S_AXI_araddr[63:0];
  assign s01_couplers_to_s01_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_s01_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_s01_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_s01_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s01_couplers_to_s01_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_s01_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_s01_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s01_couplers_to_s01_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_s01_regslice_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_s01_regslice_RREADY = S_AXI_rready;
  assign s01_data_fifo_to_s01_couplers_ARREADY = M_AXI_arready;
  assign s01_data_fifo_to_s01_couplers_RDATA = M_AXI_rdata[511:0];
  assign s01_data_fifo_to_s01_couplers_RLAST = M_AXI_rlast;
  assign s01_data_fifo_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign s01_data_fifo_to_s01_couplers_RVALID = M_AXI_rvalid;
  pfm_dynamic_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s01_data_fifo_ARADDR),
        .m_axi_arburst(auto_cc_to_s01_data_fifo_ARBURST),
        .m_axi_arcache(auto_cc_to_s01_data_fifo_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_cc_to_s01_data_fifo_ARLEN),
        .m_axi_arlock(auto_cc_to_s01_data_fifo_ARLOCK),
        .m_axi_arprot(auto_cc_to_s01_data_fifo_ARPROT),
        .m_axi_arqos(auto_cc_to_s01_data_fifo_ARQOS),
        .m_axi_arready(auto_cc_to_s01_data_fifo_ARREADY),
        .m_axi_arregion(auto_cc_to_s01_data_fifo_ARREGION),
        .m_axi_arsize(auto_cc_to_s01_data_fifo_ARSIZE),
        .m_axi_arvalid(auto_cc_to_s01_data_fifo_ARVALID),
        .m_axi_rdata(auto_cc_to_s01_data_fifo_RDATA),
        .m_axi_rlast(auto_cc_to_s01_data_fifo_RLAST),
        .m_axi_rready(auto_cc_to_s01_data_fifo_RREADY),
        .m_axi_rresp(auto_cc_to_s01_data_fifo_RRESP),
        .m_axi_rvalid(auto_cc_to_s01_data_fifo_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_regslice_to_auto_cc_ARADDR),
        .s_axi_arburst(s01_regslice_to_auto_cc_ARBURST),
        .s_axi_arcache(s01_regslice_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s01_regslice_to_auto_cc_ARLEN),
        .s_axi_arlock(s01_regslice_to_auto_cc_ARLOCK),
        .s_axi_arprot(s01_regslice_to_auto_cc_ARPROT),
        .s_axi_arqos(s01_regslice_to_auto_cc_ARQOS),
        .s_axi_arready(s01_regslice_to_auto_cc_ARREADY),
        .s_axi_arregion(s01_regslice_to_auto_cc_ARREGION),
        .s_axi_arsize(s01_regslice_to_auto_cc_ARSIZE),
        .s_axi_arvalid(s01_regslice_to_auto_cc_ARVALID),
        .s_axi_rdata(s01_regslice_to_auto_cc_RDATA),
        .s_axi_rlast(s01_regslice_to_auto_cc_RLAST),
        .s_axi_rready(s01_regslice_to_auto_cc_RREADY),
        .s_axi_rresp(s01_regslice_to_auto_cc_RRESP),
        .s_axi_rvalid(s01_regslice_to_auto_cc_RVALID));
  pfm_dynamic_s01_data_fifo_3 s01_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s01_data_fifo_to_s01_couplers_ARADDR),
        .m_axi_arburst(s01_data_fifo_to_s01_couplers_ARBURST),
        .m_axi_arcache(s01_data_fifo_to_s01_couplers_ARCACHE),
        .m_axi_arlen(s01_data_fifo_to_s01_couplers_ARLEN),
        .m_axi_arlock(s01_data_fifo_to_s01_couplers_ARLOCK),
        .m_axi_arprot(s01_data_fifo_to_s01_couplers_ARPROT),
        .m_axi_arqos(s01_data_fifo_to_s01_couplers_ARQOS),
        .m_axi_arready(s01_data_fifo_to_s01_couplers_ARREADY),
        .m_axi_arsize(s01_data_fifo_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(s01_data_fifo_to_s01_couplers_ARVALID),
        .m_axi_rdata(s01_data_fifo_to_s01_couplers_RDATA),
        .m_axi_rlast(s01_data_fifo_to_s01_couplers_RLAST),
        .m_axi_rready(s01_data_fifo_to_s01_couplers_RREADY),
        .m_axi_rresp(s01_data_fifo_to_s01_couplers_RRESP),
        .m_axi_rvalid(s01_data_fifo_to_s01_couplers_RVALID),
        .s_axi_araddr(auto_cc_to_s01_data_fifo_ARADDR),
        .s_axi_arburst(auto_cc_to_s01_data_fifo_ARBURST),
        .s_axi_arcache(auto_cc_to_s01_data_fifo_ARCACHE),
        .s_axi_arlen(auto_cc_to_s01_data_fifo_ARLEN),
        .s_axi_arlock(auto_cc_to_s01_data_fifo_ARLOCK),
        .s_axi_arprot(auto_cc_to_s01_data_fifo_ARPROT),
        .s_axi_arqos(auto_cc_to_s01_data_fifo_ARQOS),
        .s_axi_arready(auto_cc_to_s01_data_fifo_ARREADY),
        .s_axi_arregion(auto_cc_to_s01_data_fifo_ARREGION),
        .s_axi_arsize(auto_cc_to_s01_data_fifo_ARSIZE),
        .s_axi_arvalid(auto_cc_to_s01_data_fifo_ARVALID),
        .s_axi_rdata(auto_cc_to_s01_data_fifo_RDATA),
        .s_axi_rlast(auto_cc_to_s01_data_fifo_RLAST),
        .s_axi_rready(auto_cc_to_s01_data_fifo_RREADY),
        .s_axi_rresp(auto_cc_to_s01_data_fifo_RRESP),
        .s_axi_rvalid(auto_cc_to_s01_data_fifo_RVALID));
  pfm_dynamic_s01_regslice_3 s01_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s01_regslice_to_auto_cc_ARADDR),
        .m_axi_arburst(s01_regslice_to_auto_cc_ARBURST),
        .m_axi_arcache(s01_regslice_to_auto_cc_ARCACHE),
        .m_axi_arlen(s01_regslice_to_auto_cc_ARLEN),
        .m_axi_arlock(s01_regslice_to_auto_cc_ARLOCK),
        .m_axi_arprot(s01_regslice_to_auto_cc_ARPROT),
        .m_axi_arqos(s01_regslice_to_auto_cc_ARQOS),
        .m_axi_arready(s01_regslice_to_auto_cc_ARREADY),
        .m_axi_arregion(s01_regslice_to_auto_cc_ARREGION),
        .m_axi_arsize(s01_regslice_to_auto_cc_ARSIZE),
        .m_axi_arvalid(s01_regslice_to_auto_cc_ARVALID),
        .m_axi_rdata(s01_regslice_to_auto_cc_RDATA),
        .m_axi_rlast(s01_regslice_to_auto_cc_RLAST),
        .m_axi_rready(s01_regslice_to_auto_cc_RREADY),
        .m_axi_rresp(s01_regslice_to_auto_cc_RRESP),
        .m_axi_rvalid(s01_regslice_to_auto_cc_RVALID),
        .s_axi_araddr(s01_couplers_to_s01_regslice_ARADDR),
        .s_axi_arburst(s01_couplers_to_s01_regslice_ARBURST),
        .s_axi_arcache(s01_couplers_to_s01_regslice_ARCACHE),
        .s_axi_arlen(s01_couplers_to_s01_regslice_ARLEN),
        .s_axi_arlock(s01_couplers_to_s01_regslice_ARLOCK[0]),
        .s_axi_arprot(s01_couplers_to_s01_regslice_ARPROT),
        .s_axi_arqos(s01_couplers_to_s01_regslice_ARQOS),
        .s_axi_arready(s01_couplers_to_s01_regslice_ARREADY),
        .s_axi_arregion(s01_couplers_to_s01_regslice_ARREGION),
        .s_axi_arsize(s01_couplers_to_s01_regslice_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_s01_regslice_ARVALID),
        .s_axi_rdata(s01_couplers_to_s01_regslice_RDATA),
        .s_axi_rlast(s01_couplers_to_s01_regslice_RLAST),
        .s_axi_rready(s01_couplers_to_s01_regslice_RREADY),
        .s_axi_rresp(s01_couplers_to_s01_regslice_RRESP),
        .s_axi_rvalid(s01_couplers_to_s01_regslice_RVALID));
endmodule

module s01_couplers_imp_536K3F
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_cc_to_s01_data_fifo_AWADDR;
  wire [1:0]auto_cc_to_s01_data_fifo_AWBURST;
  wire [3:0]auto_cc_to_s01_data_fifo_AWCACHE;
  wire [7:0]auto_cc_to_s01_data_fifo_AWLEN;
  wire [0:0]auto_cc_to_s01_data_fifo_AWLOCK;
  wire [2:0]auto_cc_to_s01_data_fifo_AWPROT;
  wire [3:0]auto_cc_to_s01_data_fifo_AWQOS;
  wire auto_cc_to_s01_data_fifo_AWREADY;
  wire [3:0]auto_cc_to_s01_data_fifo_AWREGION;
  wire [2:0]auto_cc_to_s01_data_fifo_AWSIZE;
  wire auto_cc_to_s01_data_fifo_AWVALID;
  wire auto_cc_to_s01_data_fifo_BREADY;
  wire [1:0]auto_cc_to_s01_data_fifo_BRESP;
  wire auto_cc_to_s01_data_fifo_BVALID;
  wire [511:0]auto_cc_to_s01_data_fifo_WDATA;
  wire auto_cc_to_s01_data_fifo_WLAST;
  wire auto_cc_to_s01_data_fifo_WREADY;
  wire [63:0]auto_cc_to_s01_data_fifo_WSTRB;
  wire auto_cc_to_s01_data_fifo_WVALID;
  wire [63:0]s01_couplers_to_s01_regslice_AWADDR;
  wire [1:0]s01_couplers_to_s01_regslice_AWBURST;
  wire [3:0]s01_couplers_to_s01_regslice_AWCACHE;
  wire [7:0]s01_couplers_to_s01_regslice_AWLEN;
  wire [1:0]s01_couplers_to_s01_regslice_AWLOCK;
  wire [2:0]s01_couplers_to_s01_regslice_AWPROT;
  wire [3:0]s01_couplers_to_s01_regslice_AWQOS;
  wire s01_couplers_to_s01_regslice_AWREADY;
  wire [3:0]s01_couplers_to_s01_regslice_AWREGION;
  wire [2:0]s01_couplers_to_s01_regslice_AWSIZE;
  wire s01_couplers_to_s01_regslice_AWVALID;
  wire s01_couplers_to_s01_regslice_BREADY;
  wire [1:0]s01_couplers_to_s01_regslice_BRESP;
  wire s01_couplers_to_s01_regslice_BVALID;
  wire [511:0]s01_couplers_to_s01_regslice_WDATA;
  wire s01_couplers_to_s01_regslice_WLAST;
  wire s01_couplers_to_s01_regslice_WREADY;
  wire [63:0]s01_couplers_to_s01_regslice_WSTRB;
  wire s01_couplers_to_s01_regslice_WVALID;
  wire [63:0]s01_data_fifo_to_s01_couplers_AWADDR;
  wire [1:0]s01_data_fifo_to_s01_couplers_AWBURST;
  wire [3:0]s01_data_fifo_to_s01_couplers_AWCACHE;
  wire [7:0]s01_data_fifo_to_s01_couplers_AWLEN;
  wire [0:0]s01_data_fifo_to_s01_couplers_AWLOCK;
  wire [2:0]s01_data_fifo_to_s01_couplers_AWPROT;
  wire [3:0]s01_data_fifo_to_s01_couplers_AWQOS;
  wire s01_data_fifo_to_s01_couplers_AWREADY;
  wire [2:0]s01_data_fifo_to_s01_couplers_AWSIZE;
  wire s01_data_fifo_to_s01_couplers_AWVALID;
  wire s01_data_fifo_to_s01_couplers_BREADY;
  wire [1:0]s01_data_fifo_to_s01_couplers_BRESP;
  wire s01_data_fifo_to_s01_couplers_BVALID;
  wire [511:0]s01_data_fifo_to_s01_couplers_WDATA;
  wire s01_data_fifo_to_s01_couplers_WLAST;
  wire s01_data_fifo_to_s01_couplers_WREADY;
  wire [63:0]s01_data_fifo_to_s01_couplers_WSTRB;
  wire s01_data_fifo_to_s01_couplers_WVALID;
  wire [63:0]s01_regslice_to_auto_cc_AWADDR;
  wire [1:0]s01_regslice_to_auto_cc_AWBURST;
  wire [3:0]s01_regslice_to_auto_cc_AWCACHE;
  wire [7:0]s01_regslice_to_auto_cc_AWLEN;
  wire [0:0]s01_regslice_to_auto_cc_AWLOCK;
  wire [2:0]s01_regslice_to_auto_cc_AWPROT;
  wire [3:0]s01_regslice_to_auto_cc_AWQOS;
  wire s01_regslice_to_auto_cc_AWREADY;
  wire [3:0]s01_regslice_to_auto_cc_AWREGION;
  wire [2:0]s01_regslice_to_auto_cc_AWSIZE;
  wire s01_regslice_to_auto_cc_AWVALID;
  wire s01_regslice_to_auto_cc_BREADY;
  wire [1:0]s01_regslice_to_auto_cc_BRESP;
  wire s01_regslice_to_auto_cc_BVALID;
  wire [511:0]s01_regslice_to_auto_cc_WDATA;
  wire s01_regslice_to_auto_cc_WLAST;
  wire s01_regslice_to_auto_cc_WREADY;
  wire [63:0]s01_regslice_to_auto_cc_WSTRB;
  wire s01_regslice_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_awaddr[63:0] = s01_data_fifo_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s01_data_fifo_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s01_data_fifo_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s01_data_fifo_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = s01_data_fifo_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s01_data_fifo_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s01_data_fifo_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s01_data_fifo_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = s01_data_fifo_to_s01_couplers_AWVALID;
  assign M_AXI_bready = s01_data_fifo_to_s01_couplers_BREADY;
  assign M_AXI_wdata[511:0] = s01_data_fifo_to_s01_couplers_WDATA;
  assign M_AXI_wlast = s01_data_fifo_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s01_data_fifo_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = s01_data_fifo_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s01_couplers_to_s01_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_regslice_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_s01_regslice_BVALID;
  assign S_AXI_wready = s01_couplers_to_s01_regslice_WREADY;
  assign s01_couplers_to_s01_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign s01_couplers_to_s01_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_regslice_AWLOCK = S_AXI_awlock[1:0];
  assign s01_couplers_to_s01_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_s01_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s01_couplers_to_s01_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_regslice_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_s01_regslice_BREADY = S_AXI_bready;
  assign s01_couplers_to_s01_regslice_WDATA = S_AXI_wdata[511:0];
  assign s01_couplers_to_s01_regslice_WLAST = S_AXI_wlast;
  assign s01_couplers_to_s01_regslice_WSTRB = S_AXI_wstrb[63:0];
  assign s01_couplers_to_s01_regslice_WVALID = S_AXI_wvalid;
  assign s01_data_fifo_to_s01_couplers_AWREADY = M_AXI_awready;
  assign s01_data_fifo_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign s01_data_fifo_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign s01_data_fifo_to_s01_couplers_WREADY = M_AXI_wready;
  pfm_dynamic_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_awaddr(auto_cc_to_s01_data_fifo_AWADDR),
        .m_axi_awburst(auto_cc_to_s01_data_fifo_AWBURST),
        .m_axi_awcache(auto_cc_to_s01_data_fifo_AWCACHE),
        .m_axi_awlen(auto_cc_to_s01_data_fifo_AWLEN),
        .m_axi_awlock(auto_cc_to_s01_data_fifo_AWLOCK),
        .m_axi_awprot(auto_cc_to_s01_data_fifo_AWPROT),
        .m_axi_awqos(auto_cc_to_s01_data_fifo_AWQOS),
        .m_axi_awready(auto_cc_to_s01_data_fifo_AWREADY),
        .m_axi_awregion(auto_cc_to_s01_data_fifo_AWREGION),
        .m_axi_awsize(auto_cc_to_s01_data_fifo_AWSIZE),
        .m_axi_awvalid(auto_cc_to_s01_data_fifo_AWVALID),
        .m_axi_bready(auto_cc_to_s01_data_fifo_BREADY),
        .m_axi_bresp(auto_cc_to_s01_data_fifo_BRESP),
        .m_axi_bvalid(auto_cc_to_s01_data_fifo_BVALID),
        .m_axi_wdata(auto_cc_to_s01_data_fifo_WDATA),
        .m_axi_wlast(auto_cc_to_s01_data_fifo_WLAST),
        .m_axi_wready(auto_cc_to_s01_data_fifo_WREADY),
        .m_axi_wstrb(auto_cc_to_s01_data_fifo_WSTRB),
        .m_axi_wvalid(auto_cc_to_s01_data_fifo_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_awaddr(s01_regslice_to_auto_cc_AWADDR),
        .s_axi_awburst(s01_regslice_to_auto_cc_AWBURST),
        .s_axi_awcache(s01_regslice_to_auto_cc_AWCACHE),
        .s_axi_awlen(s01_regslice_to_auto_cc_AWLEN),
        .s_axi_awlock(s01_regslice_to_auto_cc_AWLOCK),
        .s_axi_awprot(s01_regslice_to_auto_cc_AWPROT),
        .s_axi_awqos(s01_regslice_to_auto_cc_AWQOS),
        .s_axi_awready(s01_regslice_to_auto_cc_AWREADY),
        .s_axi_awregion(s01_regslice_to_auto_cc_AWREGION),
        .s_axi_awsize(s01_regslice_to_auto_cc_AWSIZE),
        .s_axi_awvalid(s01_regslice_to_auto_cc_AWVALID),
        .s_axi_bready(s01_regslice_to_auto_cc_BREADY),
        .s_axi_bresp(s01_regslice_to_auto_cc_BRESP),
        .s_axi_bvalid(s01_regslice_to_auto_cc_BVALID),
        .s_axi_wdata(s01_regslice_to_auto_cc_WDATA),
        .s_axi_wlast(s01_regslice_to_auto_cc_WLAST),
        .s_axi_wready(s01_regslice_to_auto_cc_WREADY),
        .s_axi_wstrb(s01_regslice_to_auto_cc_WSTRB),
        .s_axi_wvalid(s01_regslice_to_auto_cc_WVALID));
  pfm_dynamic_s01_data_fifo_2 s01_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_awaddr(s01_data_fifo_to_s01_couplers_AWADDR),
        .m_axi_awburst(s01_data_fifo_to_s01_couplers_AWBURST),
        .m_axi_awcache(s01_data_fifo_to_s01_couplers_AWCACHE),
        .m_axi_awlen(s01_data_fifo_to_s01_couplers_AWLEN),
        .m_axi_awlock(s01_data_fifo_to_s01_couplers_AWLOCK),
        .m_axi_awprot(s01_data_fifo_to_s01_couplers_AWPROT),
        .m_axi_awqos(s01_data_fifo_to_s01_couplers_AWQOS),
        .m_axi_awready(s01_data_fifo_to_s01_couplers_AWREADY),
        .m_axi_awsize(s01_data_fifo_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(s01_data_fifo_to_s01_couplers_AWVALID),
        .m_axi_bready(s01_data_fifo_to_s01_couplers_BREADY),
        .m_axi_bresp(s01_data_fifo_to_s01_couplers_BRESP),
        .m_axi_bvalid(s01_data_fifo_to_s01_couplers_BVALID),
        .m_axi_wdata(s01_data_fifo_to_s01_couplers_WDATA),
        .m_axi_wlast(s01_data_fifo_to_s01_couplers_WLAST),
        .m_axi_wready(s01_data_fifo_to_s01_couplers_WREADY),
        .m_axi_wstrb(s01_data_fifo_to_s01_couplers_WSTRB),
        .m_axi_wvalid(s01_data_fifo_to_s01_couplers_WVALID),
        .s_axi_awaddr(auto_cc_to_s01_data_fifo_AWADDR),
        .s_axi_awburst(auto_cc_to_s01_data_fifo_AWBURST),
        .s_axi_awcache(auto_cc_to_s01_data_fifo_AWCACHE),
        .s_axi_awlen(auto_cc_to_s01_data_fifo_AWLEN),
        .s_axi_awlock(auto_cc_to_s01_data_fifo_AWLOCK),
        .s_axi_awprot(auto_cc_to_s01_data_fifo_AWPROT),
        .s_axi_awqos(auto_cc_to_s01_data_fifo_AWQOS),
        .s_axi_awready(auto_cc_to_s01_data_fifo_AWREADY),
        .s_axi_awregion(auto_cc_to_s01_data_fifo_AWREGION),
        .s_axi_awsize(auto_cc_to_s01_data_fifo_AWSIZE),
        .s_axi_awvalid(auto_cc_to_s01_data_fifo_AWVALID),
        .s_axi_bready(auto_cc_to_s01_data_fifo_BREADY),
        .s_axi_bresp(auto_cc_to_s01_data_fifo_BRESP),
        .s_axi_bvalid(auto_cc_to_s01_data_fifo_BVALID),
        .s_axi_wdata(auto_cc_to_s01_data_fifo_WDATA),
        .s_axi_wlast(auto_cc_to_s01_data_fifo_WLAST),
        .s_axi_wready(auto_cc_to_s01_data_fifo_WREADY),
        .s_axi_wstrb(auto_cc_to_s01_data_fifo_WSTRB),
        .s_axi_wvalid(auto_cc_to_s01_data_fifo_WVALID));
  pfm_dynamic_s01_regslice_2 s01_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_awaddr(s01_regslice_to_auto_cc_AWADDR),
        .m_axi_awburst(s01_regslice_to_auto_cc_AWBURST),
        .m_axi_awcache(s01_regslice_to_auto_cc_AWCACHE),
        .m_axi_awlen(s01_regslice_to_auto_cc_AWLEN),
        .m_axi_awlock(s01_regslice_to_auto_cc_AWLOCK),
        .m_axi_awprot(s01_regslice_to_auto_cc_AWPROT),
        .m_axi_awqos(s01_regslice_to_auto_cc_AWQOS),
        .m_axi_awready(s01_regslice_to_auto_cc_AWREADY),
        .m_axi_awregion(s01_regslice_to_auto_cc_AWREGION),
        .m_axi_awsize(s01_regslice_to_auto_cc_AWSIZE),
        .m_axi_awvalid(s01_regslice_to_auto_cc_AWVALID),
        .m_axi_bready(s01_regslice_to_auto_cc_BREADY),
        .m_axi_bresp(s01_regslice_to_auto_cc_BRESP),
        .m_axi_bvalid(s01_regslice_to_auto_cc_BVALID),
        .m_axi_wdata(s01_regslice_to_auto_cc_WDATA),
        .m_axi_wlast(s01_regslice_to_auto_cc_WLAST),
        .m_axi_wready(s01_regslice_to_auto_cc_WREADY),
        .m_axi_wstrb(s01_regslice_to_auto_cc_WSTRB),
        .m_axi_wvalid(s01_regslice_to_auto_cc_WVALID),
        .s_axi_awaddr(s01_couplers_to_s01_regslice_AWADDR),
        .s_axi_awburst(s01_couplers_to_s01_regslice_AWBURST),
        .s_axi_awcache(s01_couplers_to_s01_regslice_AWCACHE),
        .s_axi_awlen(s01_couplers_to_s01_regslice_AWLEN),
        .s_axi_awlock(s01_couplers_to_s01_regslice_AWLOCK[0]),
        .s_axi_awprot(s01_couplers_to_s01_regslice_AWPROT),
        .s_axi_awqos(s01_couplers_to_s01_regslice_AWQOS),
        .s_axi_awready(s01_couplers_to_s01_regslice_AWREADY),
        .s_axi_awregion(s01_couplers_to_s01_regslice_AWREGION),
        .s_axi_awsize(s01_couplers_to_s01_regslice_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_s01_regslice_AWVALID),
        .s_axi_bready(s01_couplers_to_s01_regslice_BREADY),
        .s_axi_bresp(s01_couplers_to_s01_regslice_BRESP),
        .s_axi_bvalid(s01_couplers_to_s01_regslice_BVALID),
        .s_axi_wdata(s01_couplers_to_s01_regslice_WDATA),
        .s_axi_wlast(s01_couplers_to_s01_regslice_WLAST),
        .s_axi_wready(s01_couplers_to_s01_regslice_WREADY),
        .s_axi_wstrb(s01_couplers_to_s01_regslice_WSTRB),
        .s_axi_wvalid(s01_couplers_to_s01_regslice_WVALID));
endmodule

module s02_couplers_imp_1CF9C2D
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [511:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_cc_to_s02_data_fifo_ARADDR;
  wire [1:0]auto_cc_to_s02_data_fifo_ARBURST;
  wire [3:0]auto_cc_to_s02_data_fifo_ARCACHE;
  wire [7:0]auto_cc_to_s02_data_fifo_ARLEN;
  wire [0:0]auto_cc_to_s02_data_fifo_ARLOCK;
  wire [2:0]auto_cc_to_s02_data_fifo_ARPROT;
  wire [3:0]auto_cc_to_s02_data_fifo_ARQOS;
  wire auto_cc_to_s02_data_fifo_ARREADY;
  wire [3:0]auto_cc_to_s02_data_fifo_ARREGION;
  wire [2:0]auto_cc_to_s02_data_fifo_ARSIZE;
  wire auto_cc_to_s02_data_fifo_ARVALID;
  wire [511:0]auto_cc_to_s02_data_fifo_RDATA;
  wire auto_cc_to_s02_data_fifo_RLAST;
  wire auto_cc_to_s02_data_fifo_RREADY;
  wire [1:0]auto_cc_to_s02_data_fifo_RRESP;
  wire auto_cc_to_s02_data_fifo_RVALID;
  wire [63:0]s02_couplers_to_s02_regslice_ARADDR;
  wire [1:0]s02_couplers_to_s02_regslice_ARBURST;
  wire [3:0]s02_couplers_to_s02_regslice_ARCACHE;
  wire [7:0]s02_couplers_to_s02_regslice_ARLEN;
  wire [1:0]s02_couplers_to_s02_regslice_ARLOCK;
  wire [2:0]s02_couplers_to_s02_regslice_ARPROT;
  wire [3:0]s02_couplers_to_s02_regslice_ARQOS;
  wire s02_couplers_to_s02_regslice_ARREADY;
  wire [3:0]s02_couplers_to_s02_regslice_ARREGION;
  wire [2:0]s02_couplers_to_s02_regslice_ARSIZE;
  wire s02_couplers_to_s02_regslice_ARVALID;
  wire [511:0]s02_couplers_to_s02_regslice_RDATA;
  wire s02_couplers_to_s02_regslice_RLAST;
  wire s02_couplers_to_s02_regslice_RREADY;
  wire [1:0]s02_couplers_to_s02_regslice_RRESP;
  wire s02_couplers_to_s02_regslice_RVALID;
  wire [63:0]s02_data_fifo_to_s02_couplers_ARADDR;
  wire [1:0]s02_data_fifo_to_s02_couplers_ARBURST;
  wire [3:0]s02_data_fifo_to_s02_couplers_ARCACHE;
  wire [7:0]s02_data_fifo_to_s02_couplers_ARLEN;
  wire [0:0]s02_data_fifo_to_s02_couplers_ARLOCK;
  wire [2:0]s02_data_fifo_to_s02_couplers_ARPROT;
  wire [3:0]s02_data_fifo_to_s02_couplers_ARQOS;
  wire s02_data_fifo_to_s02_couplers_ARREADY;
  wire [2:0]s02_data_fifo_to_s02_couplers_ARSIZE;
  wire s02_data_fifo_to_s02_couplers_ARVALID;
  wire [511:0]s02_data_fifo_to_s02_couplers_RDATA;
  wire s02_data_fifo_to_s02_couplers_RLAST;
  wire s02_data_fifo_to_s02_couplers_RREADY;
  wire [1:0]s02_data_fifo_to_s02_couplers_RRESP;
  wire s02_data_fifo_to_s02_couplers_RVALID;
  wire [63:0]s02_regslice_to_auto_cc_ARADDR;
  wire [1:0]s02_regslice_to_auto_cc_ARBURST;
  wire [3:0]s02_regslice_to_auto_cc_ARCACHE;
  wire [7:0]s02_regslice_to_auto_cc_ARLEN;
  wire [0:0]s02_regslice_to_auto_cc_ARLOCK;
  wire [2:0]s02_regslice_to_auto_cc_ARPROT;
  wire [3:0]s02_regslice_to_auto_cc_ARQOS;
  wire s02_regslice_to_auto_cc_ARREADY;
  wire [3:0]s02_regslice_to_auto_cc_ARREGION;
  wire [2:0]s02_regslice_to_auto_cc_ARSIZE;
  wire s02_regslice_to_auto_cc_ARVALID;
  wire [511:0]s02_regslice_to_auto_cc_RDATA;
  wire s02_regslice_to_auto_cc_RLAST;
  wire s02_regslice_to_auto_cc_RREADY;
  wire [1:0]s02_regslice_to_auto_cc_RRESP;
  wire s02_regslice_to_auto_cc_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = s02_data_fifo_to_s02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s02_data_fifo_to_s02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s02_data_fifo_to_s02_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s02_data_fifo_to_s02_couplers_ARLEN;
  assign M_AXI_arlock[0] = s02_data_fifo_to_s02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s02_data_fifo_to_s02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s02_data_fifo_to_s02_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s02_data_fifo_to_s02_couplers_ARSIZE;
  assign M_AXI_arvalid = s02_data_fifo_to_s02_couplers_ARVALID;
  assign M_AXI_rready = s02_data_fifo_to_s02_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s02_couplers_to_s02_regslice_ARREADY;
  assign S_AXI_rdata[511:0] = s02_couplers_to_s02_regslice_RDATA;
  assign S_AXI_rlast = s02_couplers_to_s02_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s02_couplers_to_s02_regslice_RRESP;
  assign S_AXI_rvalid = s02_couplers_to_s02_regslice_RVALID;
  assign s02_couplers_to_s02_regslice_ARADDR = S_AXI_araddr[63:0];
  assign s02_couplers_to_s02_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s02_couplers_to_s02_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s02_couplers_to_s02_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s02_couplers_to_s02_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s02_couplers_to_s02_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s02_couplers_to_s02_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s02_couplers_to_s02_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s02_couplers_to_s02_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s02_couplers_to_s02_regslice_ARVALID = S_AXI_arvalid;
  assign s02_couplers_to_s02_regslice_RREADY = S_AXI_rready;
  assign s02_data_fifo_to_s02_couplers_ARREADY = M_AXI_arready;
  assign s02_data_fifo_to_s02_couplers_RDATA = M_AXI_rdata[511:0];
  assign s02_data_fifo_to_s02_couplers_RLAST = M_AXI_rlast;
  assign s02_data_fifo_to_s02_couplers_RRESP = M_AXI_rresp[1:0];
  assign s02_data_fifo_to_s02_couplers_RVALID = M_AXI_rvalid;
  pfm_dynamic_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s02_data_fifo_ARADDR),
        .m_axi_arburst(auto_cc_to_s02_data_fifo_ARBURST),
        .m_axi_arcache(auto_cc_to_s02_data_fifo_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_cc_to_s02_data_fifo_ARLEN),
        .m_axi_arlock(auto_cc_to_s02_data_fifo_ARLOCK),
        .m_axi_arprot(auto_cc_to_s02_data_fifo_ARPROT),
        .m_axi_arqos(auto_cc_to_s02_data_fifo_ARQOS),
        .m_axi_arready(auto_cc_to_s02_data_fifo_ARREADY),
        .m_axi_arregion(auto_cc_to_s02_data_fifo_ARREGION),
        .m_axi_arsize(auto_cc_to_s02_data_fifo_ARSIZE),
        .m_axi_arvalid(auto_cc_to_s02_data_fifo_ARVALID),
        .m_axi_rdata(auto_cc_to_s02_data_fifo_RDATA),
        .m_axi_rlast(auto_cc_to_s02_data_fifo_RLAST),
        .m_axi_rready(auto_cc_to_s02_data_fifo_RREADY),
        .m_axi_rresp(auto_cc_to_s02_data_fifo_RRESP),
        .m_axi_rvalid(auto_cc_to_s02_data_fifo_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s02_regslice_to_auto_cc_ARADDR),
        .s_axi_arburst(s02_regslice_to_auto_cc_ARBURST),
        .s_axi_arcache(s02_regslice_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s02_regslice_to_auto_cc_ARLEN),
        .s_axi_arlock(s02_regslice_to_auto_cc_ARLOCK),
        .s_axi_arprot(s02_regslice_to_auto_cc_ARPROT),
        .s_axi_arqos(s02_regslice_to_auto_cc_ARQOS),
        .s_axi_arready(s02_regslice_to_auto_cc_ARREADY),
        .s_axi_arregion(s02_regslice_to_auto_cc_ARREGION),
        .s_axi_arsize(s02_regslice_to_auto_cc_ARSIZE),
        .s_axi_arvalid(s02_regslice_to_auto_cc_ARVALID),
        .s_axi_rdata(s02_regslice_to_auto_cc_RDATA),
        .s_axi_rlast(s02_regslice_to_auto_cc_RLAST),
        .s_axi_rready(s02_regslice_to_auto_cc_RREADY),
        .s_axi_rresp(s02_regslice_to_auto_cc_RRESP),
        .s_axi_rvalid(s02_regslice_to_auto_cc_RVALID));
  pfm_dynamic_s02_data_fifo_0 s02_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s02_data_fifo_to_s02_couplers_ARADDR),
        .m_axi_arburst(s02_data_fifo_to_s02_couplers_ARBURST),
        .m_axi_arcache(s02_data_fifo_to_s02_couplers_ARCACHE),
        .m_axi_arlen(s02_data_fifo_to_s02_couplers_ARLEN),
        .m_axi_arlock(s02_data_fifo_to_s02_couplers_ARLOCK),
        .m_axi_arprot(s02_data_fifo_to_s02_couplers_ARPROT),
        .m_axi_arqos(s02_data_fifo_to_s02_couplers_ARQOS),
        .m_axi_arready(s02_data_fifo_to_s02_couplers_ARREADY),
        .m_axi_arsize(s02_data_fifo_to_s02_couplers_ARSIZE),
        .m_axi_arvalid(s02_data_fifo_to_s02_couplers_ARVALID),
        .m_axi_rdata(s02_data_fifo_to_s02_couplers_RDATA),
        .m_axi_rlast(s02_data_fifo_to_s02_couplers_RLAST),
        .m_axi_rready(s02_data_fifo_to_s02_couplers_RREADY),
        .m_axi_rresp(s02_data_fifo_to_s02_couplers_RRESP),
        .m_axi_rvalid(s02_data_fifo_to_s02_couplers_RVALID),
        .s_axi_araddr(auto_cc_to_s02_data_fifo_ARADDR),
        .s_axi_arburst(auto_cc_to_s02_data_fifo_ARBURST),
        .s_axi_arcache(auto_cc_to_s02_data_fifo_ARCACHE),
        .s_axi_arlen(auto_cc_to_s02_data_fifo_ARLEN),
        .s_axi_arlock(auto_cc_to_s02_data_fifo_ARLOCK),
        .s_axi_arprot(auto_cc_to_s02_data_fifo_ARPROT),
        .s_axi_arqos(auto_cc_to_s02_data_fifo_ARQOS),
        .s_axi_arready(auto_cc_to_s02_data_fifo_ARREADY),
        .s_axi_arregion(auto_cc_to_s02_data_fifo_ARREGION),
        .s_axi_arsize(auto_cc_to_s02_data_fifo_ARSIZE),
        .s_axi_arvalid(auto_cc_to_s02_data_fifo_ARVALID),
        .s_axi_rdata(auto_cc_to_s02_data_fifo_RDATA),
        .s_axi_rlast(auto_cc_to_s02_data_fifo_RLAST),
        .s_axi_rready(auto_cc_to_s02_data_fifo_RREADY),
        .s_axi_rresp(auto_cc_to_s02_data_fifo_RRESP),
        .s_axi_rvalid(auto_cc_to_s02_data_fifo_RVALID));
  pfm_dynamic_s02_regslice_0 s02_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s02_regslice_to_auto_cc_ARADDR),
        .m_axi_arburst(s02_regslice_to_auto_cc_ARBURST),
        .m_axi_arcache(s02_regslice_to_auto_cc_ARCACHE),
        .m_axi_arlen(s02_regslice_to_auto_cc_ARLEN),
        .m_axi_arlock(s02_regslice_to_auto_cc_ARLOCK),
        .m_axi_arprot(s02_regslice_to_auto_cc_ARPROT),
        .m_axi_arqos(s02_regslice_to_auto_cc_ARQOS),
        .m_axi_arready(s02_regslice_to_auto_cc_ARREADY),
        .m_axi_arregion(s02_regslice_to_auto_cc_ARREGION),
        .m_axi_arsize(s02_regslice_to_auto_cc_ARSIZE),
        .m_axi_arvalid(s02_regslice_to_auto_cc_ARVALID),
        .m_axi_rdata(s02_regslice_to_auto_cc_RDATA),
        .m_axi_rlast(s02_regslice_to_auto_cc_RLAST),
        .m_axi_rready(s02_regslice_to_auto_cc_RREADY),
        .m_axi_rresp(s02_regslice_to_auto_cc_RRESP),
        .m_axi_rvalid(s02_regslice_to_auto_cc_RVALID),
        .s_axi_araddr(s02_couplers_to_s02_regslice_ARADDR),
        .s_axi_arburst(s02_couplers_to_s02_regslice_ARBURST),
        .s_axi_arcache(s02_couplers_to_s02_regslice_ARCACHE),
        .s_axi_arlen(s02_couplers_to_s02_regslice_ARLEN),
        .s_axi_arlock(s02_couplers_to_s02_regslice_ARLOCK[0]),
        .s_axi_arprot(s02_couplers_to_s02_regslice_ARPROT),
        .s_axi_arqos(s02_couplers_to_s02_regslice_ARQOS),
        .s_axi_arready(s02_couplers_to_s02_regslice_ARREADY),
        .s_axi_arregion(s02_couplers_to_s02_regslice_ARREGION),
        .s_axi_arsize(s02_couplers_to_s02_regslice_ARSIZE),
        .s_axi_arvalid(s02_couplers_to_s02_regslice_ARVALID),
        .s_axi_rdata(s02_couplers_to_s02_regslice_RDATA),
        .s_axi_rlast(s02_couplers_to_s02_regslice_RLAST),
        .s_axi_rready(s02_couplers_to_s02_regslice_RREADY),
        .s_axi_rresp(s02_couplers_to_s02_regslice_RRESP),
        .s_axi_rvalid(s02_couplers_to_s02_regslice_RVALID));
endmodule
