// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3524922 Thu Apr 14 16:29:35 MDT 2022
// Date        : Fri Apr 15 17:12:21 2022
// Host        : 399467ad205a running 64-bit CentOS Linux release 7.4.1708 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top pfm_dynamic_axi_mmu_5_0 -prefix
//               pfm_dynamic_axi_mmu_5_0_ pfm_dynamic_axi_mmu_4_0_sim_netlist.v
// Design      : pfm_dynamic_axi_mmu_4_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module pfm_dynamic_axi_mmu_5_0_axi_mmu_v2_1_24_decerr_slave
   (E,
    s_axi_bvalid,
    SS,
    aclk,
    Q,
    s_axi_bready,
    \FSM_onehot_gen_write.w_state_reg[1] ,
    s_axi_wlast,
    s_axi_wvalid,
    m_axi_bvalid);
  output [0:0]E;
  output s_axi_bvalid;
  input [0:0]SS;
  input aclk;
  input [0:0]Q;
  input s_axi_bready;
  input \FSM_onehot_gen_write.w_state_reg[1] ;
  input s_axi_wlast;
  input s_axi_wvalid;
  input m_axi_bvalid;

  wire [0:0]E;
  wire \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[0] ;
  wire \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[1] ;
  wire \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[2] ;
  wire \FSM_onehot_gen_write.w_state_reg[1] ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire aclk;
  wire err_bvalid;
  wire \gen_axi.gen_write.s_axi_bvalid_i ;
  wire \gen_axi.gen_write.s_axi_bvalid_i_i_1_n_0 ;
  wire m_axi_bvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_wlast;
  wire s_axi_wvalid;

  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \FSM_onehot_gen_axi.gen_write.write_cs[2]_i_1 
       (.I0(Q),
        .I1(s_axi_wlast),
        .I2(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[1] ),
        .I3(s_axi_wvalid),
        .I4(s_axi_bready),
        .I5(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[2] ),
        .O(\gen_axi.gen_write.s_axi_bvalid_i ));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_axi.gen_write.write_cs_reg[0] 
       (.C(aclk),
        .CE(\gen_axi.gen_write.s_axi_bvalid_i ),
        .D(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[2] ),
        .Q(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[0] ),
        .S(SS));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_axi.gen_write.write_cs_reg[1] 
       (.C(aclk),
        .CE(\gen_axi.gen_write.s_axi_bvalid_i ),
        .D(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[0] ),
        .Q(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[1] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_axi.gen_write.write_cs_reg[2] 
       (.C(aclk),
        .CE(\gen_axi.gen_write.s_axi_bvalid_i ),
        .D(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[1] ),
        .Q(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[2] ),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \FSM_onehot_gen_write.w_state[2]_i_1 
       (.I0(Q),
        .I1(s_axi_bready),
        .I2(err_bvalid),
        .I3(\FSM_onehot_gen_write.w_state_reg[1] ),
        .O(E));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_axi.gen_write.s_axi_bvalid_i_i_1 
       (.I0(s_axi_wvalid),
        .I1(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[1] ),
        .I2(s_axi_wlast),
        .I3(Q),
        .O(\gen_axi.gen_write.s_axi_bvalid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_write.s_axi_bvalid_i_reg 
       (.C(aclk),
        .CE(\gen_axi.gen_write.s_axi_bvalid_i ),
        .D(\gen_axi.gen_write.s_axi_bvalid_i_i_1_n_0 ),
        .Q(err_bvalid),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    s_axi_bvalid_INST_0
       (.I0(err_bvalid),
        .I1(Q),
        .I2(m_axi_bvalid),
        .O(s_axi_bvalid));
endmodule

(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "128" *) (* C_AXI_ID_WIDTH = "6" *) (* C_AXI_PROTOCOL = "0" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) (* C_AXI_WUSER_WIDTH = "1" *) 
(* C_BASE_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* C_DEST = "1'b0" *) (* C_DEST_WIDTH = "1" *) 
(* C_FAMILY = "zynquplus" *) (* C_M_AXI_ADDR_WIDTH = "32" *) (* C_M_AXI_SUPPORTS_READ = "1'b1" *) 
(* C_M_AXI_SUPPORTS_WRITE = "1'b1" *) (* C_NUM_RANGES = "1" *) (* C_PREFIX = "1'b0" *) 
(* C_PREFIX_WIDTH = "1" *) (* C_RANGE_SIZE = "32" *) (* C_S_AXI_ADDR_WIDTH = "32" *) 
(* C_S_AXI_SUPPORTS_READ = "1" *) (* C_S_AXI_SUPPORTS_WRITE = "1" *) (* C_USES_DEST = "0" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* P_AXI3 = "1" *) (* P_AXI4 = "0" *) 
(* P_AXILITE = "2" *) (* P_DECERR = "2'b11" *) (* P_NUM_RANGES_LOG = "1" *) 
(* R_DECERR = "2'b11" *) (* R_IDLE = "2'b00" *) (* R_PENDING = "2'b01" *) 
(* W_DECERR = "2'b11" *) (* W_IDLE = "2'b00" *) (* W_PENDING = "2'b01" *) 
module pfm_dynamic_axi_mmu_5_0_axi_mmu_v2_1_24_top
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [5:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [5:0]s_axi_wid;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [5:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [5:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [5:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [5:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [5:0]m_axi_wid;
  output [127:0]m_axi_wdata;
  output [15:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [5:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [5:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [5:0]m_axi_rid;
  input [127:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire \FSM_onehot_gen_write.w_state[2]_i_2_n_0 ;
  wire \FSM_onehot_gen_write.w_state[2]_i_3_n_0 ;
  wire \FSM_onehot_gen_write.w_state_reg_n_0_[1] ;
  wire \FSM_onehot_gen_write.w_state_reg_n_0_[2] ;
  wire aclk;
  wire ar_pop;
  wire aresetn;
  wire aw_pop0;
  wire decerr_slave_inst_n_0;
  wire \gen_read.ar_cnt[0]_i_1_n_0 ;
  wire \gen_read.ar_cnt[5]_i_5_n_0 ;
  wire \gen_read.ar_cnt[5]_i_7_n_0 ;
  wire [5:0]\gen_read.ar_cnt_reg ;
  wire \gen_write.aw_cnt[0]_i_1_n_0 ;
  wire [5:0]\gen_write.aw_cnt_reg ;
  wire \gen_write.w_cnt[0]_i_1_n_0 ;
  wire \gen_write.w_cnt[1]_i_1_n_0 ;
  wire \gen_write.w_cnt[2]_i_1_n_0 ;
  wire \gen_write.w_cnt[3]_i_1_n_0 ;
  wire \gen_write.w_cnt[4]_i_1_n_0 ;
  wire \gen_write.w_cnt[4]_i_3_n_0 ;
  wire \gen_write.w_cnt[5]_i_1_n_0 ;
  wire \gen_write.w_cnt[5]_i_2_n_0 ;
  wire \gen_write.w_cnt[5]_i_4_n_0 ;
  wire \gen_write.w_cnt[5]_i_5_n_0 ;
  wire [5:0]\gen_write.w_cnt_reg ;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [5:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [5:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [5:0]m_axi_bid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [127:0]m_axi_rdata;
  wire [5:0]m_axi_rid;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire register_slice_inst_n_1;
  wire register_slice_inst_n_11;
  wire register_slice_inst_n_12;
  wire register_slice_inst_n_13;
  wire register_slice_inst_n_14;
  wire register_slice_inst_n_15;
  wire register_slice_inst_n_16;
  wire register_slice_inst_n_2;
  wire register_slice_inst_n_3;
  wire register_slice_inst_n_4;
  wire register_slice_inst_n_5;
  wire register_slice_inst_n_6;
  wire register_slice_inst_n_7;
  wire register_slice_inst_n_8;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [5:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [5:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [5:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire s_axi_rready;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sr_axi_awvalid;
  wire sr_axi_wvalid122_in;
  wire w_cnt115_out;
  wire w_mask;
  wire w_pop;
  wire [1:1]w_state__0;

  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = s_axi_rready;
  assign m_axi_wdata[127:0] = s_axi_wdata;
  assign m_axi_wid[5] = \<const0> ;
  assign m_axi_wid[4] = \<const0> ;
  assign m_axi_wid[3] = \<const0> ;
  assign m_axi_wid[2] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = s_axi_wlast;
  assign m_axi_wstrb[15:0] = s_axi_wstrb;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_rdata[127:0] = m_axi_rdata;
  assign s_axi_rid[5:0] = m_axi_rid;
  assign s_axi_rlast = m_axi_rlast;
  assign s_axi_rresp[1:0] = m_axi_rresp;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = m_axi_rvalid;
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_gen_write.w_state[1]_i_1 
       (.I0(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_gen_write.w_state_reg_n_0_[1] ),
        .O(w_state__0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \FSM_onehot_gen_write.w_state[2]_i_2 
       (.I0(\gen_write.w_cnt_reg [2]),
        .I1(\gen_write.w_cnt_reg [1]),
        .I2(\gen_write.w_cnt_reg [0]),
        .I3(\FSM_onehot_gen_write.w_state[2]_i_3_n_0 ),
        .I4(aw_pop0),
        .O(\FSM_onehot_gen_write.w_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_onehot_gen_write.w_state[2]_i_3 
       (.I0(\gen_write.w_cnt_reg [5]),
        .I1(\FSM_onehot_gen_write.w_state_reg_n_0_[1] ),
        .I2(\gen_write.w_cnt_reg [3]),
        .I3(\gen_write.w_cnt_reg [4]),
        .O(\FSM_onehot_gen_write.w_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "W_DECERR:100,iSTATE:001,W_PENDING:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_write.w_state_reg[1] 
       (.C(aclk),
        .CE(decerr_slave_inst_n_0),
        .D(w_state__0),
        .Q(\FSM_onehot_gen_write.w_state_reg_n_0_[1] ),
        .R(register_slice_inst_n_1));
  (* FSM_ENCODED_STATES = "W_DECERR:100,iSTATE:001,W_PENDING:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_write.w_state_reg[2] 
       (.C(aclk),
        .CE(decerr_slave_inst_n_0),
        .D(\FSM_onehot_gen_write.w_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .R(register_slice_inst_n_1));
  GND GND
       (.G(\<const0> ));
  pfm_dynamic_axi_mmu_5_0_axi_mmu_v2_1_24_decerr_slave decerr_slave_inst
       (.E(decerr_slave_inst_n_0),
        .\FSM_onehot_gen_write.w_state_reg[1] (\FSM_onehot_gen_write.w_state[2]_i_2_n_0 ),
        .Q(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .SS(register_slice_inst_n_1),
        .aclk(aclk),
        .m_axi_bvalid(m_axi_bvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_read.ar_cnt[0]_i_1 
       (.I0(\gen_read.ar_cnt_reg [0]),
        .O(\gen_read.ar_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \gen_read.ar_cnt[5]_i_3 
       (.I0(m_axi_rlast),
        .I1(m_axi_rvalid),
        .I2(s_axi_rready),
        .I3(\gen_read.ar_cnt[5]_i_5_n_0 ),
        .O(ar_pop));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gen_read.ar_cnt[5]_i_5 
       (.I0(\gen_read.ar_cnt_reg [2]),
        .I1(\gen_read.ar_cnt_reg [3]),
        .I2(\gen_read.ar_cnt_reg [0]),
        .I3(\gen_read.ar_cnt_reg [1]),
        .I4(\gen_read.ar_cnt_reg [5]),
        .I5(\gen_read.ar_cnt_reg [4]),
        .O(\gen_read.ar_cnt[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_read.ar_cnt[5]_i_7 
       (.I0(m_axi_rvalid),
        .I1(m_axi_rlast),
        .O(\gen_read.ar_cnt[5]_i_7_n_0 ));
  FDRE \gen_read.ar_cnt_reg[0] 
       (.C(aclk),
        .CE(register_slice_inst_n_11),
        .D(\gen_read.ar_cnt[0]_i_1_n_0 ),
        .Q(\gen_read.ar_cnt_reg [0]),
        .R(register_slice_inst_n_1));
  FDRE \gen_read.ar_cnt_reg[1] 
       (.C(aclk),
        .CE(register_slice_inst_n_11),
        .D(register_slice_inst_n_16),
        .Q(\gen_read.ar_cnt_reg [1]),
        .R(register_slice_inst_n_1));
  FDRE \gen_read.ar_cnt_reg[2] 
       (.C(aclk),
        .CE(register_slice_inst_n_11),
        .D(register_slice_inst_n_15),
        .Q(\gen_read.ar_cnt_reg [2]),
        .R(register_slice_inst_n_1));
  FDRE \gen_read.ar_cnt_reg[3] 
       (.C(aclk),
        .CE(register_slice_inst_n_11),
        .D(register_slice_inst_n_14),
        .Q(\gen_read.ar_cnt_reg [3]),
        .R(register_slice_inst_n_1));
  FDRE \gen_read.ar_cnt_reg[4] 
       (.C(aclk),
        .CE(register_slice_inst_n_11),
        .D(register_slice_inst_n_13),
        .Q(\gen_read.ar_cnt_reg [4]),
        .R(register_slice_inst_n_1));
  FDRE \gen_read.ar_cnt_reg[5] 
       (.C(aclk),
        .CE(register_slice_inst_n_11),
        .D(register_slice_inst_n_12),
        .Q(\gen_read.ar_cnt_reg [5]),
        .R(register_slice_inst_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_write.aw_cnt[0]_i_1 
       (.I0(\gen_write.aw_cnt_reg [0]),
        .O(\gen_write.aw_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gen_write.aw_cnt[5]_i_3 
       (.I0(\gen_write.aw_cnt_reg [4]),
        .I1(\gen_write.aw_cnt_reg [5]),
        .I2(\gen_write.aw_cnt_reg [3]),
        .I3(\gen_write.aw_cnt_reg [2]),
        .I4(\gen_write.aw_cnt_reg [0]),
        .I5(\gen_write.aw_cnt_reg [1]),
        .O(aw_pop0));
  FDRE \gen_write.aw_cnt_reg[0] 
       (.C(aclk),
        .CE(register_slice_inst_n_2),
        .D(\gen_write.aw_cnt[0]_i_1_n_0 ),
        .Q(\gen_write.aw_cnt_reg [0]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.aw_cnt_reg[1] 
       (.C(aclk),
        .CE(register_slice_inst_n_2),
        .D(register_slice_inst_n_7),
        .Q(\gen_write.aw_cnt_reg [1]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.aw_cnt_reg[2] 
       (.C(aclk),
        .CE(register_slice_inst_n_2),
        .D(register_slice_inst_n_6),
        .Q(\gen_write.aw_cnt_reg [2]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.aw_cnt_reg[3] 
       (.C(aclk),
        .CE(register_slice_inst_n_2),
        .D(register_slice_inst_n_5),
        .Q(\gen_write.aw_cnt_reg [3]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.aw_cnt_reg[4] 
       (.C(aclk),
        .CE(register_slice_inst_n_2),
        .D(register_slice_inst_n_4),
        .Q(\gen_write.aw_cnt_reg [4]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.aw_cnt_reg[5] 
       (.C(aclk),
        .CE(register_slice_inst_n_2),
        .D(register_slice_inst_n_3),
        .Q(\gen_write.aw_cnt_reg [5]),
        .R(register_slice_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_write.w_cnt[0]_i_1 
       (.I0(\gen_write.w_cnt_reg [0]),
        .O(\gen_write.w_cnt[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_write.w_cnt[1]_i_1 
       (.I0(\gen_write.w_cnt_reg [1]),
        .I1(\gen_write.w_cnt_reg [0]),
        .I2(w_cnt115_out),
        .O(\gen_write.w_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \gen_write.w_cnt[2]_i_1 
       (.I0(\gen_write.w_cnt_reg [2]),
        .I1(w_cnt115_out),
        .I2(\gen_write.w_cnt_reg [1]),
        .I3(\gen_write.w_cnt_reg [0]),
        .O(\gen_write.w_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \gen_write.w_cnt[3]_i_1 
       (.I0(\gen_write.w_cnt_reg [3]),
        .I1(w_cnt115_out),
        .I2(\gen_write.w_cnt_reg [1]),
        .I3(\gen_write.w_cnt_reg [0]),
        .I4(\gen_write.w_cnt_reg [2]),
        .O(\gen_write.w_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \gen_write.w_cnt[4]_i_1 
       (.I0(\gen_write.w_cnt_reg [4]),
        .I1(w_cnt115_out),
        .I2(\gen_write.w_cnt_reg [1]),
        .I3(\gen_write.w_cnt_reg [0]),
        .I4(\gen_write.w_cnt_reg [2]),
        .I5(\gen_write.w_cnt_reg [3]),
        .O(\gen_write.w_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5155555555555555)) 
    \gen_write.w_cnt[4]_i_2 
       (.I0(\gen_write.w_cnt[4]_i_3_n_0 ),
        .I1(sr_axi_wvalid122_in),
        .I2(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .I3(s_axi_wvalid),
        .I4(s_axi_wlast),
        .I5(m_axi_wready),
        .O(w_cnt115_out));
  LUT3 #(
    .INIT(8'hEF)) 
    \gen_write.w_cnt[4]_i_3 
       (.I0(w_mask),
        .I1(\gen_write.aw_cnt_reg [5]),
        .I2(s_axi_awvalid),
        .O(\gen_write.w_cnt[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA9AA)) 
    \gen_write.w_cnt[5]_i_1 
       (.I0(w_pop),
        .I1(w_mask),
        .I2(\gen_write.aw_cnt_reg [5]),
        .I3(s_axi_awvalid),
        .O(\gen_write.w_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \gen_write.w_cnt[5]_i_2 
       (.I0(\gen_write.w_cnt_reg [5]),
        .I1(\gen_write.w_cnt_reg [1]),
        .I2(\gen_write.w_cnt[5]_i_4_n_0 ),
        .I3(\gen_write.w_cnt_reg [2]),
        .I4(\gen_write.w_cnt_reg [3]),
        .I5(\gen_write.w_cnt_reg [4]),
        .O(\gen_write.w_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \gen_write.w_cnt[5]_i_3 
       (.I0(m_axi_wready),
        .I1(s_axi_wlast),
        .I2(s_axi_wvalid),
        .I3(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .I4(sr_axi_wvalid122_in),
        .O(w_pop));
  LUT6 #(
    .INIT(64'h222222B222B222B2)) 
    \gen_write.w_cnt[5]_i_4 
       (.I0(\gen_write.w_cnt_reg [0]),
        .I1(\gen_write.w_cnt_reg [1]),
        .I2(sr_axi_awvalid),
        .I3(w_mask),
        .I4(sr_axi_wvalid122_in),
        .I5(\gen_write.w_cnt[5]_i_5_n_0 ),
        .O(\gen_write.w_cnt[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \gen_write.w_cnt[5]_i_5 
       (.I0(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .I1(s_axi_wvalid),
        .I2(s_axi_wlast),
        .I3(m_axi_wready),
        .O(\gen_write.w_cnt[5]_i_5_n_0 ));
  FDRE \gen_write.w_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[0]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg [0]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.w_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[1]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg [1]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.w_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[2]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg [2]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.w_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[3]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg [3]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.w_cnt_reg[4] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[4]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg [4]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.w_cnt_reg[5] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[5]_i_2_n_0 ),
        .Q(\gen_write.w_cnt_reg [5]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.w_mask_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(register_slice_inst_n_8),
        .Q(w_mask),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h40)) 
    m_axi_wvalid_INST_0
       (.I0(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .I1(s_axi_wvalid),
        .I2(sr_axi_wvalid122_in),
        .O(m_axi_wvalid));
  pfm_dynamic_axi_mmu_5_0_axi_register_slice_v2_1_26_axi_register_slice register_slice_inst
       (.D({register_slice_inst_n_3,register_slice_inst_n_4,register_slice_inst_n_5,register_slice_inst_n_6,register_slice_inst_n_7}),
        .E(register_slice_inst_n_2),
        .Q(\gen_write.aw_cnt_reg ),
        .SR(register_slice_inst_n_1),
        .aclk(aclk),
        .ar_pop(ar_pop),
        .aresetn(aresetn),
        .aw_pop0(aw_pop0),
        .\gen_read.ar_cnt_reg[4] (\gen_read.ar_cnt[5]_i_5_n_0 ),
        .\gen_read.ar_cnt_reg[5] ({register_slice_inst_n_12,register_slice_inst_n_13,register_slice_inst_n_14,register_slice_inst_n_15,register_slice_inst_n_16}),
        .\gen_read.ar_cnt_reg[5]_0 (\gen_read.ar_cnt[5]_i_7_n_0 ),
        .\gen_write.aw_cnt_reg[5] (register_slice_inst_n_8),
        .\gen_write.w_mask_reg (\FSM_onehot_gen_write.w_state[2]_i_2_n_0 ),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0({\FSM_onehot_gen_write.w_state_reg_n_0_[2] ,\FSM_onehot_gen_write.w_state_reg_n_0_[1] }),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_payload_i_reg[63] ({m_axi_awqos,m_axi_awid,m_axi_awlock,m_axi_awlen,m_axi_awcache,m_axi_awburst,m_axi_awsize,m_axi_awprot,m_axi_awaddr}),
        .\m_payload_i_reg[63]_0 ({m_axi_arqos,m_axi_arid,m_axi_arlock,m_axi_arlen,m_axi_arcache,m_axi_arburst,m_axi_arsize,m_axi_arprot,m_axi_araddr}),
        .\m_payload_i_reg[63]_1 ({s_axi_awqos,s_axi_awid,s_axi_awlock,s_axi_awlen,s_axi_awcache,s_axi_awburst,s_axi_awsize,s_axi_awprot,s_axi_awaddr}),
        .\m_payload_i_reg[63]_2 ({s_axi_arqos,s_axi_arid,s_axi_arlock,s_axi_arlen,s_axi_arcache,s_axi_arburst,s_axi_arsize,s_axi_arprot,s_axi_araddr}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arready_0(\gen_read.ar_cnt_reg ),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_arvalid_0(register_slice_inst_n_11),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rready(s_axi_rready),
        .sr_axi_awvalid(sr_axi_awvalid),
        .w_mask(w_mask));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_bid[0]_INST_0 
       (.I0(m_axi_bid[0]),
        .I1(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .O(s_axi_bid[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_bid[1]_INST_0 
       (.I0(m_axi_bid[1]),
        .I1(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .O(s_axi_bid[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_bid[2]_INST_0 
       (.I0(m_axi_bid[2]),
        .I1(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .O(s_axi_bid[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_bid[3]_INST_0 
       (.I0(m_axi_bid[3]),
        .I1(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .O(s_axi_bid[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_bid[4]_INST_0 
       (.I0(m_axi_bid[4]),
        .I1(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .O(s_axi_bid[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_bid[5]_INST_0 
       (.I0(m_axi_bid[5]),
        .I1(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .O(s_axi_bid[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_bresp[0]_INST_0 
       (.I0(m_axi_bresp[0]),
        .I1(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .O(s_axi_bresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_bresp[1]_INST_0 
       (.I0(m_axi_bresp[1]),
        .I1(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .O(s_axi_bresp[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h40)) 
    s_axi_wready_INST_0
       (.I0(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .I1(m_axi_wready),
        .I2(sr_axi_wvalid122_in),
        .O(s_axi_wready));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    s_axi_wready_INST_0_i_1
       (.I0(\gen_write.w_cnt_reg [0]),
        .I1(\gen_write.w_cnt_reg [1]),
        .I2(\gen_write.w_cnt_reg [5]),
        .I3(\gen_write.w_cnt_reg [2]),
        .I4(\gen_write.w_cnt_reg [3]),
        .I5(\gen_write.w_cnt_reg [4]),
        .O(sr_axi_wvalid122_in));
endmodule

module pfm_dynamic_axi_mmu_5_0_axi_register_slice_v2_1_26_axi_register_slice
   (m_axi_arvalid,
    SR,
    E,
    D,
    \gen_write.aw_cnt_reg[5] ,
    sr_axi_awvalid,
    m_axi_awvalid,
    s_axi_arvalid_0,
    \gen_read.ar_cnt_reg[5] ,
    s_axi_awready,
    s_axi_arready,
    \m_payload_i_reg[63] ,
    \m_payload_i_reg[63]_0 ,
    aclk,
    Q,
    s_axi_awvalid,
    s_axi_bready,
    aw_pop0,
    m_axi_bvalid,
    m_axi_awvalid_0,
    m_axi_awready,
    w_mask,
    \gen_write.w_mask_reg ,
    ar_pop,
    s_axi_arvalid,
    s_axi_arready_0,
    \gen_read.ar_cnt_reg[4] ,
    s_axi_rready,
    \gen_read.ar_cnt_reg[5]_0 ,
    m_axi_rvalid,
    m_axi_rlast,
    m_axi_arready,
    aresetn,
    \m_payload_i_reg[63]_1 ,
    \m_payload_i_reg[63]_2 );
  output m_axi_arvalid;
  output [0:0]SR;
  output [0:0]E;
  output [4:0]D;
  output \gen_write.aw_cnt_reg[5] ;
  output sr_axi_awvalid;
  output m_axi_awvalid;
  output [0:0]s_axi_arvalid_0;
  output [4:0]\gen_read.ar_cnt_reg[5] ;
  output s_axi_awready;
  output s_axi_arready;
  output [62:0]\m_payload_i_reg[63] ;
  output [62:0]\m_payload_i_reg[63]_0 ;
  input aclk;
  input [5:0]Q;
  input s_axi_awvalid;
  input s_axi_bready;
  input aw_pop0;
  input m_axi_bvalid;
  input [1:0]m_axi_awvalid_0;
  input m_axi_awready;
  input w_mask;
  input \gen_write.w_mask_reg ;
  input ar_pop;
  input s_axi_arvalid;
  input [5:0]s_axi_arready_0;
  input \gen_read.ar_cnt_reg[4] ;
  input s_axi_rready;
  input \gen_read.ar_cnt_reg[5]_0 ;
  input m_axi_rvalid;
  input m_axi_rlast;
  input m_axi_arready;
  input aresetn;
  input [62:0]\m_payload_i_reg[63]_1 ;
  input [62:0]\m_payload_i_reg[63]_2 ;

  wire [4:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire ar_pop;
  wire aresetn;
  wire \aw.aw_pipe_n_1 ;
  wire aw_pop0;
  wire \gen_read.ar_cnt_reg[4] ;
  wire [4:0]\gen_read.ar_cnt_reg[5] ;
  wire \gen_read.ar_cnt_reg[5]_0 ;
  wire \gen_write.aw_cnt_reg[5] ;
  wire \gen_write.w_mask_reg ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire [1:0]m_axi_awvalid_0;
  wire m_axi_bvalid;
  wire m_axi_rlast;
  wire m_axi_rvalid;
  wire [62:0]\m_payload_i_reg[63] ;
  wire [62:0]\m_payload_i_reg[63]_0 ;
  wire [62:0]\m_payload_i_reg[63]_1 ;
  wire [62:0]\m_payload_i_reg[63]_2 ;
  wire p_1_in;
  wire s_axi_arready;
  wire [5:0]s_axi_arready_0;
  wire s_axi_arvalid;
  wire [0:0]s_axi_arvalid_0;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire sr_axi_awvalid;
  wire w_mask;

  pfm_dynamic_axi_mmu_5_0_axi_register_slice_v2_1_26_axic_register_slice \ar.ar_pipe 
       (.SR(SR),
        .aclk(aclk),
        .ar_pop(ar_pop),
        .\gen_read.ar_cnt_reg[4] (\gen_read.ar_cnt_reg[4] ),
        .\gen_read.ar_cnt_reg[5] (\gen_read.ar_cnt_reg[5] ),
        .\gen_read.ar_cnt_reg[5]_0 (\gen_read.ar_cnt_reg[5]_0 ),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_payload_i_reg[63]_0 (\m_payload_i_reg[63]_0 ),
        .\m_payload_i_reg[63]_1 (\m_payload_i_reg[63]_2 ),
        .p_1_in(p_1_in),
        .s_axi_arready(s_axi_arready),
        .s_axi_arready_0(s_axi_arready_0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_arvalid_0(s_axi_arvalid_0),
        .s_axi_rready(s_axi_rready),
        .s_ready_i_reg_0(\aw.aw_pipe_n_1 ));
  pfm_dynamic_axi_mmu_5_0_axi_register_slice_v2_1_26_axic_register_slice_0 \aw.aw_pipe 
       (.D(D),
        .E(E),
        .Q(Q),
        .SR(SR),
        .aclk(aclk),
        .aresetn(aresetn),
        .\aresetn_d_reg[1]_0 (\aw.aw_pipe_n_1 ),
        .aw_pop0(aw_pop0),
        .\gen_write.aw_cnt_reg[5] (\gen_write.aw_cnt_reg[5] ),
        .\gen_write.w_mask_reg (\gen_write.w_mask_reg ),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(m_axi_awvalid_0),
        .m_axi_bvalid(m_axi_bvalid),
        .\m_payload_i_reg[63]_0 (\m_payload_i_reg[63] ),
        .\m_payload_i_reg[63]_1 (\m_payload_i_reg[63]_1 ),
        .p_1_in(p_1_in),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .sr_axi_awvalid(sr_axi_awvalid),
        .w_mask(w_mask));
endmodule

module pfm_dynamic_axi_mmu_5_0_axi_register_slice_v2_1_26_axic_register_slice
   (m_axi_arvalid,
    s_axi_arvalid_0,
    \gen_read.ar_cnt_reg[5] ,
    s_axi_arready,
    \m_payload_i_reg[63]_0 ,
    SR,
    aclk,
    p_1_in,
    ar_pop,
    s_axi_arvalid,
    s_axi_arready_0,
    \gen_read.ar_cnt_reg[4] ,
    s_axi_rready,
    \gen_read.ar_cnt_reg[5]_0 ,
    m_axi_rvalid,
    m_axi_rlast,
    m_axi_arready,
    s_ready_i_reg_0,
    \m_payload_i_reg[63]_1 );
  output m_axi_arvalid;
  output [0:0]s_axi_arvalid_0;
  output [4:0]\gen_read.ar_cnt_reg[5] ;
  output s_axi_arready;
  output [62:0]\m_payload_i_reg[63]_0 ;
  input [0:0]SR;
  input aclk;
  input p_1_in;
  input ar_pop;
  input s_axi_arvalid;
  input [5:0]s_axi_arready_0;
  input \gen_read.ar_cnt_reg[4] ;
  input s_axi_rready;
  input \gen_read.ar_cnt_reg[5]_0 ;
  input m_axi_rvalid;
  input m_axi_rlast;
  input m_axi_arready;
  input s_ready_i_reg_0;
  input [62:0]\m_payload_i_reg[63]_1 ;

  wire [0:0]SR;
  wire aclk;
  wire ar_cnt13_out;
  wire ar_pop;
  wire \gen_read.ar_cnt[5]_i_4_n_0 ;
  wire \gen_read.ar_cnt[5]_i_6_n_0 ;
  wire \gen_read.ar_cnt_reg[4] ;
  wire [4:0]\gen_read.ar_cnt_reg[5] ;
  wire \gen_read.ar_cnt_reg[5]_0 ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_rlast;
  wire m_axi_rvalid;
  wire \m_payload_i[59]_i_1_n_0 ;
  wire [62:0]\m_payload_i_reg[63]_0 ;
  wire [62:0]\m_payload_i_reg[63]_1 ;
  wire m_valid_i_i_2_n_0;
  wire p_1_in;
  wire s_axi_arready;
  wire [5:0]s_axi_arready_0;
  wire s_axi_arvalid;
  wire [0:0]s_axi_arvalid_0;
  wire s_axi_rready;
  wire s_ready_i_i_1__0_n_0;
  wire s_ready_i_reg_0;
  wire sr_axi_arready;

  LUT3 #(
    .INIT(8'h69)) 
    \gen_read.ar_cnt[1]_i_1 
       (.I0(s_axi_arready_0[0]),
        .I1(s_axi_arready_0[1]),
        .I2(ar_cnt13_out),
        .O(\gen_read.ar_cnt_reg[5] [0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \gen_read.ar_cnt[2]_i_1 
       (.I0(s_axi_arready_0[2]),
        .I1(ar_cnt13_out),
        .I2(s_axi_arready_0[1]),
        .I3(s_axi_arready_0[0]),
        .O(\gen_read.ar_cnt_reg[5] [1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \gen_read.ar_cnt[3]_i_1 
       (.I0(s_axi_arready_0[3]),
        .I1(ar_cnt13_out),
        .I2(s_axi_arready_0[1]),
        .I3(s_axi_arready_0[0]),
        .I4(s_axi_arready_0[2]),
        .O(\gen_read.ar_cnt_reg[5] [2]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \gen_read.ar_cnt[4]_i_1 
       (.I0(s_axi_arready_0[4]),
        .I1(ar_cnt13_out),
        .I2(s_axi_arready_0[1]),
        .I3(s_axi_arready_0[0]),
        .I4(s_axi_arready_0[2]),
        .I5(s_axi_arready_0[3]),
        .O(\gen_read.ar_cnt_reg[5] [3]));
  LUT5 #(
    .INIT(32'h45555555)) 
    \gen_read.ar_cnt[4]_i_2 
       (.I0(\gen_read.ar_cnt[5]_i_6_n_0 ),
        .I1(\gen_read.ar_cnt_reg[4] ),
        .I2(s_axi_rready),
        .I3(m_axi_rvalid),
        .I4(m_axi_rlast),
        .O(ar_cnt13_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \gen_read.ar_cnt[5]_i_1 
       (.I0(ar_pop),
        .I1(s_axi_arvalid),
        .I2(s_axi_arready_0[5]),
        .I3(sr_axi_arready),
        .O(s_axi_arvalid_0));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \gen_read.ar_cnt[5]_i_2 
       (.I0(s_axi_arready_0[5]),
        .I1(s_axi_arready_0[1]),
        .I2(\gen_read.ar_cnt[5]_i_4_n_0 ),
        .I3(s_axi_arready_0[2]),
        .I4(s_axi_arready_0[3]),
        .I5(s_axi_arready_0[4]),
        .O(\gen_read.ar_cnt_reg[5] [4]));
  LUT6 #(
    .INIT(64'h2B222B2B2B2B2B2B)) 
    \gen_read.ar_cnt[5]_i_4 
       (.I0(s_axi_arready_0[0]),
        .I1(s_axi_arready_0[1]),
        .I2(\gen_read.ar_cnt[5]_i_6_n_0 ),
        .I3(\gen_read.ar_cnt_reg[4] ),
        .I4(s_axi_rready),
        .I5(\gen_read.ar_cnt_reg[5]_0 ),
        .O(\gen_read.ar_cnt[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \gen_read.ar_cnt[5]_i_6 
       (.I0(s_axi_arvalid),
        .I1(s_axi_arready_0[5]),
        .I2(sr_axi_arready),
        .O(\gen_read.ar_cnt[5]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[59]_i_1 
       (.I0(m_axi_arvalid),
        .O(\m_payload_i[59]_i_1_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [0]),
        .Q(\m_payload_i_reg[63]_0 [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [10]),
        .Q(\m_payload_i_reg[63]_0 [10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [11]),
        .Q(\m_payload_i_reg[63]_0 [11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [12]),
        .Q(\m_payload_i_reg[63]_0 [12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [13]),
        .Q(\m_payload_i_reg[63]_0 [13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [14]),
        .Q(\m_payload_i_reg[63]_0 [14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [15]),
        .Q(\m_payload_i_reg[63]_0 [15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [16]),
        .Q(\m_payload_i_reg[63]_0 [16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [17]),
        .Q(\m_payload_i_reg[63]_0 [17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [18]),
        .Q(\m_payload_i_reg[63]_0 [18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [19]),
        .Q(\m_payload_i_reg[63]_0 [19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [1]),
        .Q(\m_payload_i_reg[63]_0 [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [20]),
        .Q(\m_payload_i_reg[63]_0 [20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [21]),
        .Q(\m_payload_i_reg[63]_0 [21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [22]),
        .Q(\m_payload_i_reg[63]_0 [22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [23]),
        .Q(\m_payload_i_reg[63]_0 [23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [24]),
        .Q(\m_payload_i_reg[63]_0 [24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [25]),
        .Q(\m_payload_i_reg[63]_0 [25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [26]),
        .Q(\m_payload_i_reg[63]_0 [26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [27]),
        .Q(\m_payload_i_reg[63]_0 [27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [28]),
        .Q(\m_payload_i_reg[63]_0 [28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [29]),
        .Q(\m_payload_i_reg[63]_0 [29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [2]),
        .Q(\m_payload_i_reg[63]_0 [2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [30]),
        .Q(\m_payload_i_reg[63]_0 [30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [31]),
        .Q(\m_payload_i_reg[63]_0 [31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [32]),
        .Q(\m_payload_i_reg[63]_0 [32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [33]),
        .Q(\m_payload_i_reg[63]_0 [33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [34]),
        .Q(\m_payload_i_reg[63]_0 [34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [35]),
        .Q(\m_payload_i_reg[63]_0 [35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[37] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [36]),
        .Q(\m_payload_i_reg[63]_0 [36]),
        .R(1'b0));
  FDRE \m_payload_i_reg[38] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [37]),
        .Q(\m_payload_i_reg[63]_0 [37]),
        .R(1'b0));
  FDRE \m_payload_i_reg[39] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [38]),
        .Q(\m_payload_i_reg[63]_0 [38]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [3]),
        .Q(\m_payload_i_reg[63]_0 [3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[40] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [39]),
        .Q(\m_payload_i_reg[63]_0 [39]),
        .R(1'b0));
  FDRE \m_payload_i_reg[41] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [40]),
        .Q(\m_payload_i_reg[63]_0 [40]),
        .R(1'b0));
  FDRE \m_payload_i_reg[42] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [41]),
        .Q(\m_payload_i_reg[63]_0 [41]),
        .R(1'b0));
  FDRE \m_payload_i_reg[43] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [42]),
        .Q(\m_payload_i_reg[63]_0 [42]),
        .R(1'b0));
  FDRE \m_payload_i_reg[44] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [43]),
        .Q(\m_payload_i_reg[63]_0 [43]),
        .R(1'b0));
  FDRE \m_payload_i_reg[45] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [44]),
        .Q(\m_payload_i_reg[63]_0 [44]),
        .R(1'b0));
  FDRE \m_payload_i_reg[46] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [45]),
        .Q(\m_payload_i_reg[63]_0 [45]),
        .R(1'b0));
  FDRE \m_payload_i_reg[47] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [46]),
        .Q(\m_payload_i_reg[63]_0 [46]),
        .R(1'b0));
  FDRE \m_payload_i_reg[48] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [47]),
        .Q(\m_payload_i_reg[63]_0 [47]),
        .R(1'b0));
  FDRE \m_payload_i_reg[49] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [48]),
        .Q(\m_payload_i_reg[63]_0 [48]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [4]),
        .Q(\m_payload_i_reg[63]_0 [4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[50] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [49]),
        .Q(\m_payload_i_reg[63]_0 [49]),
        .R(1'b0));
  FDRE \m_payload_i_reg[51] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [50]),
        .Q(\m_payload_i_reg[63]_0 [50]),
        .R(1'b0));
  FDRE \m_payload_i_reg[52] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [51]),
        .Q(\m_payload_i_reg[63]_0 [51]),
        .R(1'b0));
  FDRE \m_payload_i_reg[53] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [52]),
        .Q(\m_payload_i_reg[63]_0 [52]),
        .R(1'b0));
  FDRE \m_payload_i_reg[54] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [53]),
        .Q(\m_payload_i_reg[63]_0 [53]),
        .R(1'b0));
  FDRE \m_payload_i_reg[55] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [54]),
        .Q(\m_payload_i_reg[63]_0 [54]),
        .R(1'b0));
  FDRE \m_payload_i_reg[56] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [55]),
        .Q(\m_payload_i_reg[63]_0 [55]),
        .R(1'b0));
  FDRE \m_payload_i_reg[57] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [56]),
        .Q(\m_payload_i_reg[63]_0 [56]),
        .R(1'b0));
  FDRE \m_payload_i_reg[58] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [57]),
        .Q(\m_payload_i_reg[63]_0 [57]),
        .R(1'b0));
  FDRE \m_payload_i_reg[59] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [58]),
        .Q(\m_payload_i_reg[63]_0 [58]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [5]),
        .Q(\m_payload_i_reg[63]_0 [5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[60] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [59]),
        .Q(\m_payload_i_reg[63]_0 [59]),
        .R(1'b0));
  FDRE \m_payload_i_reg[61] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [60]),
        .Q(\m_payload_i_reg[63]_0 [60]),
        .R(1'b0));
  FDRE \m_payload_i_reg[62] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [61]),
        .Q(\m_payload_i_reg[63]_0 [61]),
        .R(1'b0));
  FDRE \m_payload_i_reg[63] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [62]),
        .Q(\m_payload_i_reg[63]_0 [62]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [6]),
        .Q(\m_payload_i_reg[63]_0 [6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [7]),
        .Q(\m_payload_i_reg[63]_0 [7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [8]),
        .Q(\m_payload_i_reg[63]_0 [8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(\m_payload_i[59]_i_1_n_0 ),
        .D(\m_payload_i_reg[63]_1 [9]),
        .Q(\m_payload_i_reg[63]_0 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1D11)) 
    m_valid_i_i_2
       (.I0(m_axi_arready),
        .I1(sr_axi_arready),
        .I2(s_axi_arready_0[5]),
        .I3(s_axi_arvalid),
        .O(m_valid_i_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_2_n_0),
        .Q(m_axi_arvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_arready_INST_0
       (.I0(sr_axi_arready),
        .I1(s_axi_arready_0[5]),
        .O(s_axi_arready));
  LUT5 #(
    .INIT(32'hFD0DFFFF)) 
    s_ready_i_i_1__0
       (.I0(s_axi_arvalid),
        .I1(s_axi_arready_0[5]),
        .I2(m_axi_arvalid),
        .I3(m_axi_arready),
        .I4(s_ready_i_reg_0),
        .O(s_ready_i_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__0_n_0),
        .Q(sr_axi_arready),
        .R(p_1_in));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_26_axic_register_slice" *) 
module pfm_dynamic_axi_mmu_5_0_axi_register_slice_v2_1_26_axic_register_slice_0
   (p_1_in,
    \aresetn_d_reg[1]_0 ,
    SR,
    E,
    D,
    \gen_write.aw_cnt_reg[5] ,
    sr_axi_awvalid,
    m_axi_awvalid,
    s_axi_awready,
    \m_payload_i_reg[63]_0 ,
    aclk,
    Q,
    s_axi_awvalid,
    s_axi_bready,
    aw_pop0,
    m_axi_bvalid,
    m_axi_awvalid_0,
    m_axi_awready,
    w_mask,
    \gen_write.w_mask_reg ,
    aresetn,
    \m_payload_i_reg[63]_1 );
  output p_1_in;
  output \aresetn_d_reg[1]_0 ;
  output [0:0]SR;
  output [0:0]E;
  output [4:0]D;
  output \gen_write.aw_cnt_reg[5] ;
  output sr_axi_awvalid;
  output m_axi_awvalid;
  output s_axi_awready;
  output [62:0]\m_payload_i_reg[63]_0 ;
  input aclk;
  input [5:0]Q;
  input s_axi_awvalid;
  input s_axi_bready;
  input aw_pop0;
  input m_axi_bvalid;
  input [1:0]m_axi_awvalid_0;
  input m_axi_awready;
  input w_mask;
  input \gen_write.w_mask_reg ;
  input aresetn;
  input [62:0]\m_payload_i_reg[63]_1 ;

  wire [4:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg[1]_0 ;
  wire \aresetn_d_reg_n_0_[0] ;
  wire aw_cnt119_out;
  wire aw_pop0;
  wire \gen_write.aw_cnt[5]_i_4_n_0 ;
  wire \gen_write.aw_cnt[5]_i_5_n_0 ;
  wire \gen_write.aw_cnt_reg[5] ;
  wire \gen_write.w_mask_reg ;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire [1:0]m_axi_awvalid_0;
  wire m_axi_bvalid;
  wire [62:0]\m_payload_i_reg[63]_0 ;
  wire [62:0]\m_payload_i_reg[63]_1 ;
  wire m_valid_i_inv_i_1_n_0;
  wire mr_axi_awvalid;
  wire p_0_in__0;
  wire p_1_in;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_ready_i_i_2_n_0;
  wire sr_axi_awready;
  wire sr_axi_awvalid;
  wire w_mask;

  LUT1 #(
    .INIT(2'h1)) 
    \aresetn_d[0]_i_1 
       (.I0(aresetn),
        .O(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\aresetn_d_reg_n_0_[0] ),
        .R(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\aresetn_d_reg_n_0_[0] ),
        .Q(\aresetn_d_reg[1]_0 ),
        .R(p_0_in__0));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_write.aw_cnt[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(aw_cnt119_out),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \gen_write.aw_cnt[2]_i_1 
       (.I0(Q[2]),
        .I1(aw_cnt119_out),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \gen_write.aw_cnt[3]_i_1 
       (.I0(Q[3]),
        .I1(aw_cnt119_out),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \gen_write.aw_cnt[4]_i_1 
       (.I0(Q[4]),
        .I1(aw_cnt119_out),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h000000007F000000)) 
    \gen_write.aw_cnt[4]_i_2 
       (.I0(m_axi_bvalid),
        .I1(aw_pop0),
        .I2(s_axi_bready),
        .I3(sr_axi_awready),
        .I4(s_axi_awvalid),
        .I5(Q[5]),
        .O(aw_cnt119_out));
  LUT6 #(
    .INIT(64'hBF40404040404040)) 
    \gen_write.aw_cnt[5]_i_1 
       (.I0(Q[5]),
        .I1(s_axi_awvalid),
        .I2(sr_axi_awready),
        .I3(s_axi_bready),
        .I4(aw_pop0),
        .I5(m_axi_bvalid),
        .O(E));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \gen_write.aw_cnt[5]_i_2 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(\gen_write.aw_cnt[5]_i_4_n_0 ),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h222222222BBBBBBB)) 
    \gen_write.aw_cnt[5]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(m_axi_bvalid),
        .I3(aw_pop0),
        .I4(s_axi_bready),
        .I5(\gen_write.aw_cnt[5]_i_5_n_0 ),
        .O(\gen_write.aw_cnt[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \gen_write.aw_cnt[5]_i_5 
       (.I0(Q[5]),
        .I1(s_axi_awvalid),
        .I2(sr_axi_awready),
        .O(\gen_write.aw_cnt[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B1B00000)) 
    \gen_write.w_mask_i_1 
       (.I0(Q[5]),
        .I1(sr_axi_awready),
        .I2(w_mask),
        .I3(s_axi_awvalid),
        .I4(\aresetn_d_reg[1]_0 ),
        .I5(\gen_write.w_mask_reg ),
        .O(\gen_write.aw_cnt_reg[5] ));
  LUT3 #(
    .INIT(8'h01)) 
    m_axi_awvalid_INST_0
       (.I0(mr_axi_awvalid),
        .I1(m_axi_awvalid_0[1]),
        .I2(m_axi_awvalid_0[0]),
        .O(m_axi_awvalid));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [0]),
        .Q(\m_payload_i_reg[63]_0 [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [10]),
        .Q(\m_payload_i_reg[63]_0 [10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [11]),
        .Q(\m_payload_i_reg[63]_0 [11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [12]),
        .Q(\m_payload_i_reg[63]_0 [12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [13]),
        .Q(\m_payload_i_reg[63]_0 [13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [14]),
        .Q(\m_payload_i_reg[63]_0 [14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [15]),
        .Q(\m_payload_i_reg[63]_0 [15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [16]),
        .Q(\m_payload_i_reg[63]_0 [16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [17]),
        .Q(\m_payload_i_reg[63]_0 [17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [18]),
        .Q(\m_payload_i_reg[63]_0 [18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [19]),
        .Q(\m_payload_i_reg[63]_0 [19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [1]),
        .Q(\m_payload_i_reg[63]_0 [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [20]),
        .Q(\m_payload_i_reg[63]_0 [20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [21]),
        .Q(\m_payload_i_reg[63]_0 [21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [22]),
        .Q(\m_payload_i_reg[63]_0 [22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [23]),
        .Q(\m_payload_i_reg[63]_0 [23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [24]),
        .Q(\m_payload_i_reg[63]_0 [24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [25]),
        .Q(\m_payload_i_reg[63]_0 [25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [26]),
        .Q(\m_payload_i_reg[63]_0 [26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [27]),
        .Q(\m_payload_i_reg[63]_0 [27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [28]),
        .Q(\m_payload_i_reg[63]_0 [28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [29]),
        .Q(\m_payload_i_reg[63]_0 [29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [2]),
        .Q(\m_payload_i_reg[63]_0 [2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [30]),
        .Q(\m_payload_i_reg[63]_0 [30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [31]),
        .Q(\m_payload_i_reg[63]_0 [31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [32]),
        .Q(\m_payload_i_reg[63]_0 [32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [33]),
        .Q(\m_payload_i_reg[63]_0 [33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [34]),
        .Q(\m_payload_i_reg[63]_0 [34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [35]),
        .Q(\m_payload_i_reg[63]_0 [35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[37] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [36]),
        .Q(\m_payload_i_reg[63]_0 [36]),
        .R(1'b0));
  FDRE \m_payload_i_reg[38] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [37]),
        .Q(\m_payload_i_reg[63]_0 [37]),
        .R(1'b0));
  FDRE \m_payload_i_reg[39] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [38]),
        .Q(\m_payload_i_reg[63]_0 [38]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [3]),
        .Q(\m_payload_i_reg[63]_0 [3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[40] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [39]),
        .Q(\m_payload_i_reg[63]_0 [39]),
        .R(1'b0));
  FDRE \m_payload_i_reg[41] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [40]),
        .Q(\m_payload_i_reg[63]_0 [40]),
        .R(1'b0));
  FDRE \m_payload_i_reg[42] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [41]),
        .Q(\m_payload_i_reg[63]_0 [41]),
        .R(1'b0));
  FDRE \m_payload_i_reg[43] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [42]),
        .Q(\m_payload_i_reg[63]_0 [42]),
        .R(1'b0));
  FDRE \m_payload_i_reg[44] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [43]),
        .Q(\m_payload_i_reg[63]_0 [43]),
        .R(1'b0));
  FDRE \m_payload_i_reg[45] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [44]),
        .Q(\m_payload_i_reg[63]_0 [44]),
        .R(1'b0));
  FDRE \m_payload_i_reg[46] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [45]),
        .Q(\m_payload_i_reg[63]_0 [45]),
        .R(1'b0));
  FDRE \m_payload_i_reg[47] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [46]),
        .Q(\m_payload_i_reg[63]_0 [46]),
        .R(1'b0));
  FDRE \m_payload_i_reg[48] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [47]),
        .Q(\m_payload_i_reg[63]_0 [47]),
        .R(1'b0));
  FDRE \m_payload_i_reg[49] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [48]),
        .Q(\m_payload_i_reg[63]_0 [48]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [4]),
        .Q(\m_payload_i_reg[63]_0 [4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[50] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [49]),
        .Q(\m_payload_i_reg[63]_0 [49]),
        .R(1'b0));
  FDRE \m_payload_i_reg[51] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [50]),
        .Q(\m_payload_i_reg[63]_0 [50]),
        .R(1'b0));
  FDRE \m_payload_i_reg[52] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [51]),
        .Q(\m_payload_i_reg[63]_0 [51]),
        .R(1'b0));
  FDRE \m_payload_i_reg[53] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [52]),
        .Q(\m_payload_i_reg[63]_0 [52]),
        .R(1'b0));
  FDRE \m_payload_i_reg[54] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [53]),
        .Q(\m_payload_i_reg[63]_0 [53]),
        .R(1'b0));
  FDRE \m_payload_i_reg[55] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [54]),
        .Q(\m_payload_i_reg[63]_0 [54]),
        .R(1'b0));
  FDRE \m_payload_i_reg[56] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [55]),
        .Q(\m_payload_i_reg[63]_0 [55]),
        .R(1'b0));
  FDRE \m_payload_i_reg[57] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [56]),
        .Q(\m_payload_i_reg[63]_0 [56]),
        .R(1'b0));
  FDRE \m_payload_i_reg[58] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [57]),
        .Q(\m_payload_i_reg[63]_0 [57]),
        .R(1'b0));
  FDRE \m_payload_i_reg[59] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [58]),
        .Q(\m_payload_i_reg[63]_0 [58]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [5]),
        .Q(\m_payload_i_reg[63]_0 [5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[60] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [59]),
        .Q(\m_payload_i_reg[63]_0 [59]),
        .R(1'b0));
  FDRE \m_payload_i_reg[61] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [60]),
        .Q(\m_payload_i_reg[63]_0 [60]),
        .R(1'b0));
  FDRE \m_payload_i_reg[62] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [61]),
        .Q(\m_payload_i_reg[63]_0 [61]),
        .R(1'b0));
  FDRE \m_payload_i_reg[63] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [62]),
        .Q(\m_payload_i_reg[63]_0 [62]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [6]),
        .Q(\m_payload_i_reg[63]_0 [6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [7]),
        .Q(\m_payload_i_reg[63]_0 [7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [8]),
        .Q(\m_payload_i_reg[63]_0 [8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[63]_1 [9]),
        .Q(\m_payload_i_reg[63]_0 [9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    m_valid_i_i_1
       (.I0(\aresetn_d_reg[1]_0 ),
        .O(SR));
  LUT6 #(
    .INIT(64'hFF10FF100010FF10)) 
    m_valid_i_inv_i_1
       (.I0(m_axi_awvalid_0[1]),
        .I1(m_axi_awvalid_0[0]),
        .I2(m_axi_awready),
        .I3(sr_axi_awready),
        .I4(s_axi_awvalid),
        .I5(Q[5]),
        .O(m_valid_i_inv_i_1_n_0));
  (* inverted = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    m_valid_i_reg_inv
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_inv_i_1_n_0),
        .Q(mr_axi_awvalid),
        .S(SR));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_awready_INST_0
       (.I0(sr_axi_awready),
        .I1(Q[5]),
        .O(s_axi_awready));
  LUT1 #(
    .INIT(2'h1)) 
    s_ready_i_i_1
       (.I0(\aresetn_d_reg_n_0_[0] ),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'h44474444FFFFFFFF)) 
    s_ready_i_i_2
       (.I0(sr_axi_awvalid),
        .I1(mr_axi_awvalid),
        .I2(m_axi_awvalid_0[1]),
        .I3(m_axi_awvalid_0[0]),
        .I4(m_axi_awready),
        .I5(\aresetn_d_reg[1]_0 ),
        .O(s_ready_i_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_ready_i_i_3
       (.I0(s_axi_awvalid),
        .I1(Q[5]),
        .O(sr_axi_awvalid));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_2_n_0),
        .Q(sr_axi_awready),
        .R(p_1_in));
endmodule

(* CHECK_LICENSE_TYPE = "pfm_dynamic_axi_mmu_4_0,axi_mmu_v2_1_24_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_mmu_v2_1_24_top,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module pfm_dynamic_axi_mmu_5_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel2_clk_out1, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWID" *) input [5:0]s_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [127:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [15:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BID" *) output [5:0]s_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARID" *) input [5:0]s_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RID" *) output [5:0]s_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [127:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 6, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel2_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWID" *) output [5:0]m_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [7:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [0:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [127:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [15:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BID" *) input [5:0]m_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARID" *) output [5:0]m_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [7:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [0:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RID" *) input [5:0]m_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [127:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 6, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel2_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [5:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [5:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [5:0]m_axi_bid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [127:0]m_axi_rdata;
  wire [5:0]m_axi_rid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [127:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [15:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [5:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [5:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [5:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [127:0]s_axi_rdata;
  wire [5:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [5:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "128" *) 
  (* C_AXI_ID_WIDTH = "6" *) 
  (* C_AXI_PROTOCOL = "0" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_BASE_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_DEST = "1'b0" *) 
  (* C_DEST_WIDTH = "1" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_M_AXI_ADDR_WIDTH = "32" *) 
  (* C_M_AXI_SUPPORTS_READ = "1'b1" *) 
  (* C_M_AXI_SUPPORTS_WRITE = "1'b1" *) 
  (* C_NUM_RANGES = "1" *) 
  (* C_PREFIX = "1'b0" *) 
  (* C_PREFIX_WIDTH = "1" *) 
  (* C_RANGE_SIZE = "32" *) 
  (* C_S_AXI_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_SUPPORTS_READ = "1" *) 
  (* C_S_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_USES_DEST = "0" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_NUM_RANGES_LOG = "1" *) 
  (* R_DECERR = "2'b11" *) 
  (* R_IDLE = "2'b00" *) 
  (* R_PENDING = "2'b01" *) 
  (* W_DECERR = "2'b11" *) 
  (* W_IDLE = "2'b00" *) 
  (* W_PENDING = "2'b01" *) 
  pfm_dynamic_axi_mmu_5_0_axi_mmu_v2_1_24_top inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(m_axi_arid),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(m_axi_awid),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(m_axi_bid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[5:0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
