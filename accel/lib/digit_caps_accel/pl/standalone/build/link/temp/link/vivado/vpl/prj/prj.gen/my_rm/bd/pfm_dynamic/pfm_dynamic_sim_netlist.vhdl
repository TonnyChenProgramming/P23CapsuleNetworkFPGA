-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Tue Jul  7 21:07:05 2026
-- Host        : tonny-ASUS-TUF-Dash-F15-FX516PE-FX516PE running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/tonny/p4p/P23CapsuleNetworkFPGA/accel/lib/digit_caps_accel/pl/standalone/build/link/temp/link/vivado/vpl/prj/prj.gen/my_rm/bd/pfm_dynamic/pfm_dynamic_sim_netlist.vhdl
-- Design      : pfm_dynamic
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic_xlconcat_interrupt_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In22 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In24 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In25 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In26 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In27 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In28 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In29 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In30 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In31 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pfm_dynamic_xlconcat_interrupt_0_0 : entity is "pfm_dynamic_xlconcat_interrupt_0_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of pfm_dynamic_xlconcat_interrupt_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of pfm_dynamic_xlconcat_interrupt_0_0 : entity is "xlconcat_v2_1_4_xlconcat,Vivado 2022.1";
end pfm_dynamic_xlconcat_interrupt_0_0;

architecture STRUCTURE of pfm_dynamic_xlconcat_interrupt_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^in0\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^in0\(0) <= In0(0);
  dout(31) <= \<const0>\;
  dout(30) <= \<const0>\;
  dout(29) <= \<const0>\;
  dout(28) <= \<const0>\;
  dout(27) <= \<const0>\;
  dout(26) <= \<const0>\;
  dout(25) <= \<const0>\;
  dout(24) <= \<const0>\;
  dout(23) <= \<const0>\;
  dout(22) <= \<const0>\;
  dout(21) <= \<const0>\;
  dout(20) <= \<const0>\;
  dout(19) <= \<const0>\;
  dout(18) <= \<const0>\;
  dout(17) <= \<const0>\;
  dout(16) <= \<const0>\;
  dout(15) <= \<const0>\;
  dout(14) <= \<const0>\;
  dout(13) <= \<const0>\;
  dout(12) <= \<const0>\;
  dout(11) <= \<const0>\;
  dout(10) <= \<const0>\;
  dout(9) <= \<const0>\;
  dout(8) <= \<const0>\;
  dout(7) <= \<const0>\;
  dout(6) <= \<const0>\;
  dout(5) <= \<const0>\;
  dout(4) <= \<const0>\;
  dout(3) <= \<const0>\;
  dout(2) <= \<const0>\;
  dout(1) <= \<const0>\;
  dout(0) <= \^in0\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic_interrupt_concat_imp_1SXQM3I is
  port (
    xlconcat_interrupt_dout : out STD_LOGIC_VECTOR ( 0 to 0 );
    interrupt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pfm_dynamic_interrupt_concat_imp_1SXQM3I : entity is "interrupt_concat_imp_1SXQM3I";
end pfm_dynamic_interrupt_concat_imp_1SXQM3I;

architecture STRUCTURE of pfm_dynamic_interrupt_concat_imp_1SXQM3I is
  signal NLW_xlconcat_interrupt_0_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xlconcat_interrupt_0 : label is "pfm_dynamic_xlconcat_interrupt_0_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of xlconcat_interrupt_0 : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xlconcat_interrupt_0 : label is "xlconcat_v2_1_4_xlconcat,Vivado 2022.1";
begin
xlconcat_interrupt_0: entity work.pfm_dynamic_xlconcat_interrupt_0_0
     port map (
      In0(0) => interrupt,
      In1(0) => '0',
      In10(0) => '0',
      In11(0) => '0',
      In12(0) => '0',
      In13(0) => '0',
      In14(0) => '0',
      In15(0) => '0',
      In16(0) => '0',
      In17(0) => '0',
      In18(0) => '0',
      In19(0) => '0',
      In2(0) => '0',
      In20(0) => '0',
      In21(0) => '0',
      In22(0) => '0',
      In23(0) => '0',
      In24(0) => '0',
      In25(0) => '0',
      In26(0) => '0',
      In27(0) => '0',
      In28(0) => '0',
      In29(0) => '0',
      In3(0) => '0',
      In30(0) => '0',
      In31(0) => '0',
      In4(0) => '0',
      In5(0) => '0',
      In6(0) => '0',
      In7(0) => '0',
      In8(0) => '0',
      In9(0) => '0',
      dout(31 downto 1) => NLW_xlconcat_interrupt_0_dout_UNCONNECTED(31 downto 1),
      dout(0) => xlconcat_interrupt_dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic_m00_couplers_imp_1A4N1A0 is
  port (
    S_AXI_awready : out STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    S_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pfm_dynamic_m00_couplers_imp_1A4N1A0 : entity is "m00_couplers_imp_1A4N1A0";
end pfm_dynamic_m00_couplers_imp_1A4N1A0;

architecture STRUCTURE of pfm_dynamic_m00_couplers_imp_1A4N1A0 is
  component pfm_dynamic_auto_ds_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_auto_ds_1;
  component pfm_dynamic_auto_rs_w_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_auto_rs_w_2;
  component pfm_dynamic_m00_regslice_4 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_m00_regslice_4;
  signal auto_ds_to_m00_regslice_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ds_to_m00_regslice_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m00_regslice_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m00_regslice_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_m00_regslice_ARLOCK : STD_LOGIC;
  signal auto_ds_to_m00_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m00_regslice_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m00_regslice_ARREADY : STD_LOGIC;
  signal auto_ds_to_m00_regslice_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m00_regslice_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m00_regslice_ARVALID : STD_LOGIC;
  signal auto_ds_to_m00_regslice_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ds_to_m00_regslice_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m00_regslice_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m00_regslice_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_m00_regslice_AWLOCK : STD_LOGIC;
  signal auto_ds_to_m00_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m00_regslice_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m00_regslice_AWREADY : STD_LOGIC;
  signal auto_ds_to_m00_regslice_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m00_regslice_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m00_regslice_AWVALID : STD_LOGIC;
  signal auto_ds_to_m00_regslice_BREADY : STD_LOGIC;
  signal auto_ds_to_m00_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m00_regslice_BVALID : STD_LOGIC;
  signal auto_ds_to_m00_regslice_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal auto_ds_to_m00_regslice_RLAST : STD_LOGIC;
  signal auto_ds_to_m00_regslice_RREADY : STD_LOGIC;
  signal auto_ds_to_m00_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m00_regslice_RVALID : STD_LOGIC;
  signal auto_ds_to_m00_regslice_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal auto_ds_to_m00_regslice_WLAST : STD_LOGIC;
  signal auto_ds_to_m00_regslice_WREADY : STD_LOGIC;
  signal auto_ds_to_m00_regslice_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_ds_to_m00_regslice_WVALID : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_rs_w_to_auto_ds_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_rs_w_to_auto_ds_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_rs_w_to_auto_ds_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_rs_w_to_auto_ds_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_rs_w_to_auto_ds_ARLOCK : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_rs_w_to_auto_ds_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_rs_w_to_auto_ds_ARREADY : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_rs_w_to_auto_ds_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_rs_w_to_auto_ds_ARVALID : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_rs_w_to_auto_ds_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_rs_w_to_auto_ds_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_rs_w_to_auto_ds_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_rs_w_to_auto_ds_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_rs_w_to_auto_ds_AWLOCK : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_rs_w_to_auto_ds_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_rs_w_to_auto_ds_AWREADY : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_rs_w_to_auto_ds_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_rs_w_to_auto_ds_AWVALID : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_rs_w_to_auto_ds_BREADY : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_rs_w_to_auto_ds_BVALID : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_rs_w_to_auto_ds_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_rs_w_to_auto_ds_RLAST : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_RREADY : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_rs_w_to_auto_ds_RVALID : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_rs_w_to_auto_ds_WLAST : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_WREADY : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_rs_w_to_auto_ds_WVALID : STD_LOGIC;
  signal NLW_m00_regslice_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m00_regslice_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_ds : label is "axi_dwidth_converter_v2_1_26_top,Vivado 2022.1";
  attribute X_CORE_INFO of auto_rs_w : label is "axi_register_slice_v2_1_26_axi_register_slice,Vivado 2022.1";
  attribute X_CORE_INFO of m00_regslice : label is "axi_register_slice_v2_1_26_axi_register_slice,Vivado 2022.1";
begin
auto_ds: component pfm_dynamic_auto_ds_1
     port map (
      m_axi_araddr(63 downto 0) => auto_ds_to_m00_regslice_ARADDR(63 downto 0),
      m_axi_arburst(1 downto 0) => auto_ds_to_m00_regslice_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_ds_to_m00_regslice_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_ds_to_m00_regslice_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_ds_to_m00_regslice_ARLOCK,
      m_axi_arprot(2 downto 0) => auto_ds_to_m00_regslice_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_ds_to_m00_regslice_ARQOS(3 downto 0),
      m_axi_arready => auto_ds_to_m00_regslice_ARREADY,
      m_axi_arregion(3 downto 0) => auto_ds_to_m00_regslice_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_ds_to_m00_regslice_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_ds_to_m00_regslice_ARVALID,
      m_axi_awaddr(63 downto 0) => auto_ds_to_m00_regslice_AWADDR(63 downto 0),
      m_axi_awburst(1 downto 0) => auto_ds_to_m00_regslice_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_ds_to_m00_regslice_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_ds_to_m00_regslice_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_ds_to_m00_regslice_AWLOCK,
      m_axi_awprot(2 downto 0) => auto_ds_to_m00_regslice_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_ds_to_m00_regslice_AWQOS(3 downto 0),
      m_axi_awready => auto_ds_to_m00_regslice_AWREADY,
      m_axi_awregion(3 downto 0) => auto_ds_to_m00_regslice_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_ds_to_m00_regslice_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_ds_to_m00_regslice_AWVALID,
      m_axi_bready => auto_ds_to_m00_regslice_BREADY,
      m_axi_bresp(1 downto 0) => auto_ds_to_m00_regslice_BRESP(1 downto 0),
      m_axi_bvalid => auto_ds_to_m00_regslice_BVALID,
      m_axi_rdata(127 downto 0) => auto_ds_to_m00_regslice_RDATA(127 downto 0),
      m_axi_rlast => auto_ds_to_m00_regslice_RLAST,
      m_axi_rready => auto_ds_to_m00_regslice_RREADY,
      m_axi_rresp(1 downto 0) => auto_ds_to_m00_regslice_RRESP(1 downto 0),
      m_axi_rvalid => auto_ds_to_m00_regslice_RVALID,
      m_axi_wdata(127 downto 0) => auto_ds_to_m00_regslice_WDATA(127 downto 0),
      m_axi_wlast => auto_ds_to_m00_regslice_WLAST,
      m_axi_wready => auto_ds_to_m00_regslice_WREADY,
      m_axi_wstrb(15 downto 0) => auto_ds_to_m00_regslice_WSTRB(15 downto 0),
      m_axi_wvalid => auto_ds_to_m00_regslice_WVALID,
      s_axi_aclk => M00_ACLK,
      s_axi_araddr(63 downto 0) => auto_rs_w_to_auto_ds_ARADDR(63 downto 0),
      s_axi_arburst(1 downto 0) => auto_rs_w_to_auto_ds_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_rs_w_to_auto_ds_ARCACHE(3 downto 0),
      s_axi_aresetn => M00_ARESETN,
      s_axi_arid(1 downto 0) => auto_rs_w_to_auto_ds_ARID(1 downto 0),
      s_axi_arlen(7 downto 0) => auto_rs_w_to_auto_ds_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_rs_w_to_auto_ds_ARLOCK,
      s_axi_arprot(2 downto 0) => auto_rs_w_to_auto_ds_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_rs_w_to_auto_ds_ARQOS(3 downto 0),
      s_axi_arready => auto_rs_w_to_auto_ds_ARREADY,
      s_axi_arregion(3 downto 0) => auto_rs_w_to_auto_ds_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_rs_w_to_auto_ds_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_rs_w_to_auto_ds_ARVALID,
      s_axi_awaddr(63 downto 0) => auto_rs_w_to_auto_ds_AWADDR(63 downto 0),
      s_axi_awburst(1 downto 0) => auto_rs_w_to_auto_ds_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_rs_w_to_auto_ds_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => auto_rs_w_to_auto_ds_AWID(1 downto 0),
      s_axi_awlen(7 downto 0) => auto_rs_w_to_auto_ds_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_rs_w_to_auto_ds_AWLOCK,
      s_axi_awprot(2 downto 0) => auto_rs_w_to_auto_ds_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_rs_w_to_auto_ds_AWQOS(3 downto 0),
      s_axi_awready => auto_rs_w_to_auto_ds_AWREADY,
      s_axi_awregion(3 downto 0) => auto_rs_w_to_auto_ds_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_rs_w_to_auto_ds_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_rs_w_to_auto_ds_AWVALID,
      s_axi_bid(1 downto 0) => auto_rs_w_to_auto_ds_BID(1 downto 0),
      s_axi_bready => auto_rs_w_to_auto_ds_BREADY,
      s_axi_bresp(1 downto 0) => auto_rs_w_to_auto_ds_BRESP(1 downto 0),
      s_axi_bvalid => auto_rs_w_to_auto_ds_BVALID,
      s_axi_rdata(511 downto 0) => auto_rs_w_to_auto_ds_RDATA(511 downto 0),
      s_axi_rid(1 downto 0) => auto_rs_w_to_auto_ds_RID(1 downto 0),
      s_axi_rlast => auto_rs_w_to_auto_ds_RLAST,
      s_axi_rready => auto_rs_w_to_auto_ds_RREADY,
      s_axi_rresp(1 downto 0) => auto_rs_w_to_auto_ds_RRESP(1 downto 0),
      s_axi_rvalid => auto_rs_w_to_auto_ds_RVALID,
      s_axi_wdata(511 downto 0) => auto_rs_w_to_auto_ds_WDATA(511 downto 0),
      s_axi_wlast => auto_rs_w_to_auto_ds_WLAST,
      s_axi_wready => auto_rs_w_to_auto_ds_WREADY,
      s_axi_wstrb(63 downto 0) => auto_rs_w_to_auto_ds_WSTRB(63 downto 0),
      s_axi_wvalid => auto_rs_w_to_auto_ds_WVALID
    );
auto_rs_w: component pfm_dynamic_auto_rs_w_2
     port map (
      aclk => M00_ACLK,
      aresetn => M00_ARESETN,
      m_axi_araddr(63 downto 0) => auto_rs_w_to_auto_ds_ARADDR(63 downto 0),
      m_axi_arburst(1 downto 0) => auto_rs_w_to_auto_ds_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_rs_w_to_auto_ds_ARCACHE(3 downto 0),
      m_axi_arid(1 downto 0) => auto_rs_w_to_auto_ds_ARID(1 downto 0),
      m_axi_arlen(7 downto 0) => auto_rs_w_to_auto_ds_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_rs_w_to_auto_ds_ARLOCK,
      m_axi_arprot(2 downto 0) => auto_rs_w_to_auto_ds_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_rs_w_to_auto_ds_ARQOS(3 downto 0),
      m_axi_arready => auto_rs_w_to_auto_ds_ARREADY,
      m_axi_arregion(3 downto 0) => auto_rs_w_to_auto_ds_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_rs_w_to_auto_ds_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_rs_w_to_auto_ds_ARVALID,
      m_axi_awaddr(63 downto 0) => auto_rs_w_to_auto_ds_AWADDR(63 downto 0),
      m_axi_awburst(1 downto 0) => auto_rs_w_to_auto_ds_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_rs_w_to_auto_ds_AWCACHE(3 downto 0),
      m_axi_awid(1 downto 0) => auto_rs_w_to_auto_ds_AWID(1 downto 0),
      m_axi_awlen(7 downto 0) => auto_rs_w_to_auto_ds_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_rs_w_to_auto_ds_AWLOCK,
      m_axi_awprot(2 downto 0) => auto_rs_w_to_auto_ds_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_rs_w_to_auto_ds_AWQOS(3 downto 0),
      m_axi_awready => auto_rs_w_to_auto_ds_AWREADY,
      m_axi_awregion(3 downto 0) => auto_rs_w_to_auto_ds_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_rs_w_to_auto_ds_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_rs_w_to_auto_ds_AWVALID,
      m_axi_bid(1 downto 0) => auto_rs_w_to_auto_ds_BID(1 downto 0),
      m_axi_bready => auto_rs_w_to_auto_ds_BREADY,
      m_axi_bresp(1 downto 0) => auto_rs_w_to_auto_ds_BRESP(1 downto 0),
      m_axi_bvalid => auto_rs_w_to_auto_ds_BVALID,
      m_axi_rdata(511 downto 0) => auto_rs_w_to_auto_ds_RDATA(511 downto 0),
      m_axi_rid(1 downto 0) => auto_rs_w_to_auto_ds_RID(1 downto 0),
      m_axi_rlast => auto_rs_w_to_auto_ds_RLAST,
      m_axi_rready => auto_rs_w_to_auto_ds_RREADY,
      m_axi_rresp(1 downto 0) => auto_rs_w_to_auto_ds_RRESP(1 downto 0),
      m_axi_rvalid => auto_rs_w_to_auto_ds_RVALID,
      m_axi_wdata(511 downto 0) => auto_rs_w_to_auto_ds_WDATA(511 downto 0),
      m_axi_wlast => auto_rs_w_to_auto_ds_WLAST,
      m_axi_wready => auto_rs_w_to_auto_ds_WREADY,
      m_axi_wstrb(63 downto 0) => auto_rs_w_to_auto_ds_WSTRB(63 downto 0),
      m_axi_wvalid => auto_rs_w_to_auto_ds_WVALID,
      s_axi_araddr(63 downto 0) => S_AXI_araddr(63 downto 0),
      s_axi_arburst(1 downto 0) => S_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S_AXI_arcache(3 downto 0),
      s_axi_arid(1 downto 0) => S_AXI_arid(1 downto 0),
      s_axi_arlen(7 downto 0) => S_AXI_arlen(7 downto 0),
      s_axi_arlock(0) => S_AXI_arlock(0),
      s_axi_arprot(2 downto 0) => S_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => S_AXI_arqos(3 downto 0),
      s_axi_arready => S_AXI_arready,
      s_axi_arregion(3 downto 0) => S_AXI_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => S_AXI_arsize(2 downto 0),
      s_axi_arvalid => S_AXI_arvalid,
      s_axi_awaddr(63 downto 0) => S_AXI_awaddr(63 downto 0),
      s_axi_awburst(1 downto 0) => S_AXI_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => S_AXI_awcache(3 downto 0),
      s_axi_awid(1 downto 0) => S_AXI_awid(1 downto 0),
      s_axi_awlen(7 downto 0) => S_AXI_awlen(7 downto 0),
      s_axi_awlock(0) => S_AXI_awlock(0),
      s_axi_awprot(2 downto 0) => S_AXI_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => S_AXI_awqos(3 downto 0),
      s_axi_awready => S_AXI_awready,
      s_axi_awregion(3 downto 0) => S_AXI_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => S_AXI_awsize(2 downto 0),
      s_axi_awvalid => S_AXI_awvalid,
      s_axi_bid(1 downto 0) => S_AXI_bid(1 downto 0),
      s_axi_bready => S_AXI_bready,
      s_axi_bresp(1 downto 0) => S_AXI_bresp(1 downto 0),
      s_axi_bvalid => S_AXI_bvalid,
      s_axi_rdata(511 downto 0) => S_AXI_rdata(511 downto 0),
      s_axi_rid(1 downto 0) => S_AXI_rid(1 downto 0),
      s_axi_rlast => S_AXI_rlast,
      s_axi_rready => S_AXI_rready,
      s_axi_rresp(1 downto 0) => S_AXI_rresp(1 downto 0),
      s_axi_rvalid => S_AXI_rvalid,
      s_axi_wdata(511 downto 0) => S_AXI_wdata(511 downto 0),
      s_axi_wlast => S_AXI_wlast,
      s_axi_wready => S_AXI_wready,
      s_axi_wstrb(63 downto 0) => S_AXI_wstrb(63 downto 0),
      s_axi_wvalid => S_AXI_wvalid
    );
m00_regslice: component pfm_dynamic_m00_regslice_4
     port map (
      aclk => M00_ACLK,
      aresetn => M00_ARESETN,
      m_axi_araddr(63 downto 0) => M00_AXI_araddr(63 downto 0),
      m_axi_arburst(1 downto 0) => M00_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M00_AXI_arcache(3 downto 0),
      m_axi_arlen(7 downto 0) => M00_AXI_arlen(7 downto 0),
      m_axi_arlock(0) => M00_AXI_arlock(0),
      m_axi_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M00_AXI_arqos(3 downto 0),
      m_axi_arready => M00_AXI_arready,
      m_axi_arregion(3 downto 0) => NLW_m00_regslice_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => M00_AXI_arsize(2 downto 0),
      m_axi_arvalid => M00_AXI_arvalid,
      m_axi_awaddr(63 downto 0) => M00_AXI_awaddr(63 downto 0),
      m_axi_awburst(1 downto 0) => M00_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => M00_AXI_awcache(3 downto 0),
      m_axi_awlen(7 downto 0) => M00_AXI_awlen(7 downto 0),
      m_axi_awlock(0) => M00_AXI_awlock(0),
      m_axi_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => M00_AXI_awqos(3 downto 0),
      m_axi_awready => M00_AXI_awready,
      m_axi_awregion(3 downto 0) => NLW_m00_regslice_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => M00_AXI_awsize(2 downto 0),
      m_axi_awvalid => M00_AXI_awvalid,
      m_axi_bready => M00_AXI_bready,
      m_axi_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      m_axi_bvalid => M00_AXI_bvalid,
      m_axi_rdata(127 downto 0) => M00_AXI_rdata(127 downto 0),
      m_axi_rlast => M00_AXI_rlast,
      m_axi_rready => M00_AXI_rready,
      m_axi_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      m_axi_rvalid => M00_AXI_rvalid,
      m_axi_wdata(127 downto 0) => M00_AXI_wdata(127 downto 0),
      m_axi_wlast => M00_AXI_wlast,
      m_axi_wready => M00_AXI_wready,
      m_axi_wstrb(15 downto 0) => M00_AXI_wstrb(15 downto 0),
      m_axi_wvalid => M00_AXI_wvalid,
      s_axi_araddr(63 downto 0) => auto_ds_to_m00_regslice_ARADDR(63 downto 0),
      s_axi_arburst(1 downto 0) => auto_ds_to_m00_regslice_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_ds_to_m00_regslice_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => auto_ds_to_m00_regslice_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_ds_to_m00_regslice_ARLOCK,
      s_axi_arprot(2 downto 0) => auto_ds_to_m00_regslice_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_ds_to_m00_regslice_ARQOS(3 downto 0),
      s_axi_arready => auto_ds_to_m00_regslice_ARREADY,
      s_axi_arregion(3 downto 0) => auto_ds_to_m00_regslice_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_ds_to_m00_regslice_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_ds_to_m00_regslice_ARVALID,
      s_axi_awaddr(63 downto 0) => auto_ds_to_m00_regslice_AWADDR(63 downto 0),
      s_axi_awburst(1 downto 0) => auto_ds_to_m00_regslice_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_ds_to_m00_regslice_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => auto_ds_to_m00_regslice_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_ds_to_m00_regslice_AWLOCK,
      s_axi_awprot(2 downto 0) => auto_ds_to_m00_regslice_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_ds_to_m00_regslice_AWQOS(3 downto 0),
      s_axi_awready => auto_ds_to_m00_regslice_AWREADY,
      s_axi_awregion(3 downto 0) => auto_ds_to_m00_regslice_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_ds_to_m00_regslice_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_ds_to_m00_regslice_AWVALID,
      s_axi_bready => auto_ds_to_m00_regslice_BREADY,
      s_axi_bresp(1 downto 0) => auto_ds_to_m00_regslice_BRESP(1 downto 0),
      s_axi_bvalid => auto_ds_to_m00_regslice_BVALID,
      s_axi_rdata(127 downto 0) => auto_ds_to_m00_regslice_RDATA(127 downto 0),
      s_axi_rlast => auto_ds_to_m00_regslice_RLAST,
      s_axi_rready => auto_ds_to_m00_regslice_RREADY,
      s_axi_rresp(1 downto 0) => auto_ds_to_m00_regslice_RRESP(1 downto 0),
      s_axi_rvalid => auto_ds_to_m00_regslice_RVALID,
      s_axi_wdata(127 downto 0) => auto_ds_to_m00_regslice_WDATA(127 downto 0),
      s_axi_wlast => auto_ds_to_m00_regslice_WLAST,
      s_axi_wready => auto_ds_to_m00_regslice_WREADY,
      s_axi_wstrb(15 downto 0) => auto_ds_to_m00_regslice_WSTRB(15 downto 0),
      s_axi_wvalid => auto_ds_to_m00_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic_m00_couplers_imp_R2G0XH is
  port (
    S_AXI_awready : out STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pfm_dynamic_m00_couplers_imp_R2G0XH : entity is "m00_couplers_imp_R2G0XH";
end pfm_dynamic_m00_couplers_imp_R2G0XH;

architecture STRUCTURE of pfm_dynamic_m00_couplers_imp_R2G0XH is
  component pfm_dynamic_auto_ds_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_auto_ds_0;
  component pfm_dynamic_auto_rs_w_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_auto_rs_w_0;
  component pfm_dynamic_m00_regslice_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_m00_regslice_3;
  signal auto_ds_to_m00_regslice_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ds_to_m00_regslice_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m00_regslice_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m00_regslice_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_m00_regslice_ARLOCK : STD_LOGIC;
  signal auto_ds_to_m00_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m00_regslice_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m00_regslice_ARREADY : STD_LOGIC;
  signal auto_ds_to_m00_regslice_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m00_regslice_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m00_regslice_ARVALID : STD_LOGIC;
  signal auto_ds_to_m00_regslice_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_ds_to_m00_regslice_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m00_regslice_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m00_regslice_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_m00_regslice_AWLOCK : STD_LOGIC;
  signal auto_ds_to_m00_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m00_regslice_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m00_regslice_AWREADY : STD_LOGIC;
  signal auto_ds_to_m00_regslice_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m00_regslice_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m00_regslice_AWVALID : STD_LOGIC;
  signal auto_ds_to_m00_regslice_BREADY : STD_LOGIC;
  signal auto_ds_to_m00_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m00_regslice_BVALID : STD_LOGIC;
  signal auto_ds_to_m00_regslice_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal auto_ds_to_m00_regslice_RLAST : STD_LOGIC;
  signal auto_ds_to_m00_regslice_RREADY : STD_LOGIC;
  signal auto_ds_to_m00_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m00_regslice_RVALID : STD_LOGIC;
  signal auto_ds_to_m00_regslice_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal auto_ds_to_m00_regslice_WLAST : STD_LOGIC;
  signal auto_ds_to_m00_regslice_WREADY : STD_LOGIC;
  signal auto_ds_to_m00_regslice_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_ds_to_m00_regslice_WVALID : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_rs_w_to_auto_ds_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_rs_w_to_auto_ds_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_rs_w_to_auto_ds_ARID : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_rs_w_to_auto_ds_ARLOCK : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_rs_w_to_auto_ds_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_rs_w_to_auto_ds_ARREADY : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_rs_w_to_auto_ds_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_rs_w_to_auto_ds_ARVALID : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_rs_w_to_auto_ds_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_rs_w_to_auto_ds_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_rs_w_to_auto_ds_AWID : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_rs_w_to_auto_ds_AWLOCK : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_rs_w_to_auto_ds_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_rs_w_to_auto_ds_AWREADY : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_rs_w_to_auto_ds_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_rs_w_to_auto_ds_AWVALID : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_BID : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_BREADY : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_rs_w_to_auto_ds_BVALID : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_rs_w_to_auto_ds_RID : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_RLAST : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_RREADY : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_rs_w_to_auto_ds_RVALID : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_rs_w_to_auto_ds_WLAST : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_WREADY : STD_LOGIC;
  signal auto_rs_w_to_auto_ds_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_rs_w_to_auto_ds_WVALID : STD_LOGIC;
  signal NLW_m00_regslice_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_m00_regslice_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_ds : label is "axi_dwidth_converter_v2_1_26_top,Vivado 2022.1";
  attribute X_CORE_INFO of auto_rs_w : label is "axi_register_slice_v2_1_26_axi_register_slice,Vivado 2022.1";
  attribute X_CORE_INFO of m00_regslice : label is "axi_register_slice_v2_1_26_axi_register_slice,Vivado 2022.1";
begin
auto_ds: component pfm_dynamic_auto_ds_0
     port map (
      m_axi_araddr(63 downto 0) => auto_ds_to_m00_regslice_ARADDR(63 downto 0),
      m_axi_arburst(1 downto 0) => auto_ds_to_m00_regslice_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_ds_to_m00_regslice_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_ds_to_m00_regslice_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_ds_to_m00_regslice_ARLOCK,
      m_axi_arprot(2 downto 0) => auto_ds_to_m00_regslice_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_ds_to_m00_regslice_ARQOS(3 downto 0),
      m_axi_arready => auto_ds_to_m00_regslice_ARREADY,
      m_axi_arregion(3 downto 0) => auto_ds_to_m00_regslice_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_ds_to_m00_regslice_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_ds_to_m00_regslice_ARVALID,
      m_axi_awaddr(63 downto 0) => auto_ds_to_m00_regslice_AWADDR(63 downto 0),
      m_axi_awburst(1 downto 0) => auto_ds_to_m00_regslice_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_ds_to_m00_regslice_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_ds_to_m00_regslice_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_ds_to_m00_regslice_AWLOCK,
      m_axi_awprot(2 downto 0) => auto_ds_to_m00_regslice_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_ds_to_m00_regslice_AWQOS(3 downto 0),
      m_axi_awready => auto_ds_to_m00_regslice_AWREADY,
      m_axi_awregion(3 downto 0) => auto_ds_to_m00_regslice_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_ds_to_m00_regslice_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_ds_to_m00_regslice_AWVALID,
      m_axi_bready => auto_ds_to_m00_regslice_BREADY,
      m_axi_bresp(1 downto 0) => auto_ds_to_m00_regslice_BRESP(1 downto 0),
      m_axi_bvalid => auto_ds_to_m00_regslice_BVALID,
      m_axi_rdata(127 downto 0) => auto_ds_to_m00_regslice_RDATA(127 downto 0),
      m_axi_rlast => auto_ds_to_m00_regslice_RLAST,
      m_axi_rready => auto_ds_to_m00_regslice_RREADY,
      m_axi_rresp(1 downto 0) => auto_ds_to_m00_regslice_RRESP(1 downto 0),
      m_axi_rvalid => auto_ds_to_m00_regslice_RVALID,
      m_axi_wdata(127 downto 0) => auto_ds_to_m00_regslice_WDATA(127 downto 0),
      m_axi_wlast => auto_ds_to_m00_regslice_WLAST,
      m_axi_wready => auto_ds_to_m00_regslice_WREADY,
      m_axi_wstrb(15 downto 0) => auto_ds_to_m00_regslice_WSTRB(15 downto 0),
      m_axi_wvalid => auto_ds_to_m00_regslice_WVALID,
      s_axi_aclk => M00_ACLK,
      s_axi_araddr(63 downto 0) => auto_rs_w_to_auto_ds_ARADDR(63 downto 0),
      s_axi_arburst(1 downto 0) => auto_rs_w_to_auto_ds_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_rs_w_to_auto_ds_ARCACHE(3 downto 0),
      s_axi_aresetn => M00_ARESETN,
      s_axi_arid(0) => auto_rs_w_to_auto_ds_ARID,
      s_axi_arlen(7 downto 0) => auto_rs_w_to_auto_ds_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_rs_w_to_auto_ds_ARLOCK,
      s_axi_arprot(2 downto 0) => auto_rs_w_to_auto_ds_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_rs_w_to_auto_ds_ARQOS(3 downto 0),
      s_axi_arready => auto_rs_w_to_auto_ds_ARREADY,
      s_axi_arregion(3 downto 0) => auto_rs_w_to_auto_ds_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_rs_w_to_auto_ds_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_rs_w_to_auto_ds_ARVALID,
      s_axi_awaddr(63 downto 0) => auto_rs_w_to_auto_ds_AWADDR(63 downto 0),
      s_axi_awburst(1 downto 0) => auto_rs_w_to_auto_ds_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_rs_w_to_auto_ds_AWCACHE(3 downto 0),
      s_axi_awid(0) => auto_rs_w_to_auto_ds_AWID,
      s_axi_awlen(7 downto 0) => auto_rs_w_to_auto_ds_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_rs_w_to_auto_ds_AWLOCK,
      s_axi_awprot(2 downto 0) => auto_rs_w_to_auto_ds_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_rs_w_to_auto_ds_AWQOS(3 downto 0),
      s_axi_awready => auto_rs_w_to_auto_ds_AWREADY,
      s_axi_awregion(3 downto 0) => auto_rs_w_to_auto_ds_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_rs_w_to_auto_ds_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_rs_w_to_auto_ds_AWVALID,
      s_axi_bid(0) => auto_rs_w_to_auto_ds_BID,
      s_axi_bready => auto_rs_w_to_auto_ds_BREADY,
      s_axi_bresp(1 downto 0) => auto_rs_w_to_auto_ds_BRESP(1 downto 0),
      s_axi_bvalid => auto_rs_w_to_auto_ds_BVALID,
      s_axi_rdata(511 downto 0) => auto_rs_w_to_auto_ds_RDATA(511 downto 0),
      s_axi_rid(0) => auto_rs_w_to_auto_ds_RID,
      s_axi_rlast => auto_rs_w_to_auto_ds_RLAST,
      s_axi_rready => auto_rs_w_to_auto_ds_RREADY,
      s_axi_rresp(1 downto 0) => auto_rs_w_to_auto_ds_RRESP(1 downto 0),
      s_axi_rvalid => auto_rs_w_to_auto_ds_RVALID,
      s_axi_wdata(511 downto 0) => auto_rs_w_to_auto_ds_WDATA(511 downto 0),
      s_axi_wlast => auto_rs_w_to_auto_ds_WLAST,
      s_axi_wready => auto_rs_w_to_auto_ds_WREADY,
      s_axi_wstrb(63 downto 0) => auto_rs_w_to_auto_ds_WSTRB(63 downto 0),
      s_axi_wvalid => auto_rs_w_to_auto_ds_WVALID
    );
auto_rs_w: component pfm_dynamic_auto_rs_w_0
     port map (
      aclk => M00_ACLK,
      aresetn => M00_ARESETN,
      m_axi_araddr(63 downto 0) => auto_rs_w_to_auto_ds_ARADDR(63 downto 0),
      m_axi_arburst(1 downto 0) => auto_rs_w_to_auto_ds_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_rs_w_to_auto_ds_ARCACHE(3 downto 0),
      m_axi_arid(0) => auto_rs_w_to_auto_ds_ARID,
      m_axi_arlen(7 downto 0) => auto_rs_w_to_auto_ds_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_rs_w_to_auto_ds_ARLOCK,
      m_axi_arprot(2 downto 0) => auto_rs_w_to_auto_ds_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_rs_w_to_auto_ds_ARQOS(3 downto 0),
      m_axi_arready => auto_rs_w_to_auto_ds_ARREADY,
      m_axi_arregion(3 downto 0) => auto_rs_w_to_auto_ds_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_rs_w_to_auto_ds_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_rs_w_to_auto_ds_ARVALID,
      m_axi_awaddr(63 downto 0) => auto_rs_w_to_auto_ds_AWADDR(63 downto 0),
      m_axi_awburst(1 downto 0) => auto_rs_w_to_auto_ds_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_rs_w_to_auto_ds_AWCACHE(3 downto 0),
      m_axi_awid(0) => auto_rs_w_to_auto_ds_AWID,
      m_axi_awlen(7 downto 0) => auto_rs_w_to_auto_ds_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_rs_w_to_auto_ds_AWLOCK,
      m_axi_awprot(2 downto 0) => auto_rs_w_to_auto_ds_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_rs_w_to_auto_ds_AWQOS(3 downto 0),
      m_axi_awready => auto_rs_w_to_auto_ds_AWREADY,
      m_axi_awregion(3 downto 0) => auto_rs_w_to_auto_ds_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_rs_w_to_auto_ds_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_rs_w_to_auto_ds_AWVALID,
      m_axi_bid(0) => auto_rs_w_to_auto_ds_BID,
      m_axi_bready => auto_rs_w_to_auto_ds_BREADY,
      m_axi_bresp(1 downto 0) => auto_rs_w_to_auto_ds_BRESP(1 downto 0),
      m_axi_bvalid => auto_rs_w_to_auto_ds_BVALID,
      m_axi_rdata(511 downto 0) => auto_rs_w_to_auto_ds_RDATA(511 downto 0),
      m_axi_rid(0) => auto_rs_w_to_auto_ds_RID,
      m_axi_rlast => auto_rs_w_to_auto_ds_RLAST,
      m_axi_rready => auto_rs_w_to_auto_ds_RREADY,
      m_axi_rresp(1 downto 0) => auto_rs_w_to_auto_ds_RRESP(1 downto 0),
      m_axi_rvalid => auto_rs_w_to_auto_ds_RVALID,
      m_axi_wdata(511 downto 0) => auto_rs_w_to_auto_ds_WDATA(511 downto 0),
      m_axi_wlast => auto_rs_w_to_auto_ds_WLAST,
      m_axi_wready => auto_rs_w_to_auto_ds_WREADY,
      m_axi_wstrb(63 downto 0) => auto_rs_w_to_auto_ds_WSTRB(63 downto 0),
      m_axi_wvalid => auto_rs_w_to_auto_ds_WVALID,
      s_axi_araddr(63 downto 0) => S_AXI_araddr(63 downto 0),
      s_axi_arburst(1 downto 0) => S_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S_AXI_arcache(3 downto 0),
      s_axi_arid(0) => S_AXI_arid(0),
      s_axi_arlen(7 downto 0) => S_AXI_arlen(7 downto 0),
      s_axi_arlock(0) => S_AXI_arlock(0),
      s_axi_arprot(2 downto 0) => S_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => S_AXI_arqos(3 downto 0),
      s_axi_arready => S_AXI_arready,
      s_axi_arregion(3 downto 0) => S_AXI_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => S_AXI_arsize(2 downto 0),
      s_axi_arvalid => S_AXI_arvalid,
      s_axi_awaddr(63 downto 0) => S_AXI_awaddr(63 downto 0),
      s_axi_awburst(1 downto 0) => S_AXI_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => S_AXI_awcache(3 downto 0),
      s_axi_awid(0) => S_AXI_awid(0),
      s_axi_awlen(7 downto 0) => S_AXI_awlen(7 downto 0),
      s_axi_awlock(0) => S_AXI_awlock(0),
      s_axi_awprot(2 downto 0) => S_AXI_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => S_AXI_awqos(3 downto 0),
      s_axi_awready => S_AXI_awready,
      s_axi_awregion(3 downto 0) => S_AXI_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => S_AXI_awsize(2 downto 0),
      s_axi_awvalid => S_AXI_awvalid,
      s_axi_bid(0) => S_AXI_bid(0),
      s_axi_bready => S_AXI_bready,
      s_axi_bresp(1 downto 0) => S_AXI_bresp(1 downto 0),
      s_axi_bvalid => S_AXI_bvalid,
      s_axi_rdata(511 downto 0) => S_AXI_rdata(511 downto 0),
      s_axi_rid(0) => S_AXI_rid(0),
      s_axi_rlast => S_AXI_rlast,
      s_axi_rready => S_AXI_rready,
      s_axi_rresp(1 downto 0) => S_AXI_rresp(1 downto 0),
      s_axi_rvalid => S_AXI_rvalid,
      s_axi_wdata(511 downto 0) => S_AXI_wdata(511 downto 0),
      s_axi_wlast => S_AXI_wlast,
      s_axi_wready => S_AXI_wready,
      s_axi_wstrb(63 downto 0) => S_AXI_wstrb(63 downto 0),
      s_axi_wvalid => S_AXI_wvalid
    );
m00_regslice: component pfm_dynamic_m00_regslice_3
     port map (
      aclk => M00_ACLK,
      aresetn => M00_ARESETN,
      m_axi_araddr(63 downto 0) => M00_AXI_araddr(63 downto 0),
      m_axi_arburst(1 downto 0) => M00_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M00_AXI_arcache(3 downto 0),
      m_axi_arlen(7 downto 0) => M00_AXI_arlen(7 downto 0),
      m_axi_arlock(0) => M00_AXI_arlock(0),
      m_axi_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M00_AXI_arqos(3 downto 0),
      m_axi_arready => M00_AXI_arready,
      m_axi_arregion(3 downto 0) => NLW_m00_regslice_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => M00_AXI_arsize(2 downto 0),
      m_axi_arvalid => M00_AXI_arvalid,
      m_axi_awaddr(63 downto 0) => M00_AXI_awaddr(63 downto 0),
      m_axi_awburst(1 downto 0) => M00_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => M00_AXI_awcache(3 downto 0),
      m_axi_awlen(7 downto 0) => M00_AXI_awlen(7 downto 0),
      m_axi_awlock(0) => M00_AXI_awlock(0),
      m_axi_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => M00_AXI_awqos(3 downto 0),
      m_axi_awready => M00_AXI_awready,
      m_axi_awregion(3 downto 0) => NLW_m00_regslice_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => M00_AXI_awsize(2 downto 0),
      m_axi_awvalid => M00_AXI_awvalid,
      m_axi_bready => M00_AXI_bready,
      m_axi_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      m_axi_bvalid => M00_AXI_bvalid,
      m_axi_rdata(127 downto 0) => M00_AXI_rdata(127 downto 0),
      m_axi_rlast => M00_AXI_rlast,
      m_axi_rready => M00_AXI_rready,
      m_axi_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      m_axi_rvalid => M00_AXI_rvalid,
      m_axi_wdata(127 downto 0) => M00_AXI_wdata(127 downto 0),
      m_axi_wlast => M00_AXI_wlast,
      m_axi_wready => M00_AXI_wready,
      m_axi_wstrb(15 downto 0) => M00_AXI_wstrb(15 downto 0),
      m_axi_wvalid => M00_AXI_wvalid,
      s_axi_araddr(63 downto 0) => auto_ds_to_m00_regslice_ARADDR(63 downto 0),
      s_axi_arburst(1 downto 0) => auto_ds_to_m00_regslice_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_ds_to_m00_regslice_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => auto_ds_to_m00_regslice_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_ds_to_m00_regslice_ARLOCK,
      s_axi_arprot(2 downto 0) => auto_ds_to_m00_regslice_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_ds_to_m00_regslice_ARQOS(3 downto 0),
      s_axi_arready => auto_ds_to_m00_regslice_ARREADY,
      s_axi_arregion(3 downto 0) => auto_ds_to_m00_regslice_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_ds_to_m00_regslice_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_ds_to_m00_regslice_ARVALID,
      s_axi_awaddr(63 downto 0) => auto_ds_to_m00_regslice_AWADDR(63 downto 0),
      s_axi_awburst(1 downto 0) => auto_ds_to_m00_regslice_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_ds_to_m00_regslice_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => auto_ds_to_m00_regslice_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_ds_to_m00_regslice_AWLOCK,
      s_axi_awprot(2 downto 0) => auto_ds_to_m00_regslice_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_ds_to_m00_regslice_AWQOS(3 downto 0),
      s_axi_awready => auto_ds_to_m00_regslice_AWREADY,
      s_axi_awregion(3 downto 0) => auto_ds_to_m00_regslice_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_ds_to_m00_regslice_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_ds_to_m00_regslice_AWVALID,
      s_axi_bready => auto_ds_to_m00_regslice_BREADY,
      s_axi_bresp(1 downto 0) => auto_ds_to_m00_regslice_BRESP(1 downto 0),
      s_axi_bvalid => auto_ds_to_m00_regslice_BVALID,
      s_axi_rdata(127 downto 0) => auto_ds_to_m00_regslice_RDATA(127 downto 0),
      s_axi_rlast => auto_ds_to_m00_regslice_RLAST,
      s_axi_rready => auto_ds_to_m00_regslice_RREADY,
      s_axi_rresp(1 downto 0) => auto_ds_to_m00_regslice_RRESP(1 downto 0),
      s_axi_rvalid => auto_ds_to_m00_regslice_RVALID,
      s_axi_wdata(127 downto 0) => auto_ds_to_m00_regslice_WDATA(127 downto 0),
      s_axi_wlast => auto_ds_to_m00_regslice_WLAST,
      s_axi_wready => auto_ds_to_m00_regslice_WREADY,
      s_axi_wstrb(15 downto 0) => auto_ds_to_m00_regslice_WSTRB(15 downto 0),
      s_axi_wvalid => auto_ds_to_m00_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic_m00_couplers_imp_XZDQE6 is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    m_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pfm_dynamic_m00_couplers_imp_XZDQE6 : entity is "m00_couplers_imp_XZDQE6";
end pfm_dynamic_m00_couplers_imp_XZDQE6;

architecture STRUCTURE of pfm_dynamic_m00_couplers_imp_XZDQE6 is
  component pfm_dynamic_m00_regslice_5 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_m00_regslice_5;
  signal NLW_m00_regslice_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m00_regslice_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of m00_regslice : label is "axi_register_slice_v2_1_26_axi_register_slice,Vivado 2022.1";
begin
m00_regslice: component pfm_dynamic_m00_regslice_5
     port map (
      aclk => S00_ACLK,
      aresetn => S00_ARESETN,
      m_axi_araddr(8 downto 0) => M00_AXI_araddr(8 downto 0),
      m_axi_arprot(2 downto 0) => NLW_m00_regslice_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => M00_AXI_arready,
      m_axi_arvalid => M00_AXI_arvalid,
      m_axi_awaddr(8 downto 0) => M00_AXI_awaddr(8 downto 0),
      m_axi_awprot(2 downto 0) => NLW_m00_regslice_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => M00_AXI_awready,
      m_axi_awvalid => M00_AXI_awvalid,
      m_axi_bready => M00_AXI_bready,
      m_axi_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      m_axi_bvalid => M00_AXI_bvalid,
      m_axi_rdata(31 downto 0) => M00_AXI_rdata(31 downto 0),
      m_axi_rready => M00_AXI_rready,
      m_axi_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      m_axi_rvalid => M00_AXI_rvalid,
      m_axi_wdata(31 downto 0) => M00_AXI_wdata(31 downto 0),
      m_axi_wready => M00_AXI_wready,
      m_axi_wstrb(3 downto 0) => M00_AXI_wstrb(3 downto 0),
      m_axi_wvalid => M00_AXI_wvalid,
      s_axi_araddr(8 downto 0) => m_axi_araddr(8 downto 0),
      s_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => m_axi_arvalid(0),
      s_axi_awaddr(8 downto 0) => m_axi_awaddr(8 downto 0),
      s_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => m_axi_awvalid(0),
      s_axi_bready => m_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => m_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      s_axi_wvalid => m_axi_wvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic_m01_couplers_imp_1RPSKZK is
  port (
    S_AXI_awready : out STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pfm_dynamic_m01_couplers_imp_1RPSKZK : entity is "m01_couplers_imp_1RPSKZK";
end pfm_dynamic_m01_couplers_imp_1RPSKZK;

architecture STRUCTURE of pfm_dynamic_m01_couplers_imp_1RPSKZK is
  component pfm_dynamic_auto_cc_3 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_auto_cc_3;
  component pfm_dynamic_m01_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_m01_regslice_0;
  signal auto_cc_to_m01_regslice_ARADDR : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_cc_to_m01_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m01_regslice_ARREADY : STD_LOGIC;
  signal auto_cc_to_m01_regslice_ARVALID : STD_LOGIC;
  signal auto_cc_to_m01_regslice_AWADDR : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_cc_to_m01_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m01_regslice_AWREADY : STD_LOGIC;
  signal auto_cc_to_m01_regslice_AWVALID : STD_LOGIC;
  signal auto_cc_to_m01_regslice_BREADY : STD_LOGIC;
  signal auto_cc_to_m01_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m01_regslice_BVALID : STD_LOGIC;
  signal auto_cc_to_m01_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m01_regslice_RREADY : STD_LOGIC;
  signal auto_cc_to_m01_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m01_regslice_RVALID : STD_LOGIC;
  signal auto_cc_to_m01_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m01_regslice_WREADY : STD_LOGIC;
  signal auto_cc_to_m01_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m01_regslice_WVALID : STD_LOGIC;
  signal NLW_m01_regslice_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m01_regslice_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_cc : label is "axi_clock_converter_v2_1_25_axi_clock_converter,Vivado 2022.1";
  attribute X_CORE_INFO of m01_regslice : label is "axi_register_slice_v2_1_26_axi_register_slice,Vivado 2022.1";
begin
auto_cc: component pfm_dynamic_auto_cc_3
     port map (
      m_axi_aclk => M01_ACLK,
      m_axi_araddr(5 downto 0) => auto_cc_to_m01_regslice_ARADDR(5 downto 0),
      m_axi_aresetn => M01_ARESETN,
      m_axi_arprot(2 downto 0) => auto_cc_to_m01_regslice_ARPROT(2 downto 0),
      m_axi_arready => auto_cc_to_m01_regslice_ARREADY,
      m_axi_arvalid => auto_cc_to_m01_regslice_ARVALID,
      m_axi_awaddr(5 downto 0) => auto_cc_to_m01_regslice_AWADDR(5 downto 0),
      m_axi_awprot(2 downto 0) => auto_cc_to_m01_regslice_AWPROT(2 downto 0),
      m_axi_awready => auto_cc_to_m01_regslice_AWREADY,
      m_axi_awvalid => auto_cc_to_m01_regslice_AWVALID,
      m_axi_bready => auto_cc_to_m01_regslice_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m01_regslice_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m01_regslice_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m01_regslice_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m01_regslice_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m01_regslice_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m01_regslice_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m01_regslice_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m01_regslice_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_m01_regslice_WSTRB(3 downto 0),
      m_axi_wvalid => auto_cc_to_m01_regslice_WVALID,
      s_axi_aclk => S00_ACLK,
      s_axi_araddr(5 downto 0) => S_AXI_araddr(5 downto 0),
      s_axi_aresetn => S00_ARESETN,
      s_axi_arprot(2 downto 0) => S_AXI_arprot(2 downto 0),
      s_axi_arready => S_AXI_arready,
      s_axi_arvalid => S_AXI_arvalid,
      s_axi_awaddr(5 downto 0) => S_AXI_awaddr(5 downto 0),
      s_axi_awprot(2 downto 0) => S_AXI_awprot(2 downto 0),
      s_axi_awready => S_AXI_awready,
      s_axi_awvalid => S_AXI_awvalid,
      s_axi_bready => S_AXI_bready,
      s_axi_bresp(1 downto 0) => S_AXI_bresp(1 downto 0),
      s_axi_bvalid => S_AXI_bvalid,
      s_axi_rdata(31 downto 0) => S_AXI_rdata(31 downto 0),
      s_axi_rready => S_AXI_rready,
      s_axi_rresp(1 downto 0) => S_AXI_rresp(1 downto 0),
      s_axi_rvalid => S_AXI_rvalid,
      s_axi_wdata(31 downto 0) => S_AXI_wdata(31 downto 0),
      s_axi_wready => S_AXI_wready,
      s_axi_wstrb(3 downto 0) => S_AXI_wstrb(3 downto 0),
      s_axi_wvalid => S_AXI_wvalid
    );
m01_regslice: component pfm_dynamic_m01_regslice_0
     port map (
      aclk => M01_ACLK,
      aresetn => M01_ARESETN,
      m_axi_araddr(5 downto 0) => M01_AXI_araddr(5 downto 0),
      m_axi_arprot(2 downto 0) => NLW_m01_regslice_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => M01_AXI_arready,
      m_axi_arvalid => M01_AXI_arvalid,
      m_axi_awaddr(5 downto 0) => M01_AXI_awaddr(5 downto 0),
      m_axi_awprot(2 downto 0) => NLW_m01_regslice_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => M01_AXI_awready,
      m_axi_awvalid => M01_AXI_awvalid,
      m_axi_bready => M01_AXI_bready,
      m_axi_bresp(1 downto 0) => M01_AXI_bresp(1 downto 0),
      m_axi_bvalid => M01_AXI_bvalid,
      m_axi_rdata(31 downto 0) => M01_AXI_rdata(31 downto 0),
      m_axi_rready => M01_AXI_rready,
      m_axi_rresp(1 downto 0) => M01_AXI_rresp(1 downto 0),
      m_axi_rvalid => M01_AXI_rvalid,
      m_axi_wdata(31 downto 0) => M01_AXI_wdata(31 downto 0),
      m_axi_wready => M01_AXI_wready,
      m_axi_wstrb(3 downto 0) => M01_AXI_wstrb(3 downto 0),
      m_axi_wvalid => M01_AXI_wvalid,
      s_axi_araddr(5 downto 0) => auto_cc_to_m01_regslice_ARADDR(5 downto 0),
      s_axi_arprot(2 downto 0) => auto_cc_to_m01_regslice_ARPROT(2 downto 0),
      s_axi_arready => auto_cc_to_m01_regslice_ARREADY,
      s_axi_arvalid => auto_cc_to_m01_regslice_ARVALID,
      s_axi_awaddr(5 downto 0) => auto_cc_to_m01_regslice_AWADDR(5 downto 0),
      s_axi_awprot(2 downto 0) => auto_cc_to_m01_regslice_AWPROT(2 downto 0),
      s_axi_awready => auto_cc_to_m01_regslice_AWREADY,
      s_axi_awvalid => auto_cc_to_m01_regslice_AWVALID,
      s_axi_bready => auto_cc_to_m01_regslice_BREADY,
      s_axi_bresp(1 downto 0) => auto_cc_to_m01_regslice_BRESP(1 downto 0),
      s_axi_bvalid => auto_cc_to_m01_regslice_BVALID,
      s_axi_rdata(31 downto 0) => auto_cc_to_m01_regslice_RDATA(31 downto 0),
      s_axi_rready => auto_cc_to_m01_regslice_RREADY,
      s_axi_rresp(1 downto 0) => auto_cc_to_m01_regslice_RRESP(1 downto 0),
      s_axi_rvalid => auto_cc_to_m01_regslice_RVALID,
      s_axi_wdata(31 downto 0) => auto_cc_to_m01_regslice_WDATA(31 downto 0),
      s_axi_wready => auto_cc_to_m01_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => auto_cc_to_m01_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => auto_cc_to_m01_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic_reset_controllers_imp_UJLAET is
  port (
    psreset_gate_pr_control_interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    psreset_gate_pr_control_peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    psreset_gate_pr_kernel2_interconnect_aresetn_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clkwiz_sysclks_clk_out2 : in STD_LOGIC;
    pr_reset_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkwiz_sysclks_locked : in STD_LOGIC;
    clkwiz_kernel_clk_out1 : in STD_LOGIC;
    clkwiz_kernel_locked : in STD_LOGIC;
    clkwiz_kernel2_clk_out1 : in STD_LOGIC;
    clkwiz_kernel2_locked : in STD_LOGIC;
    clkwiz_kernel3_clk_out : in STD_LOGIC;
    clkwiz_kernel4_clk_out : in STD_LOGIC;
    clkwiz_kernel6_clk_out : in STD_LOGIC;
    clkwiz_kernel5_clk_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pfm_dynamic_reset_controllers_imp_UJLAET : entity is "reset_controllers_imp_UJLAET";
end pfm_dynamic_reset_controllers_imp_UJLAET;

architecture STRUCTURE of pfm_dynamic_reset_controllers_imp_UJLAET is
  component pfm_dynamic_psreset_gate_pr_control_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component pfm_dynamic_psreset_gate_pr_control_0;
  component pfm_dynamic_psreset_gate_pr_kernel_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component pfm_dynamic_psreset_gate_pr_kernel_0;
  component pfm_dynamic_psreset_gate_pr_kernel2_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component pfm_dynamic_psreset_gate_pr_kernel2_0;
  component pfm_dynamic_psreset_gate_pr_kernel3_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component pfm_dynamic_psreset_gate_pr_kernel3_0;
  component pfm_dynamic_psreset_gate_pr_kernel4_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component pfm_dynamic_psreset_gate_pr_kernel4_0;
  component pfm_dynamic_psreset_gate_pr_kernel5_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component pfm_dynamic_psreset_gate_pr_kernel5_0;
  component pfm_dynamic_psreset_gate_pr_kernel6_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component pfm_dynamic_psreset_gate_pr_kernel6_0;
  signal psreset_gate_pr_kernel3_n_3 : STD_LOGIC;
  signal psreset_gate_pr_kernel4_n_3 : STD_LOGIC;
  signal psreset_gate_pr_kernel5_n_3 : STD_LOGIC;
  signal psreset_gate_pr_kernel6_n_3 : STD_LOGIC;
  signal psreset_gate_pr_kernel_n_3 : STD_LOGIC;
  signal NLW_psreset_gate_pr_control_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_psreset_gate_pr_control_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_control_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_psreset_gate_pr_kernel_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel2_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_psreset_gate_pr_kernel2_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel2_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel2_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel3_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_psreset_gate_pr_kernel3_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel3_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel3_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel4_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_psreset_gate_pr_kernel4_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel4_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel4_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel5_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_psreset_gate_pr_kernel5_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel5_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel5_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel6_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_psreset_gate_pr_kernel6_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel6_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel6_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of psreset_gate_pr_control : label is "proc_sys_reset,Vivado 2022.1";
  attribute X_CORE_INFO of psreset_gate_pr_kernel : label is "proc_sys_reset,Vivado 2022.1";
  attribute X_CORE_INFO of psreset_gate_pr_kernel2 : label is "proc_sys_reset,Vivado 2022.1";
  attribute X_CORE_INFO of psreset_gate_pr_kernel3 : label is "proc_sys_reset,Vivado 2022.1";
  attribute X_CORE_INFO of psreset_gate_pr_kernel4 : label is "proc_sys_reset,Vivado 2022.1";
  attribute X_CORE_INFO of psreset_gate_pr_kernel5 : label is "proc_sys_reset,Vivado 2022.1";
  attribute X_CORE_INFO of psreset_gate_pr_kernel6 : label is "proc_sys_reset,Vivado 2022.1";
begin
psreset_gate_pr_control: component pfm_dynamic_psreset_gate_pr_control_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_psreset_gate_pr_control_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clkwiz_sysclks_locked,
      ext_reset_in => pr_reset_n(0),
      interconnect_aresetn(0) => psreset_gate_pr_control_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_psreset_gate_pr_control_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => psreset_gate_pr_control_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_psreset_gate_pr_control_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clkwiz_sysclks_clk_out2
    );
psreset_gate_pr_kernel: component pfm_dynamic_psreset_gate_pr_kernel_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_psreset_gate_pr_kernel_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clkwiz_kernel_locked,
      ext_reset_in => pr_reset_n(0),
      interconnect_aresetn(0) => psreset_gate_pr_kernel_n_3,
      mb_debug_sys_rst => '0',
      mb_reset => NLW_psreset_gate_pr_kernel_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => peripheral_aresetn(0),
      peripheral_reset(0) => NLW_psreset_gate_pr_kernel_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clkwiz_kernel_clk_out1
    );
psreset_gate_pr_kernel2: component pfm_dynamic_psreset_gate_pr_kernel2_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_psreset_gate_pr_kernel2_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clkwiz_kernel2_locked,
      ext_reset_in => pr_reset_n(0),
      interconnect_aresetn(0) => psreset_gate_pr_kernel2_interconnect_aresetn_0(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_psreset_gate_pr_kernel2_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_psreset_gate_pr_kernel2_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_psreset_gate_pr_kernel2_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clkwiz_kernel2_clk_out1
    );
psreset_gate_pr_kernel3: component pfm_dynamic_psreset_gate_pr_kernel3_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_psreset_gate_pr_kernel3_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clkwiz_kernel_locked,
      ext_reset_in => pr_reset_n(0),
      interconnect_aresetn(0) => psreset_gate_pr_kernel3_n_3,
      mb_debug_sys_rst => '0',
      mb_reset => NLW_psreset_gate_pr_kernel3_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_psreset_gate_pr_kernel3_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_psreset_gate_pr_kernel3_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clkwiz_kernel3_clk_out
    );
psreset_gate_pr_kernel4: component pfm_dynamic_psreset_gate_pr_kernel4_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_psreset_gate_pr_kernel4_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clkwiz_kernel_locked,
      ext_reset_in => pr_reset_n(0),
      interconnect_aresetn(0) => psreset_gate_pr_kernel4_n_3,
      mb_debug_sys_rst => '0',
      mb_reset => NLW_psreset_gate_pr_kernel4_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_psreset_gate_pr_kernel4_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_psreset_gate_pr_kernel4_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clkwiz_kernel4_clk_out
    );
psreset_gate_pr_kernel5: component pfm_dynamic_psreset_gate_pr_kernel5_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_psreset_gate_pr_kernel5_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clkwiz_kernel_locked,
      ext_reset_in => pr_reset_n(0),
      interconnect_aresetn(0) => psreset_gate_pr_kernel5_n_3,
      mb_debug_sys_rst => '0',
      mb_reset => NLW_psreset_gate_pr_kernel5_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_psreset_gate_pr_kernel5_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_psreset_gate_pr_kernel5_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clkwiz_kernel6_clk_out
    );
psreset_gate_pr_kernel6: component pfm_dynamic_psreset_gate_pr_kernel6_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_psreset_gate_pr_kernel6_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clkwiz_kernel_locked,
      ext_reset_in => pr_reset_n(0),
      interconnect_aresetn(0) => psreset_gate_pr_kernel6_n_3,
      mb_debug_sys_rst => '0',
      mb_reset => NLW_psreset_gate_pr_kernel6_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_psreset_gate_pr_kernel6_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_psreset_gate_pr_kernel6_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clkwiz_kernel5_clk_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic_s00_couplers_imp_139VRFP is
  port (
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pfm_dynamic_s00_couplers_imp_139VRFP : entity is "s00_couplers_imp_139VRFP";
end pfm_dynamic_s00_couplers_imp_139VRFP;

architecture STRUCTURE of pfm_dynamic_s00_couplers_imp_139VRFP is
  component pfm_dynamic_auto_rs_w_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_auto_rs_w_1;
  component pfm_dynamic_auto_us_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_auto_us_0;
  component pfm_dynamic_s00_regslice_35 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_s00_regslice_35;
  signal auto_us_to_auto_rs_w_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_auto_rs_w_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_auto_rs_w_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_auto_rs_w_ARLOCK : STD_LOGIC;
  signal auto_us_to_auto_rs_w_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_auto_rs_w_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_ARREADY : STD_LOGIC;
  signal auto_us_to_auto_rs_w_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_auto_rs_w_ARVALID : STD_LOGIC;
  signal auto_us_to_auto_rs_w_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_auto_rs_w_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_auto_rs_w_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_auto_rs_w_AWLOCK : STD_LOGIC;
  signal auto_us_to_auto_rs_w_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_auto_rs_w_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_AWREADY : STD_LOGIC;
  signal auto_us_to_auto_rs_w_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_auto_rs_w_AWVALID : STD_LOGIC;
  signal auto_us_to_auto_rs_w_BREADY : STD_LOGIC;
  signal auto_us_to_auto_rs_w_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_auto_rs_w_BVALID : STD_LOGIC;
  signal auto_us_to_auto_rs_w_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_us_to_auto_rs_w_RLAST : STD_LOGIC;
  signal auto_us_to_auto_rs_w_RREADY : STD_LOGIC;
  signal auto_us_to_auto_rs_w_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_auto_rs_w_RVALID : STD_LOGIC;
  signal auto_us_to_auto_rs_w_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_us_to_auto_rs_w_WLAST : STD_LOGIC;
  signal auto_us_to_auto_rs_w_WREADY : STD_LOGIC;
  signal auto_us_to_auto_rs_w_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_auto_rs_w_WVALID : STD_LOGIC;
  signal s00_regslice_to_auto_us_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_auto_us_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_us_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_us_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_regslice_to_auto_us_ARLOCK : STD_LOGIC;
  signal s00_regslice_to_auto_us_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_us_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_us_ARREADY : STD_LOGIC;
  signal s00_regslice_to_auto_us_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_us_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_us_ARVALID : STD_LOGIC;
  signal s00_regslice_to_auto_us_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_auto_us_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_us_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_us_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_regslice_to_auto_us_AWLOCK : STD_LOGIC;
  signal s00_regslice_to_auto_us_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_us_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_us_AWREADY : STD_LOGIC;
  signal s00_regslice_to_auto_us_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_us_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_us_AWVALID : STD_LOGIC;
  signal s00_regslice_to_auto_us_BREADY : STD_LOGIC;
  signal s00_regslice_to_auto_us_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_us_BVALID : STD_LOGIC;
  signal s00_regslice_to_auto_us_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_regslice_to_auto_us_RLAST : STD_LOGIC;
  signal s00_regslice_to_auto_us_RREADY : STD_LOGIC;
  signal s00_regslice_to_auto_us_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_us_RVALID : STD_LOGIC;
  signal s00_regslice_to_auto_us_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_regslice_to_auto_us_WLAST : STD_LOGIC;
  signal s00_regslice_to_auto_us_WREADY : STD_LOGIC;
  signal s00_regslice_to_auto_us_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_regslice_to_auto_us_WVALID : STD_LOGIC;
  signal NLW_auto_rs_w_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_rs_w_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_rs_w : label is "axi_register_slice_v2_1_26_axi_register_slice,Vivado 2022.1";
  attribute X_CORE_INFO of auto_us : label is "axi_dwidth_converter_v2_1_26_top,Vivado 2022.1";
  attribute X_CORE_INFO of s00_regslice : label is "axi_register_slice_v2_1_26_axi_register_slice,Vivado 2022.1";
begin
auto_rs_w: component pfm_dynamic_auto_rs_w_1
     port map (
      aclk => M00_ACLK,
      aresetn => M00_ARESETN,
      m_axi_araddr(31 downto 0) => M_AXI_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => M_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M_AXI_arcache(3 downto 0),
      m_axi_arlen(7 downto 0) => M_AXI_arlen(7 downto 0),
      m_axi_arlock(0) => M_AXI_arlock(0),
      m_axi_arprot(2 downto 0) => M_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M_AXI_arqos(3 downto 0),
      m_axi_arready => M_AXI_arready,
      m_axi_arregion(3 downto 0) => NLW_auto_rs_w_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => M_AXI_arsize(2 downto 0),
      m_axi_arvalid => M_AXI_arvalid,
      m_axi_awaddr(31 downto 0) => M_AXI_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => M_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => M_AXI_awcache(3 downto 0),
      m_axi_awlen(7 downto 0) => M_AXI_awlen(7 downto 0),
      m_axi_awlock(0) => M_AXI_awlock(0),
      m_axi_awprot(2 downto 0) => M_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => M_AXI_awqos(3 downto 0),
      m_axi_awready => M_AXI_awready,
      m_axi_awregion(3 downto 0) => NLW_auto_rs_w_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => M_AXI_awsize(2 downto 0),
      m_axi_awvalid => M_AXI_awvalid,
      m_axi_bready => M_AXI_bready,
      m_axi_bresp(1 downto 0) => M_AXI_bresp(1 downto 0),
      m_axi_bvalid => M_AXI_bvalid,
      m_axi_rdata(511 downto 0) => M_AXI_rdata(511 downto 0),
      m_axi_rlast => M_AXI_rlast,
      m_axi_rready => M_AXI_rready,
      m_axi_rresp(1 downto 0) => M_AXI_rresp(1 downto 0),
      m_axi_rvalid => M_AXI_rvalid,
      m_axi_wdata(511 downto 0) => M_AXI_wdata(511 downto 0),
      m_axi_wlast => M_AXI_wlast,
      m_axi_wready => M_AXI_wready,
      m_axi_wstrb(63 downto 0) => M_AXI_wstrb(63 downto 0),
      m_axi_wvalid => M_AXI_wvalid,
      s_axi_araddr(31 downto 0) => auto_us_to_auto_rs_w_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => auto_us_to_auto_rs_w_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_us_to_auto_rs_w_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => auto_us_to_auto_rs_w_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_us_to_auto_rs_w_ARLOCK,
      s_axi_arprot(2 downto 0) => auto_us_to_auto_rs_w_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_us_to_auto_rs_w_ARQOS(3 downto 0),
      s_axi_arready => auto_us_to_auto_rs_w_ARREADY,
      s_axi_arregion(3 downto 0) => auto_us_to_auto_rs_w_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_us_to_auto_rs_w_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_us_to_auto_rs_w_ARVALID,
      s_axi_awaddr(31 downto 0) => auto_us_to_auto_rs_w_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => auto_us_to_auto_rs_w_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_us_to_auto_rs_w_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => auto_us_to_auto_rs_w_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_us_to_auto_rs_w_AWLOCK,
      s_axi_awprot(2 downto 0) => auto_us_to_auto_rs_w_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_us_to_auto_rs_w_AWQOS(3 downto 0),
      s_axi_awready => auto_us_to_auto_rs_w_AWREADY,
      s_axi_awregion(3 downto 0) => auto_us_to_auto_rs_w_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_us_to_auto_rs_w_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_us_to_auto_rs_w_AWVALID,
      s_axi_bready => auto_us_to_auto_rs_w_BREADY,
      s_axi_bresp(1 downto 0) => auto_us_to_auto_rs_w_BRESP(1 downto 0),
      s_axi_bvalid => auto_us_to_auto_rs_w_BVALID,
      s_axi_rdata(511 downto 0) => auto_us_to_auto_rs_w_RDATA(511 downto 0),
      s_axi_rlast => auto_us_to_auto_rs_w_RLAST,
      s_axi_rready => auto_us_to_auto_rs_w_RREADY,
      s_axi_rresp(1 downto 0) => auto_us_to_auto_rs_w_RRESP(1 downto 0),
      s_axi_rvalid => auto_us_to_auto_rs_w_RVALID,
      s_axi_wdata(511 downto 0) => auto_us_to_auto_rs_w_WDATA(511 downto 0),
      s_axi_wlast => auto_us_to_auto_rs_w_WLAST,
      s_axi_wready => auto_us_to_auto_rs_w_WREADY,
      s_axi_wstrb(63 downto 0) => auto_us_to_auto_rs_w_WSTRB(63 downto 0),
      s_axi_wvalid => auto_us_to_auto_rs_w_WVALID
    );
auto_us: component pfm_dynamic_auto_us_0
     port map (
      m_axi_araddr(31 downto 0) => auto_us_to_auto_rs_w_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_us_to_auto_rs_w_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_us_to_auto_rs_w_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_us_to_auto_rs_w_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_us_to_auto_rs_w_ARLOCK,
      m_axi_arprot(2 downto 0) => auto_us_to_auto_rs_w_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_us_to_auto_rs_w_ARQOS(3 downto 0),
      m_axi_arready => auto_us_to_auto_rs_w_ARREADY,
      m_axi_arregion(3 downto 0) => auto_us_to_auto_rs_w_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_us_to_auto_rs_w_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_us_to_auto_rs_w_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_us_to_auto_rs_w_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_us_to_auto_rs_w_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_us_to_auto_rs_w_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_us_to_auto_rs_w_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_us_to_auto_rs_w_AWLOCK,
      m_axi_awprot(2 downto 0) => auto_us_to_auto_rs_w_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_us_to_auto_rs_w_AWQOS(3 downto 0),
      m_axi_awready => auto_us_to_auto_rs_w_AWREADY,
      m_axi_awregion(3 downto 0) => auto_us_to_auto_rs_w_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_us_to_auto_rs_w_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_us_to_auto_rs_w_AWVALID,
      m_axi_bready => auto_us_to_auto_rs_w_BREADY,
      m_axi_bresp(1 downto 0) => auto_us_to_auto_rs_w_BRESP(1 downto 0),
      m_axi_bvalid => auto_us_to_auto_rs_w_BVALID,
      m_axi_rdata(511 downto 0) => auto_us_to_auto_rs_w_RDATA(511 downto 0),
      m_axi_rlast => auto_us_to_auto_rs_w_RLAST,
      m_axi_rready => auto_us_to_auto_rs_w_RREADY,
      m_axi_rresp(1 downto 0) => auto_us_to_auto_rs_w_RRESP(1 downto 0),
      m_axi_rvalid => auto_us_to_auto_rs_w_RVALID,
      m_axi_wdata(511 downto 0) => auto_us_to_auto_rs_w_WDATA(511 downto 0),
      m_axi_wlast => auto_us_to_auto_rs_w_WLAST,
      m_axi_wready => auto_us_to_auto_rs_w_WREADY,
      m_axi_wstrb(63 downto 0) => auto_us_to_auto_rs_w_WSTRB(63 downto 0),
      m_axi_wvalid => auto_us_to_auto_rs_w_WVALID,
      s_axi_aclk => M00_ACLK,
      s_axi_araddr(31 downto 0) => s00_regslice_to_auto_us_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_regslice_to_auto_us_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_regslice_to_auto_us_ARCACHE(3 downto 0),
      s_axi_aresetn => M00_ARESETN,
      s_axi_arlen(7 downto 0) => s00_regslice_to_auto_us_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_regslice_to_auto_us_ARLOCK,
      s_axi_arprot(2 downto 0) => s00_regslice_to_auto_us_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_regslice_to_auto_us_ARQOS(3 downto 0),
      s_axi_arready => s00_regslice_to_auto_us_ARREADY,
      s_axi_arregion(3 downto 0) => s00_regslice_to_auto_us_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => s00_regslice_to_auto_us_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_regslice_to_auto_us_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_regslice_to_auto_us_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_regslice_to_auto_us_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_regslice_to_auto_us_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s00_regslice_to_auto_us_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_regslice_to_auto_us_AWLOCK,
      s_axi_awprot(2 downto 0) => s00_regslice_to_auto_us_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_regslice_to_auto_us_AWQOS(3 downto 0),
      s_axi_awready => s00_regslice_to_auto_us_AWREADY,
      s_axi_awregion(3 downto 0) => s00_regslice_to_auto_us_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => s00_regslice_to_auto_us_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_regslice_to_auto_us_AWVALID,
      s_axi_bready => s00_regslice_to_auto_us_BREADY,
      s_axi_bresp(1 downto 0) => s00_regslice_to_auto_us_BRESP(1 downto 0),
      s_axi_bvalid => s00_regslice_to_auto_us_BVALID,
      s_axi_rdata(127 downto 0) => s00_regslice_to_auto_us_RDATA(127 downto 0),
      s_axi_rlast => s00_regslice_to_auto_us_RLAST,
      s_axi_rready => s00_regslice_to_auto_us_RREADY,
      s_axi_rresp(1 downto 0) => s00_regslice_to_auto_us_RRESP(1 downto 0),
      s_axi_rvalid => s00_regslice_to_auto_us_RVALID,
      s_axi_wdata(127 downto 0) => s00_regslice_to_auto_us_WDATA(127 downto 0),
      s_axi_wlast => s00_regslice_to_auto_us_WLAST,
      s_axi_wready => s00_regslice_to_auto_us_WREADY,
      s_axi_wstrb(15 downto 0) => s00_regslice_to_auto_us_WSTRB(15 downto 0),
      s_axi_wvalid => s00_regslice_to_auto_us_WVALID
    );
s00_regslice: component pfm_dynamic_s00_regslice_35
     port map (
      aclk => M00_ACLK,
      aresetn => M00_ARESETN,
      m_axi_araddr(31 downto 0) => s00_regslice_to_auto_us_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s00_regslice_to_auto_us_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s00_regslice_to_auto_us_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => s00_regslice_to_auto_us_ARLEN(7 downto 0),
      m_axi_arlock(0) => s00_regslice_to_auto_us_ARLOCK,
      m_axi_arprot(2 downto 0) => s00_regslice_to_auto_us_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s00_regslice_to_auto_us_ARQOS(3 downto 0),
      m_axi_arready => s00_regslice_to_auto_us_ARREADY,
      m_axi_arregion(3 downto 0) => s00_regslice_to_auto_us_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => s00_regslice_to_auto_us_ARSIZE(2 downto 0),
      m_axi_arvalid => s00_regslice_to_auto_us_ARVALID,
      m_axi_awaddr(31 downto 0) => s00_regslice_to_auto_us_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s00_regslice_to_auto_us_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s00_regslice_to_auto_us_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => s00_regslice_to_auto_us_AWLEN(7 downto 0),
      m_axi_awlock(0) => s00_regslice_to_auto_us_AWLOCK,
      m_axi_awprot(2 downto 0) => s00_regslice_to_auto_us_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s00_regslice_to_auto_us_AWQOS(3 downto 0),
      m_axi_awready => s00_regslice_to_auto_us_AWREADY,
      m_axi_awregion(3 downto 0) => s00_regslice_to_auto_us_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => s00_regslice_to_auto_us_AWSIZE(2 downto 0),
      m_axi_awvalid => s00_regslice_to_auto_us_AWVALID,
      m_axi_bready => s00_regslice_to_auto_us_BREADY,
      m_axi_bresp(1 downto 0) => s00_regslice_to_auto_us_BRESP(1 downto 0),
      m_axi_bvalid => s00_regslice_to_auto_us_BVALID,
      m_axi_rdata(127 downto 0) => s00_regslice_to_auto_us_RDATA(127 downto 0),
      m_axi_rlast => s00_regslice_to_auto_us_RLAST,
      m_axi_rready => s00_regslice_to_auto_us_RREADY,
      m_axi_rresp(1 downto 0) => s00_regslice_to_auto_us_RRESP(1 downto 0),
      m_axi_rvalid => s00_regslice_to_auto_us_RVALID,
      m_axi_wdata(127 downto 0) => s00_regslice_to_auto_us_WDATA(127 downto 0),
      m_axi_wlast => s00_regslice_to_auto_us_WLAST,
      m_axi_wready => s00_regslice_to_auto_us_WREADY,
      m_axi_wstrb(15 downto 0) => s00_regslice_to_auto_us_WSTRB(15 downto 0),
      m_axi_wvalid => s00_regslice_to_auto_us_WVALID,
      s_axi_araddr(31 downto 0) => S00_AXI_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      s_axi_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      s_axi_arlock(0) => S00_AXI_arlock(0),
      s_axi_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => S00_AXI_arqos(3 downto 0),
      s_axi_arready => S00_AXI_arready,
      s_axi_arregion(3 downto 0) => S00_AXI_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      s_axi_arvalid => S00_AXI_arvalid,
      s_axi_awaddr(31 downto 0) => S00_AXI_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      s_axi_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      s_axi_awlock(0) => S00_AXI_awlock(0),
      s_axi_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => S00_AXI_awqos(3 downto 0),
      s_axi_awready => S00_AXI_awready,
      s_axi_awregion(3 downto 0) => S00_AXI_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      s_axi_awvalid => S00_AXI_awvalid,
      s_axi_bready => S00_AXI_bready,
      s_axi_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      s_axi_bvalid => S00_AXI_bvalid,
      s_axi_rdata(127 downto 0) => S00_AXI_rdata(127 downto 0),
      s_axi_rlast => S00_AXI_rlast,
      s_axi_rready => S00_AXI_rready,
      s_axi_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      s_axi_rvalid => S00_AXI_rvalid,
      s_axi_wdata(127 downto 0) => S00_AXI_wdata(127 downto 0),
      s_axi_wlast => S00_AXI_wlast,
      s_axi_wready => S00_AXI_wready,
      s_axi_wstrb(15 downto 0) => S00_AXI_wstrb(15 downto 0),
      s_axi_wvalid => S00_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic_s00_couplers_imp_15R05HQ is
  port (
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pfm_dynamic_s00_couplers_imp_15R05HQ : entity is "s00_couplers_imp_15R05HQ";
end pfm_dynamic_s00_couplers_imp_15R05HQ;

architecture STRUCTURE of pfm_dynamic_s00_couplers_imp_15R05HQ is
  component pfm_dynamic_s00_regslice_40 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_s00_regslice_40;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of s00_regslice : label is "axi_register_slice_v2_1_26_axi_register_slice,Vivado 2022.1";
begin
s00_regslice: component pfm_dynamic_s00_regslice_40
     port map (
      aclk => S00_ACLK,
      aresetn => S00_ARESETN,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arready => s_axi_arready(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awready => s_axi_awready(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      m_axi_bvalid => s_axi_bvalid(0),
      m_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      m_axi_rvalid => s_axi_rvalid(0),
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wready => s_axi_wready(0),
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_araddr(31 downto 0) => S00_AXI_araddr(31 downto 0),
      s_axi_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      s_axi_arready => S00_AXI_arready,
      s_axi_arvalid => S00_AXI_arvalid,
      s_axi_awaddr(31 downto 0) => S00_AXI_awaddr(31 downto 0),
      s_axi_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      s_axi_awready => S00_AXI_awready,
      s_axi_awvalid => S00_AXI_awvalid,
      s_axi_bready => S00_AXI_bready,
      s_axi_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      s_axi_bvalid => S00_AXI_bvalid,
      s_axi_rdata(31 downto 0) => S00_AXI_rdata(31 downto 0),
      s_axi_rready => S00_AXI_rready,
      s_axi_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      s_axi_rvalid => S00_AXI_rvalid,
      s_axi_wdata(31 downto 0) => S00_AXI_wdata(31 downto 0),
      s_axi_wready => S00_AXI_wready,
      s_axi_wstrb(3 downto 0) => S00_AXI_wstrb(3 downto 0),
      s_axi_wvalid => S00_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic_s00_couplers_imp_1HPK08H is
  port (
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pfm_dynamic_s00_couplers_imp_1HPK08H : entity is "s00_couplers_imp_1HPK08H";
end pfm_dynamic_s00_couplers_imp_1HPK08H;

architecture STRUCTURE of pfm_dynamic_s00_couplers_imp_1HPK08H is
  component pfm_dynamic_s00_regslice_38 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_s00_regslice_38;
  signal NLW_s00_regslice_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s00_regslice_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of s00_regslice : label is "axi_register_slice_v2_1_26_axi_register_slice,Vivado 2022.1";
begin
s00_regslice: component pfm_dynamic_s00_regslice_38
     port map (
      aclk => S00_ACLK,
      aresetn => S00_ARESETN,
      m_axi_araddr(31 downto 0) => M00_AXI_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => M00_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M00_AXI_arcache(3 downto 0),
      m_axi_arlen(7 downto 0) => M00_AXI_arlen(7 downto 0),
      m_axi_arlock(0) => M00_AXI_arlock(0),
      m_axi_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M00_AXI_arqos(3 downto 0),
      m_axi_arready => M00_AXI_arready,
      m_axi_arregion(3 downto 0) => NLW_s00_regslice_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => M00_AXI_arsize(2 downto 0),
      m_axi_arvalid => M00_AXI_arvalid,
      m_axi_awaddr(31 downto 0) => M00_AXI_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => M00_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => M00_AXI_awcache(3 downto 0),
      m_axi_awlen(7 downto 0) => M00_AXI_awlen(7 downto 0),
      m_axi_awlock(0) => M00_AXI_awlock(0),
      m_axi_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => M00_AXI_awqos(3 downto 0),
      m_axi_awready => M00_AXI_awready,
      m_axi_awregion(3 downto 0) => NLW_s00_regslice_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => M00_AXI_awsize(2 downto 0),
      m_axi_awvalid => M00_AXI_awvalid,
      m_axi_bready => M00_AXI_bready,
      m_axi_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      m_axi_bvalid => M00_AXI_bvalid,
      m_axi_rdata(127 downto 0) => M00_AXI_rdata(127 downto 0),
      m_axi_rlast => M00_AXI_rlast,
      m_axi_rready => M00_AXI_rready,
      m_axi_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      m_axi_rvalid => M00_AXI_rvalid,
      m_axi_wdata(127 downto 0) => M00_AXI_wdata(127 downto 0),
      m_axi_wlast => M00_AXI_wlast,
      m_axi_wready => M00_AXI_wready,
      m_axi_wstrb(15 downto 0) => M00_AXI_wstrb(15 downto 0),
      m_axi_wvalid => M00_AXI_wvalid,
      s_axi_araddr(31 downto 0) => S00_AXI_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      s_axi_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      s_axi_arlock(0) => S00_AXI_arlock(0),
      s_axi_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => S00_AXI_arqos(3 downto 0),
      s_axi_arready => S00_AXI_arready,
      s_axi_arregion(3 downto 0) => S00_AXI_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      s_axi_arvalid => S00_AXI_arvalid,
      s_axi_awaddr(31 downto 0) => S00_AXI_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      s_axi_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      s_axi_awlock(0) => S00_AXI_awlock(0),
      s_axi_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => S00_AXI_awqos(3 downto 0),
      s_axi_awready => S00_AXI_awready,
      s_axi_awregion(3 downto 0) => S00_AXI_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      s_axi_awvalid => S00_AXI_awvalid,
      s_axi_bready => S00_AXI_bready,
      s_axi_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      s_axi_bvalid => S00_AXI_bvalid,
      s_axi_rdata(127 downto 0) => S00_AXI_rdata(127 downto 0),
      s_axi_rlast => S00_AXI_rlast,
      s_axi_rready => S00_AXI_rready,
      s_axi_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      s_axi_rvalid => S00_AXI_rvalid,
      s_axi_wdata(127 downto 0) => S00_AXI_wdata(127 downto 0),
      s_axi_wlast => S00_AXI_wlast,
      s_axi_wready => S00_AXI_wready,
      s_axi_wstrb(15 downto 0) => S00_AXI_wstrb(15 downto 0),
      s_axi_wvalid => S00_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic_s00_couplers_imp_2LVM1Y is
  port (
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pfm_dynamic_s00_couplers_imp_2LVM1Y : entity is "s00_couplers_imp_2LVM1Y";
end pfm_dynamic_s00_couplers_imp_2LVM1Y;

architecture STRUCTURE of pfm_dynamic_s00_couplers_imp_2LVM1Y is
  component pfm_dynamic_s00_regslice_37 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_s00_regslice_37;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of s00_regslice : label is "axi_register_slice_v2_1_26_axi_register_slice,Vivado 2022.1";
begin
s00_regslice: component pfm_dynamic_s00_regslice_37
     port map (
      aclk => S00_ACLK,
      aresetn => S00_ARESETN,
      m_axi_araddr(31 downto 0) => M00_AXI_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => M00_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M00_AXI_arcache(3 downto 0),
      m_axi_arid(15 downto 0) => M00_AXI_arid(15 downto 0),
      m_axi_arlen(7 downto 0) => M00_AXI_arlen(7 downto 0),
      m_axi_arlock(0) => M00_AXI_arlock(0),
      m_axi_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M00_AXI_arqos(3 downto 0),
      m_axi_arready => M00_AXI_arready,
      m_axi_arregion(3 downto 0) => M00_AXI_arregion(3 downto 0),
      m_axi_arsize(2 downto 0) => M00_AXI_arsize(2 downto 0),
      m_axi_arvalid => M00_AXI_arvalid,
      m_axi_awaddr(31 downto 0) => M00_AXI_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => M00_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => M00_AXI_awcache(3 downto 0),
      m_axi_awid(15 downto 0) => M00_AXI_awid(15 downto 0),
      m_axi_awlen(7 downto 0) => M00_AXI_awlen(7 downto 0),
      m_axi_awlock(0) => M00_AXI_awlock(0),
      m_axi_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => M00_AXI_awqos(3 downto 0),
      m_axi_awready => M00_AXI_awready,
      m_axi_awregion(3 downto 0) => M00_AXI_awregion(3 downto 0),
      m_axi_awsize(2 downto 0) => M00_AXI_awsize(2 downto 0),
      m_axi_awvalid => M00_AXI_awvalid,
      m_axi_bid(15 downto 0) => M00_AXI_bid(15 downto 0),
      m_axi_bready => M00_AXI_bready,
      m_axi_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      m_axi_bvalid => M00_AXI_bvalid,
      m_axi_rdata(127 downto 0) => M00_AXI_rdata(127 downto 0),
      m_axi_rid(15 downto 0) => M00_AXI_rid(15 downto 0),
      m_axi_rlast => M00_AXI_rlast,
      m_axi_rready => M00_AXI_rready,
      m_axi_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      m_axi_rvalid => M00_AXI_rvalid,
      m_axi_wdata(127 downto 0) => M00_AXI_wdata(127 downto 0),
      m_axi_wlast => M00_AXI_wlast,
      m_axi_wready => M00_AXI_wready,
      m_axi_wstrb(15 downto 0) => M00_AXI_wstrb(15 downto 0),
      m_axi_wvalid => M00_AXI_wvalid,
      s_axi_araddr(31 downto 0) => S00_AXI_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      s_axi_arid(15 downto 0) => S00_AXI_arid(15 downto 0),
      s_axi_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      s_axi_arlock(0) => S00_AXI_arlock(0),
      s_axi_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => S00_AXI_arqos(3 downto 0),
      s_axi_arready => S00_AXI_arready,
      s_axi_arregion(3 downto 0) => S00_AXI_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      s_axi_arvalid => S00_AXI_arvalid,
      s_axi_awaddr(31 downto 0) => S00_AXI_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      s_axi_awid(15 downto 0) => S00_AXI_awid(15 downto 0),
      s_axi_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      s_axi_awlock(0) => S00_AXI_awlock(0),
      s_axi_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => S00_AXI_awqos(3 downto 0),
      s_axi_awready => S00_AXI_awready,
      s_axi_awregion(3 downto 0) => S00_AXI_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      s_axi_awvalid => S00_AXI_awvalid,
      s_axi_bid(15 downto 0) => S00_AXI_bid(15 downto 0),
      s_axi_bready => S00_AXI_bready,
      s_axi_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      s_axi_bvalid => S00_AXI_bvalid,
      s_axi_rdata(127 downto 0) => S00_AXI_rdata(127 downto 0),
      s_axi_rid(15 downto 0) => S00_AXI_rid(15 downto 0),
      s_axi_rlast => S00_AXI_rlast,
      s_axi_rready => S00_AXI_rready,
      s_axi_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      s_axi_rvalid => S00_AXI_rvalid,
      s_axi_wdata(127 downto 0) => S00_AXI_wdata(127 downto 0),
      s_axi_wlast => S00_AXI_wlast,
      s_axi_wready => S00_AXI_wready,
      s_axi_wstrb(15 downto 0) => S00_AXI_wstrb(15 downto 0),
      s_axi_wvalid => S00_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic_s00_couplers_imp_B3UQP7 is
  port (
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pfm_dynamic_s00_couplers_imp_B3UQP7 : entity is "s00_couplers_imp_B3UQP7";
end pfm_dynamic_s00_couplers_imp_B3UQP7;

architecture STRUCTURE of pfm_dynamic_s00_couplers_imp_B3UQP7 is
  component pfm_dynamic_s00_regslice_36 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_s00_regslice_36;
  signal NLW_s00_regslice_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s00_regslice_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of s00_regslice : label is "axi_register_slice_v2_1_26_axi_register_slice,Vivado 2022.1";
begin
s00_regslice: component pfm_dynamic_s00_regslice_36
     port map (
      aclk => S00_ACLK,
      aresetn => S00_ARESETN,
      m_axi_araddr(31 downto 0) => M00_AXI_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => M00_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M00_AXI_arcache(3 downto 0),
      m_axi_arlen(7 downto 0) => M00_AXI_arlen(7 downto 0),
      m_axi_arlock(0) => M00_AXI_arlock(0),
      m_axi_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M00_AXI_arqos(3 downto 0),
      m_axi_arready => M00_AXI_arready,
      m_axi_arregion(3 downto 0) => NLW_s00_regslice_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => M00_AXI_arsize(2 downto 0),
      m_axi_arvalid => M00_AXI_arvalid,
      m_axi_awaddr(31 downto 0) => M00_AXI_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => M00_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => M00_AXI_awcache(3 downto 0),
      m_axi_awlen(7 downto 0) => M00_AXI_awlen(7 downto 0),
      m_axi_awlock(0) => M00_AXI_awlock(0),
      m_axi_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => M00_AXI_awqos(3 downto 0),
      m_axi_awready => M00_AXI_awready,
      m_axi_awregion(3 downto 0) => NLW_s00_regslice_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => M00_AXI_awsize(2 downto 0),
      m_axi_awvalid => M00_AXI_awvalid,
      m_axi_bready => M00_AXI_bready,
      m_axi_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      m_axi_bvalid => M00_AXI_bvalid,
      m_axi_rdata(127 downto 0) => M00_AXI_rdata(127 downto 0),
      m_axi_rlast => M00_AXI_rlast,
      m_axi_rready => M00_AXI_rready,
      m_axi_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      m_axi_rvalid => M00_AXI_rvalid,
      m_axi_wdata(127 downto 0) => M00_AXI_wdata(127 downto 0),
      m_axi_wlast => M00_AXI_wlast,
      m_axi_wready => M00_AXI_wready,
      m_axi_wstrb(15 downto 0) => M00_AXI_wstrb(15 downto 0),
      m_axi_wvalid => M00_AXI_wvalid,
      s_axi_araddr(31 downto 0) => S00_AXI_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      s_axi_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      s_axi_arlock(0) => S00_AXI_arlock(0),
      s_axi_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => S00_AXI_arqos(3 downto 0),
      s_axi_arready => S00_AXI_arready,
      s_axi_arregion(3 downto 0) => S00_AXI_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      s_axi_arvalid => S00_AXI_arvalid,
      s_axi_awaddr(31 downto 0) => S00_AXI_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      s_axi_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      s_axi_awlock(0) => S00_AXI_awlock(0),
      s_axi_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => S00_AXI_awqos(3 downto 0),
      s_axi_awready => S00_AXI_awready,
      s_axi_awregion(3 downto 0) => S00_AXI_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      s_axi_awvalid => S00_AXI_awvalid,
      s_axi_bready => S00_AXI_bready,
      s_axi_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      s_axi_bvalid => S00_AXI_bvalid,
      s_axi_rdata(127 downto 0) => S00_AXI_rdata(127 downto 0),
      s_axi_rlast => S00_AXI_rlast,
      s_axi_rready => S00_AXI_rready,
      s_axi_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      s_axi_rvalid => S00_AXI_rvalid,
      s_axi_wdata(127 downto 0) => S00_AXI_wdata(127 downto 0),
      s_axi_wlast => S00_AXI_wlast,
      s_axi_wready => S00_AXI_wready,
      s_axi_wstrb(15 downto 0) => S00_AXI_wstrb(15 downto 0),
      s_axi_wvalid => S00_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic_s00_couplers_imp_KLQFC8 is
  port (
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pfm_dynamic_s00_couplers_imp_KLQFC8 : entity is "s00_couplers_imp_KLQFC8";
end pfm_dynamic_s00_couplers_imp_KLQFC8;

architecture STRUCTURE of pfm_dynamic_s00_couplers_imp_KLQFC8 is
  component pfm_dynamic_auto_rs_w_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_auto_rs_w_3;
  component pfm_dynamic_auto_us_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_auto_us_1;
  component pfm_dynamic_s00_regslice_39 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_s00_regslice_39;
  signal auto_us_to_auto_rs_w_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_auto_rs_w_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_auto_rs_w_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_auto_rs_w_ARLOCK : STD_LOGIC;
  signal auto_us_to_auto_rs_w_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_auto_rs_w_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_ARREADY : STD_LOGIC;
  signal auto_us_to_auto_rs_w_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_auto_rs_w_ARVALID : STD_LOGIC;
  signal auto_us_to_auto_rs_w_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_auto_rs_w_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_auto_rs_w_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_auto_rs_w_AWLOCK : STD_LOGIC;
  signal auto_us_to_auto_rs_w_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_auto_rs_w_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_AWREADY : STD_LOGIC;
  signal auto_us_to_auto_rs_w_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_auto_rs_w_AWVALID : STD_LOGIC;
  signal auto_us_to_auto_rs_w_BREADY : STD_LOGIC;
  signal auto_us_to_auto_rs_w_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_auto_rs_w_BVALID : STD_LOGIC;
  signal auto_us_to_auto_rs_w_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_us_to_auto_rs_w_RLAST : STD_LOGIC;
  signal auto_us_to_auto_rs_w_RREADY : STD_LOGIC;
  signal auto_us_to_auto_rs_w_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_auto_rs_w_RVALID : STD_LOGIC;
  signal auto_us_to_auto_rs_w_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_us_to_auto_rs_w_WLAST : STD_LOGIC;
  signal auto_us_to_auto_rs_w_WREADY : STD_LOGIC;
  signal auto_us_to_auto_rs_w_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_auto_rs_w_WVALID : STD_LOGIC;
  signal s00_regslice_to_auto_us_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_auto_us_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_us_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_us_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_regslice_to_auto_us_ARLOCK : STD_LOGIC;
  signal s00_regslice_to_auto_us_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_us_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_us_ARREADY : STD_LOGIC;
  signal s00_regslice_to_auto_us_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_us_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_us_ARVALID : STD_LOGIC;
  signal s00_regslice_to_auto_us_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_regslice_to_auto_us_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_us_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_us_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_regslice_to_auto_us_AWLOCK : STD_LOGIC;
  signal s00_regslice_to_auto_us_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_us_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_us_AWREADY : STD_LOGIC;
  signal s00_regslice_to_auto_us_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_regslice_to_auto_us_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_regslice_to_auto_us_AWVALID : STD_LOGIC;
  signal s00_regslice_to_auto_us_BREADY : STD_LOGIC;
  signal s00_regslice_to_auto_us_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_us_BVALID : STD_LOGIC;
  signal s00_regslice_to_auto_us_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_regslice_to_auto_us_RLAST : STD_LOGIC;
  signal s00_regslice_to_auto_us_RREADY : STD_LOGIC;
  signal s00_regslice_to_auto_us_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_regslice_to_auto_us_RVALID : STD_LOGIC;
  signal s00_regslice_to_auto_us_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_regslice_to_auto_us_WLAST : STD_LOGIC;
  signal s00_regslice_to_auto_us_WREADY : STD_LOGIC;
  signal s00_regslice_to_auto_us_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_regslice_to_auto_us_WVALID : STD_LOGIC;
  signal NLW_auto_rs_w_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_rs_w_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_rs_w : label is "axi_register_slice_v2_1_26_axi_register_slice,Vivado 2022.1";
  attribute X_CORE_INFO of auto_us : label is "axi_dwidth_converter_v2_1_26_top,Vivado 2022.1";
  attribute X_CORE_INFO of s00_regslice : label is "axi_register_slice_v2_1_26_axi_register_slice,Vivado 2022.1";
begin
auto_rs_w: component pfm_dynamic_auto_rs_w_3
     port map (
      aclk => M00_ACLK,
      aresetn => M00_ARESETN,
      m_axi_araddr(31 downto 0) => M_AXI_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => M_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M_AXI_arcache(3 downto 0),
      m_axi_arlen(7 downto 0) => M_AXI_arlen(7 downto 0),
      m_axi_arlock(0) => M_AXI_arlock(0),
      m_axi_arprot(2 downto 0) => M_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M_AXI_arqos(3 downto 0),
      m_axi_arready => M_AXI_arready,
      m_axi_arregion(3 downto 0) => NLW_auto_rs_w_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => M_AXI_arsize(2 downto 0),
      m_axi_arvalid => M_AXI_arvalid,
      m_axi_awaddr(31 downto 0) => M_AXI_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => M_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => M_AXI_awcache(3 downto 0),
      m_axi_awlen(7 downto 0) => M_AXI_awlen(7 downto 0),
      m_axi_awlock(0) => M_AXI_awlock(0),
      m_axi_awprot(2 downto 0) => M_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => M_AXI_awqos(3 downto 0),
      m_axi_awready => M_AXI_awready,
      m_axi_awregion(3 downto 0) => NLW_auto_rs_w_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => M_AXI_awsize(2 downto 0),
      m_axi_awvalid => M_AXI_awvalid,
      m_axi_bready => M_AXI_bready,
      m_axi_bresp(1 downto 0) => M_AXI_bresp(1 downto 0),
      m_axi_bvalid => M_AXI_bvalid,
      m_axi_rdata(511 downto 0) => M_AXI_rdata(511 downto 0),
      m_axi_rlast => M_AXI_rlast,
      m_axi_rready => M_AXI_rready,
      m_axi_rresp(1 downto 0) => M_AXI_rresp(1 downto 0),
      m_axi_rvalid => M_AXI_rvalid,
      m_axi_wdata(511 downto 0) => M_AXI_wdata(511 downto 0),
      m_axi_wlast => M_AXI_wlast,
      m_axi_wready => M_AXI_wready,
      m_axi_wstrb(63 downto 0) => M_AXI_wstrb(63 downto 0),
      m_axi_wvalid => M_AXI_wvalid,
      s_axi_araddr(31 downto 0) => auto_us_to_auto_rs_w_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => auto_us_to_auto_rs_w_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_us_to_auto_rs_w_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => auto_us_to_auto_rs_w_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_us_to_auto_rs_w_ARLOCK,
      s_axi_arprot(2 downto 0) => auto_us_to_auto_rs_w_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_us_to_auto_rs_w_ARQOS(3 downto 0),
      s_axi_arready => auto_us_to_auto_rs_w_ARREADY,
      s_axi_arregion(3 downto 0) => auto_us_to_auto_rs_w_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_us_to_auto_rs_w_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_us_to_auto_rs_w_ARVALID,
      s_axi_awaddr(31 downto 0) => auto_us_to_auto_rs_w_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => auto_us_to_auto_rs_w_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_us_to_auto_rs_w_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => auto_us_to_auto_rs_w_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_us_to_auto_rs_w_AWLOCK,
      s_axi_awprot(2 downto 0) => auto_us_to_auto_rs_w_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_us_to_auto_rs_w_AWQOS(3 downto 0),
      s_axi_awready => auto_us_to_auto_rs_w_AWREADY,
      s_axi_awregion(3 downto 0) => auto_us_to_auto_rs_w_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_us_to_auto_rs_w_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_us_to_auto_rs_w_AWVALID,
      s_axi_bready => auto_us_to_auto_rs_w_BREADY,
      s_axi_bresp(1 downto 0) => auto_us_to_auto_rs_w_BRESP(1 downto 0),
      s_axi_bvalid => auto_us_to_auto_rs_w_BVALID,
      s_axi_rdata(511 downto 0) => auto_us_to_auto_rs_w_RDATA(511 downto 0),
      s_axi_rlast => auto_us_to_auto_rs_w_RLAST,
      s_axi_rready => auto_us_to_auto_rs_w_RREADY,
      s_axi_rresp(1 downto 0) => auto_us_to_auto_rs_w_RRESP(1 downto 0),
      s_axi_rvalid => auto_us_to_auto_rs_w_RVALID,
      s_axi_wdata(511 downto 0) => auto_us_to_auto_rs_w_WDATA(511 downto 0),
      s_axi_wlast => auto_us_to_auto_rs_w_WLAST,
      s_axi_wready => auto_us_to_auto_rs_w_WREADY,
      s_axi_wstrb(63 downto 0) => auto_us_to_auto_rs_w_WSTRB(63 downto 0),
      s_axi_wvalid => auto_us_to_auto_rs_w_WVALID
    );
auto_us: component pfm_dynamic_auto_us_1
     port map (
      m_axi_araddr(31 downto 0) => auto_us_to_auto_rs_w_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_us_to_auto_rs_w_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_us_to_auto_rs_w_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_us_to_auto_rs_w_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_us_to_auto_rs_w_ARLOCK,
      m_axi_arprot(2 downto 0) => auto_us_to_auto_rs_w_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_us_to_auto_rs_w_ARQOS(3 downto 0),
      m_axi_arready => auto_us_to_auto_rs_w_ARREADY,
      m_axi_arregion(3 downto 0) => auto_us_to_auto_rs_w_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_us_to_auto_rs_w_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_us_to_auto_rs_w_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_us_to_auto_rs_w_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_us_to_auto_rs_w_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_us_to_auto_rs_w_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_us_to_auto_rs_w_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_us_to_auto_rs_w_AWLOCK,
      m_axi_awprot(2 downto 0) => auto_us_to_auto_rs_w_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_us_to_auto_rs_w_AWQOS(3 downto 0),
      m_axi_awready => auto_us_to_auto_rs_w_AWREADY,
      m_axi_awregion(3 downto 0) => auto_us_to_auto_rs_w_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_us_to_auto_rs_w_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_us_to_auto_rs_w_AWVALID,
      m_axi_bready => auto_us_to_auto_rs_w_BREADY,
      m_axi_bresp(1 downto 0) => auto_us_to_auto_rs_w_BRESP(1 downto 0),
      m_axi_bvalid => auto_us_to_auto_rs_w_BVALID,
      m_axi_rdata(511 downto 0) => auto_us_to_auto_rs_w_RDATA(511 downto 0),
      m_axi_rlast => auto_us_to_auto_rs_w_RLAST,
      m_axi_rready => auto_us_to_auto_rs_w_RREADY,
      m_axi_rresp(1 downto 0) => auto_us_to_auto_rs_w_RRESP(1 downto 0),
      m_axi_rvalid => auto_us_to_auto_rs_w_RVALID,
      m_axi_wdata(511 downto 0) => auto_us_to_auto_rs_w_WDATA(511 downto 0),
      m_axi_wlast => auto_us_to_auto_rs_w_WLAST,
      m_axi_wready => auto_us_to_auto_rs_w_WREADY,
      m_axi_wstrb(63 downto 0) => auto_us_to_auto_rs_w_WSTRB(63 downto 0),
      m_axi_wvalid => auto_us_to_auto_rs_w_WVALID,
      s_axi_aclk => M00_ACLK,
      s_axi_araddr(31 downto 0) => s00_regslice_to_auto_us_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_regslice_to_auto_us_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_regslice_to_auto_us_ARCACHE(3 downto 0),
      s_axi_aresetn => M00_ARESETN,
      s_axi_arlen(7 downto 0) => s00_regslice_to_auto_us_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_regslice_to_auto_us_ARLOCK,
      s_axi_arprot(2 downto 0) => s00_regslice_to_auto_us_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_regslice_to_auto_us_ARQOS(3 downto 0),
      s_axi_arready => s00_regslice_to_auto_us_ARREADY,
      s_axi_arregion(3 downto 0) => s00_regslice_to_auto_us_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => s00_regslice_to_auto_us_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_regslice_to_auto_us_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_regslice_to_auto_us_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_regslice_to_auto_us_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_regslice_to_auto_us_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s00_regslice_to_auto_us_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_regslice_to_auto_us_AWLOCK,
      s_axi_awprot(2 downto 0) => s00_regslice_to_auto_us_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_regslice_to_auto_us_AWQOS(3 downto 0),
      s_axi_awready => s00_regslice_to_auto_us_AWREADY,
      s_axi_awregion(3 downto 0) => s00_regslice_to_auto_us_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => s00_regslice_to_auto_us_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_regslice_to_auto_us_AWVALID,
      s_axi_bready => s00_regslice_to_auto_us_BREADY,
      s_axi_bresp(1 downto 0) => s00_regslice_to_auto_us_BRESP(1 downto 0),
      s_axi_bvalid => s00_regslice_to_auto_us_BVALID,
      s_axi_rdata(127 downto 0) => s00_regslice_to_auto_us_RDATA(127 downto 0),
      s_axi_rlast => s00_regslice_to_auto_us_RLAST,
      s_axi_rready => s00_regslice_to_auto_us_RREADY,
      s_axi_rresp(1 downto 0) => s00_regslice_to_auto_us_RRESP(1 downto 0),
      s_axi_rvalid => s00_regslice_to_auto_us_RVALID,
      s_axi_wdata(127 downto 0) => s00_regslice_to_auto_us_WDATA(127 downto 0),
      s_axi_wlast => s00_regslice_to_auto_us_WLAST,
      s_axi_wready => s00_regslice_to_auto_us_WREADY,
      s_axi_wstrb(15 downto 0) => s00_regslice_to_auto_us_WSTRB(15 downto 0),
      s_axi_wvalid => s00_regslice_to_auto_us_WVALID
    );
s00_regslice: component pfm_dynamic_s00_regslice_39
     port map (
      aclk => M00_ACLK,
      aresetn => M00_ARESETN,
      m_axi_araddr(31 downto 0) => s00_regslice_to_auto_us_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s00_regslice_to_auto_us_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s00_regslice_to_auto_us_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => s00_regslice_to_auto_us_ARLEN(7 downto 0),
      m_axi_arlock(0) => s00_regslice_to_auto_us_ARLOCK,
      m_axi_arprot(2 downto 0) => s00_regslice_to_auto_us_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s00_regslice_to_auto_us_ARQOS(3 downto 0),
      m_axi_arready => s00_regslice_to_auto_us_ARREADY,
      m_axi_arregion(3 downto 0) => s00_regslice_to_auto_us_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => s00_regslice_to_auto_us_ARSIZE(2 downto 0),
      m_axi_arvalid => s00_regslice_to_auto_us_ARVALID,
      m_axi_awaddr(31 downto 0) => s00_regslice_to_auto_us_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s00_regslice_to_auto_us_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s00_regslice_to_auto_us_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => s00_regslice_to_auto_us_AWLEN(7 downto 0),
      m_axi_awlock(0) => s00_regslice_to_auto_us_AWLOCK,
      m_axi_awprot(2 downto 0) => s00_regslice_to_auto_us_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s00_regslice_to_auto_us_AWQOS(3 downto 0),
      m_axi_awready => s00_regslice_to_auto_us_AWREADY,
      m_axi_awregion(3 downto 0) => s00_regslice_to_auto_us_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => s00_regslice_to_auto_us_AWSIZE(2 downto 0),
      m_axi_awvalid => s00_regslice_to_auto_us_AWVALID,
      m_axi_bready => s00_regslice_to_auto_us_BREADY,
      m_axi_bresp(1 downto 0) => s00_regslice_to_auto_us_BRESP(1 downto 0),
      m_axi_bvalid => s00_regslice_to_auto_us_BVALID,
      m_axi_rdata(127 downto 0) => s00_regslice_to_auto_us_RDATA(127 downto 0),
      m_axi_rlast => s00_regslice_to_auto_us_RLAST,
      m_axi_rready => s00_regslice_to_auto_us_RREADY,
      m_axi_rresp(1 downto 0) => s00_regslice_to_auto_us_RRESP(1 downto 0),
      m_axi_rvalid => s00_regslice_to_auto_us_RVALID,
      m_axi_wdata(127 downto 0) => s00_regslice_to_auto_us_WDATA(127 downto 0),
      m_axi_wlast => s00_regslice_to_auto_us_WLAST,
      m_axi_wready => s00_regslice_to_auto_us_WREADY,
      m_axi_wstrb(15 downto 0) => s00_regslice_to_auto_us_WSTRB(15 downto 0),
      m_axi_wvalid => s00_regslice_to_auto_us_WVALID,
      s_axi_araddr(31 downto 0) => S00_AXI_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      s_axi_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      s_axi_arlock(0) => S00_AXI_arlock(0),
      s_axi_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => S00_AXI_arqos(3 downto 0),
      s_axi_arready => S00_AXI_arready,
      s_axi_arregion(3 downto 0) => S00_AXI_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      s_axi_arvalid => S00_AXI_arvalid,
      s_axi_awaddr(31 downto 0) => S00_AXI_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      s_axi_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      s_axi_awlock(0) => S00_AXI_awlock(0),
      s_axi_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => S00_AXI_awqos(3 downto 0),
      s_axi_awready => S00_AXI_awready,
      s_axi_awregion(3 downto 0) => S00_AXI_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      s_axi_awvalid => S00_AXI_awvalid,
      s_axi_bready => S00_AXI_bready,
      s_axi_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      s_axi_bvalid => S00_AXI_bvalid,
      s_axi_rdata(127 downto 0) => S00_AXI_rdata(127 downto 0),
      s_axi_rlast => S00_AXI_rlast,
      s_axi_rready => S00_AXI_rready,
      s_axi_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      s_axi_rvalid => S00_AXI_rvalid,
      s_axi_wdata(127 downto 0) => S00_AXI_wdata(127 downto 0),
      s_axi_wlast => S00_AXI_wlast,
      s_axi_wready => S00_AXI_wready,
      s_axi_wstrb(15 downto 0) => S00_AXI_wstrb(15 downto 0),
      s_axi_wvalid => S00_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic_s01_couplers_imp_1N9NPO6 is
  port (
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rvalid : out STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pfm_dynamic_s01_couplers_imp_1N9NPO6 : entity is "s01_couplers_imp_1N9NPO6";
end pfm_dynamic_s01_couplers_imp_1N9NPO6;

architecture STRUCTURE of pfm_dynamic_s01_couplers_imp_1N9NPO6 is
  component pfm_dynamic_auto_cc_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_auto_cc_1;
  component pfm_dynamic_s01_data_fifo_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_s01_data_fifo_3;
  component pfm_dynamic_s01_regslice_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_s01_regslice_3;
  signal auto_cc_to_s01_data_fifo_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_cc_to_s01_data_fifo_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s01_data_fifo_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s01_data_fifo_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_cc_to_s01_data_fifo_ARLOCK : STD_LOGIC;
  signal auto_cc_to_s01_data_fifo_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s01_data_fifo_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s01_data_fifo_ARREADY : STD_LOGIC;
  signal auto_cc_to_s01_data_fifo_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s01_data_fifo_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s01_data_fifo_ARVALID : STD_LOGIC;
  signal auto_cc_to_s01_data_fifo_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_cc_to_s01_data_fifo_RLAST : STD_LOGIC;
  signal auto_cc_to_s01_data_fifo_RREADY : STD_LOGIC;
  signal auto_cc_to_s01_data_fifo_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s01_data_fifo_RVALID : STD_LOGIC;
  signal s01_regslice_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_regslice_to_auto_cc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_regslice_to_auto_cc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_cc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_regslice_to_auto_cc_ARLOCK : STD_LOGIC;
  signal s01_regslice_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_regslice_to_auto_cc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_cc_ARREADY : STD_LOGIC;
  signal s01_regslice_to_auto_cc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_cc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_regslice_to_auto_cc_ARVALID : STD_LOGIC;
  signal s01_regslice_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_regslice_to_auto_cc_RLAST : STD_LOGIC;
  signal s01_regslice_to_auto_cc_RREADY : STD_LOGIC;
  signal s01_regslice_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_regslice_to_auto_cc_RVALID : STD_LOGIC;
  signal NLW_s01_data_fifo_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_cc : label is "axi_clock_converter_v2_1_25_axi_clock_converter,Vivado 2022.1";
  attribute X_CORE_INFO of s01_data_fifo : label is "axi_data_fifo_v2_1_25_axi_data_fifo,Vivado 2022.1";
  attribute X_CORE_INFO of s01_regslice : label is "axi_register_slice_v2_1_26_axi_register_slice,Vivado 2022.1";
begin
auto_cc: component pfm_dynamic_auto_cc_1
     port map (
      m_axi_aclk => M00_ACLK,
      m_axi_araddr(63 downto 0) => auto_cc_to_s01_data_fifo_ARADDR(63 downto 0),
      m_axi_arburst(1 downto 0) => auto_cc_to_s01_data_fifo_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_cc_to_s01_data_fifo_ARCACHE(3 downto 0),
      m_axi_aresetn => M00_ARESETN,
      m_axi_arlen(7 downto 0) => auto_cc_to_s01_data_fifo_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_cc_to_s01_data_fifo_ARLOCK,
      m_axi_arprot(2 downto 0) => auto_cc_to_s01_data_fifo_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_cc_to_s01_data_fifo_ARQOS(3 downto 0),
      m_axi_arready => auto_cc_to_s01_data_fifo_ARREADY,
      m_axi_arregion(3 downto 0) => auto_cc_to_s01_data_fifo_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_cc_to_s01_data_fifo_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_cc_to_s01_data_fifo_ARVALID,
      m_axi_rdata(511 downto 0) => auto_cc_to_s01_data_fifo_RDATA(511 downto 0),
      m_axi_rlast => auto_cc_to_s01_data_fifo_RLAST,
      m_axi_rready => auto_cc_to_s01_data_fifo_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_s01_data_fifo_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_s01_data_fifo_RVALID,
      s_axi_aclk => S01_ACLK,
      s_axi_araddr(63 downto 0) => s01_regslice_to_auto_cc_ARADDR(63 downto 0),
      s_axi_arburst(1 downto 0) => s01_regslice_to_auto_cc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s01_regslice_to_auto_cc_ARCACHE(3 downto 0),
      s_axi_aresetn => S01_ARESETN,
      s_axi_arlen(7 downto 0) => s01_regslice_to_auto_cc_ARLEN(7 downto 0),
      s_axi_arlock(0) => s01_regslice_to_auto_cc_ARLOCK,
      s_axi_arprot(2 downto 0) => s01_regslice_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s01_regslice_to_auto_cc_ARQOS(3 downto 0),
      s_axi_arready => s01_regslice_to_auto_cc_ARREADY,
      s_axi_arregion(3 downto 0) => s01_regslice_to_auto_cc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => s01_regslice_to_auto_cc_ARSIZE(2 downto 0),
      s_axi_arvalid => s01_regslice_to_auto_cc_ARVALID,
      s_axi_rdata(511 downto 0) => s01_regslice_to_auto_cc_RDATA(511 downto 0),
      s_axi_rlast => s01_regslice_to_auto_cc_RLAST,
      s_axi_rready => s01_regslice_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => s01_regslice_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => s01_regslice_to_auto_cc_RVALID
    );
s01_data_fifo: component pfm_dynamic_s01_data_fifo_3
     port map (
      aclk => M00_ACLK,
      aresetn => M00_ARESETN,
      m_axi_araddr(63 downto 0) => M_AXI_araddr(63 downto 0),
      m_axi_arburst(1 downto 0) => M_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M_AXI_arcache(3 downto 0),
      m_axi_arlen(7 downto 0) => M_AXI_arlen(7 downto 0),
      m_axi_arlock(0) => M_AXI_arlock(0),
      m_axi_arprot(2 downto 0) => M_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M_AXI_arqos(3 downto 0),
      m_axi_arready => M_AXI_arready,
      m_axi_arregion(3 downto 0) => NLW_s01_data_fifo_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => M_AXI_arsize(2 downto 0),
      m_axi_arvalid => M_AXI_arvalid,
      m_axi_rdata(511 downto 0) => M_AXI_rdata(511 downto 0),
      m_axi_rlast => M_AXI_rlast,
      m_axi_rready => M_AXI_rready,
      m_axi_rresp(1 downto 0) => M_AXI_rresp(1 downto 0),
      m_axi_rvalid => M_AXI_rvalid,
      s_axi_araddr(63 downto 0) => auto_cc_to_s01_data_fifo_ARADDR(63 downto 0),
      s_axi_arburst(1 downto 0) => auto_cc_to_s01_data_fifo_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_cc_to_s01_data_fifo_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => auto_cc_to_s01_data_fifo_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_cc_to_s01_data_fifo_ARLOCK,
      s_axi_arprot(2 downto 0) => auto_cc_to_s01_data_fifo_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_cc_to_s01_data_fifo_ARQOS(3 downto 0),
      s_axi_arready => auto_cc_to_s01_data_fifo_ARREADY,
      s_axi_arregion(3 downto 0) => auto_cc_to_s01_data_fifo_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_cc_to_s01_data_fifo_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_cc_to_s01_data_fifo_ARVALID,
      s_axi_rdata(511 downto 0) => auto_cc_to_s01_data_fifo_RDATA(511 downto 0),
      s_axi_rlast => auto_cc_to_s01_data_fifo_RLAST,
      s_axi_rready => auto_cc_to_s01_data_fifo_RREADY,
      s_axi_rresp(1 downto 0) => auto_cc_to_s01_data_fifo_RRESP(1 downto 0),
      s_axi_rvalid => auto_cc_to_s01_data_fifo_RVALID
    );
s01_regslice: component pfm_dynamic_s01_regslice_3
     port map (
      aclk => S01_ACLK,
      aresetn => S01_ARESETN,
      m_axi_araddr(63 downto 0) => s01_regslice_to_auto_cc_ARADDR(63 downto 0),
      m_axi_arburst(1 downto 0) => s01_regslice_to_auto_cc_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s01_regslice_to_auto_cc_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => s01_regslice_to_auto_cc_ARLEN(7 downto 0),
      m_axi_arlock(0) => s01_regslice_to_auto_cc_ARLOCK,
      m_axi_arprot(2 downto 0) => s01_regslice_to_auto_cc_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s01_regslice_to_auto_cc_ARQOS(3 downto 0),
      m_axi_arready => s01_regslice_to_auto_cc_ARREADY,
      m_axi_arregion(3 downto 0) => s01_regslice_to_auto_cc_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => s01_regslice_to_auto_cc_ARSIZE(2 downto 0),
      m_axi_arvalid => s01_regslice_to_auto_cc_ARVALID,
      m_axi_rdata(511 downto 0) => s01_regslice_to_auto_cc_RDATA(511 downto 0),
      m_axi_rlast => s01_regslice_to_auto_cc_RLAST,
      m_axi_rready => s01_regslice_to_auto_cc_RREADY,
      m_axi_rresp(1 downto 0) => s01_regslice_to_auto_cc_RRESP(1 downto 0),
      m_axi_rvalid => s01_regslice_to_auto_cc_RVALID,
      s_axi_araddr(63 downto 0) => S01_AXI_araddr(63 downto 0),
      s_axi_arburst(1 downto 0) => S01_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S01_AXI_arcache(3 downto 0),
      s_axi_arlen(7 downto 0) => S01_AXI_arlen(7 downto 0),
      s_axi_arlock(0) => S01_AXI_arlock(0),
      s_axi_arprot(2 downto 0) => S01_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => S01_AXI_arqos(3 downto 0),
      s_axi_arready => S01_AXI_arready,
      s_axi_arregion(3 downto 0) => S01_AXI_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => S01_AXI_arsize(2 downto 0),
      s_axi_arvalid => S01_AXI_arvalid,
      s_axi_rdata(511 downto 0) => S01_AXI_rdata(511 downto 0),
      s_axi_rlast => S01_AXI_rlast,
      s_axi_rready => S01_AXI_rready,
      s_axi_rresp(1 downto 0) => S01_AXI_rresp(1 downto 0),
      s_axi_rvalid => S01_AXI_rvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic_s01_couplers_imp_536K3F is
  port (
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wvalid : in STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pfm_dynamic_s01_couplers_imp_536K3F : entity is "s01_couplers_imp_536K3F";
end pfm_dynamic_s01_couplers_imp_536K3F;

architecture STRUCTURE of pfm_dynamic_s01_couplers_imp_536K3F is
  component pfm_dynamic_auto_cc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC
  );
  end component pfm_dynamic_auto_cc_0;
  component pfm_dynamic_s01_data_fifo_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC
  );
  end component pfm_dynamic_s01_data_fifo_2;
  component pfm_dynamic_s01_regslice_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC
  );
  end component pfm_dynamic_s01_regslice_2;
  signal auto_cc_to_s01_data_fifo_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_cc_to_s01_data_fifo_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s01_data_fifo_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s01_data_fifo_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_cc_to_s01_data_fifo_AWLOCK : STD_LOGIC;
  signal auto_cc_to_s01_data_fifo_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s01_data_fifo_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s01_data_fifo_AWREADY : STD_LOGIC;
  signal auto_cc_to_s01_data_fifo_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s01_data_fifo_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s01_data_fifo_AWVALID : STD_LOGIC;
  signal auto_cc_to_s01_data_fifo_BREADY : STD_LOGIC;
  signal auto_cc_to_s01_data_fifo_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s01_data_fifo_BVALID : STD_LOGIC;
  signal auto_cc_to_s01_data_fifo_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_cc_to_s01_data_fifo_WLAST : STD_LOGIC;
  signal auto_cc_to_s01_data_fifo_WREADY : STD_LOGIC;
  signal auto_cc_to_s01_data_fifo_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_cc_to_s01_data_fifo_WVALID : STD_LOGIC;
  signal s01_regslice_to_auto_cc_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_regslice_to_auto_cc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_regslice_to_auto_cc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_cc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_regslice_to_auto_cc_AWLOCK : STD_LOGIC;
  signal s01_regslice_to_auto_cc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_regslice_to_auto_cc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_cc_AWREADY : STD_LOGIC;
  signal s01_regslice_to_auto_cc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_cc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_regslice_to_auto_cc_AWVALID : STD_LOGIC;
  signal s01_regslice_to_auto_cc_BREADY : STD_LOGIC;
  signal s01_regslice_to_auto_cc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_regslice_to_auto_cc_BVALID : STD_LOGIC;
  signal s01_regslice_to_auto_cc_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_regslice_to_auto_cc_WLAST : STD_LOGIC;
  signal s01_regslice_to_auto_cc_WREADY : STD_LOGIC;
  signal s01_regslice_to_auto_cc_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_regslice_to_auto_cc_WVALID : STD_LOGIC;
  signal NLW_s01_data_fifo_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_cc : label is "axi_clock_converter_v2_1_25_axi_clock_converter,Vivado 2022.1";
  attribute X_CORE_INFO of s01_data_fifo : label is "axi_data_fifo_v2_1_25_axi_data_fifo,Vivado 2022.1";
  attribute X_CORE_INFO of s01_regslice : label is "axi_register_slice_v2_1_26_axi_register_slice,Vivado 2022.1";
begin
auto_cc: component pfm_dynamic_auto_cc_0
     port map (
      m_axi_aclk => M00_ACLK,
      m_axi_aresetn => M00_ARESETN,
      m_axi_awaddr(63 downto 0) => auto_cc_to_s01_data_fifo_AWADDR(63 downto 0),
      m_axi_awburst(1 downto 0) => auto_cc_to_s01_data_fifo_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_cc_to_s01_data_fifo_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_cc_to_s01_data_fifo_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_cc_to_s01_data_fifo_AWLOCK,
      m_axi_awprot(2 downto 0) => auto_cc_to_s01_data_fifo_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_cc_to_s01_data_fifo_AWQOS(3 downto 0),
      m_axi_awready => auto_cc_to_s01_data_fifo_AWREADY,
      m_axi_awregion(3 downto 0) => auto_cc_to_s01_data_fifo_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_cc_to_s01_data_fifo_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_cc_to_s01_data_fifo_AWVALID,
      m_axi_bready => auto_cc_to_s01_data_fifo_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_s01_data_fifo_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_s01_data_fifo_BVALID,
      m_axi_wdata(511 downto 0) => auto_cc_to_s01_data_fifo_WDATA(511 downto 0),
      m_axi_wlast => auto_cc_to_s01_data_fifo_WLAST,
      m_axi_wready => auto_cc_to_s01_data_fifo_WREADY,
      m_axi_wstrb(63 downto 0) => auto_cc_to_s01_data_fifo_WSTRB(63 downto 0),
      m_axi_wvalid => auto_cc_to_s01_data_fifo_WVALID,
      s_axi_aclk => S01_ACLK,
      s_axi_aresetn => S01_ARESETN,
      s_axi_awaddr(63 downto 0) => s01_regslice_to_auto_cc_AWADDR(63 downto 0),
      s_axi_awburst(1 downto 0) => s01_regslice_to_auto_cc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s01_regslice_to_auto_cc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s01_regslice_to_auto_cc_AWLEN(7 downto 0),
      s_axi_awlock(0) => s01_regslice_to_auto_cc_AWLOCK,
      s_axi_awprot(2 downto 0) => s01_regslice_to_auto_cc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s01_regslice_to_auto_cc_AWQOS(3 downto 0),
      s_axi_awready => s01_regslice_to_auto_cc_AWREADY,
      s_axi_awregion(3 downto 0) => s01_regslice_to_auto_cc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => s01_regslice_to_auto_cc_AWSIZE(2 downto 0),
      s_axi_awvalid => s01_regslice_to_auto_cc_AWVALID,
      s_axi_bready => s01_regslice_to_auto_cc_BREADY,
      s_axi_bresp(1 downto 0) => s01_regslice_to_auto_cc_BRESP(1 downto 0),
      s_axi_bvalid => s01_regslice_to_auto_cc_BVALID,
      s_axi_wdata(511 downto 0) => s01_regslice_to_auto_cc_WDATA(511 downto 0),
      s_axi_wlast => s01_regslice_to_auto_cc_WLAST,
      s_axi_wready => s01_regslice_to_auto_cc_WREADY,
      s_axi_wstrb(63 downto 0) => s01_regslice_to_auto_cc_WSTRB(63 downto 0),
      s_axi_wvalid => s01_regslice_to_auto_cc_WVALID
    );
s01_data_fifo: component pfm_dynamic_s01_data_fifo_2
     port map (
      aclk => M00_ACLK,
      aresetn => M00_ARESETN,
      m_axi_awaddr(63 downto 0) => M_AXI_awaddr(63 downto 0),
      m_axi_awburst(1 downto 0) => M_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => M_AXI_awcache(3 downto 0),
      m_axi_awlen(7 downto 0) => M_AXI_awlen(7 downto 0),
      m_axi_awlock(0) => M_AXI_awlock(0),
      m_axi_awprot(2 downto 0) => M_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => M_AXI_awqos(3 downto 0),
      m_axi_awready => M_AXI_awready,
      m_axi_awregion(3 downto 0) => NLW_s01_data_fifo_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => M_AXI_awsize(2 downto 0),
      m_axi_awvalid => M_AXI_awvalid,
      m_axi_bready => M_AXI_bready,
      m_axi_bresp(1 downto 0) => M_AXI_bresp(1 downto 0),
      m_axi_bvalid => M_AXI_bvalid,
      m_axi_wdata(511 downto 0) => M_AXI_wdata(511 downto 0),
      m_axi_wlast => M_AXI_wlast,
      m_axi_wready => M_AXI_wready,
      m_axi_wstrb(63 downto 0) => M_AXI_wstrb(63 downto 0),
      m_axi_wvalid => M_AXI_wvalid,
      s_axi_awaddr(63 downto 0) => auto_cc_to_s01_data_fifo_AWADDR(63 downto 0),
      s_axi_awburst(1 downto 0) => auto_cc_to_s01_data_fifo_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_cc_to_s01_data_fifo_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => auto_cc_to_s01_data_fifo_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_cc_to_s01_data_fifo_AWLOCK,
      s_axi_awprot(2 downto 0) => auto_cc_to_s01_data_fifo_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_cc_to_s01_data_fifo_AWQOS(3 downto 0),
      s_axi_awready => auto_cc_to_s01_data_fifo_AWREADY,
      s_axi_awregion(3 downto 0) => auto_cc_to_s01_data_fifo_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_cc_to_s01_data_fifo_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_cc_to_s01_data_fifo_AWVALID,
      s_axi_bready => auto_cc_to_s01_data_fifo_BREADY,
      s_axi_bresp(1 downto 0) => auto_cc_to_s01_data_fifo_BRESP(1 downto 0),
      s_axi_bvalid => auto_cc_to_s01_data_fifo_BVALID,
      s_axi_wdata(511 downto 0) => auto_cc_to_s01_data_fifo_WDATA(511 downto 0),
      s_axi_wlast => auto_cc_to_s01_data_fifo_WLAST,
      s_axi_wready => auto_cc_to_s01_data_fifo_WREADY,
      s_axi_wstrb(63 downto 0) => auto_cc_to_s01_data_fifo_WSTRB(63 downto 0),
      s_axi_wvalid => auto_cc_to_s01_data_fifo_WVALID
    );
s01_regslice: component pfm_dynamic_s01_regslice_2
     port map (
      aclk => S01_ACLK,
      aresetn => S01_ARESETN,
      m_axi_awaddr(63 downto 0) => s01_regslice_to_auto_cc_AWADDR(63 downto 0),
      m_axi_awburst(1 downto 0) => s01_regslice_to_auto_cc_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s01_regslice_to_auto_cc_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => s01_regslice_to_auto_cc_AWLEN(7 downto 0),
      m_axi_awlock(0) => s01_regslice_to_auto_cc_AWLOCK,
      m_axi_awprot(2 downto 0) => s01_regslice_to_auto_cc_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s01_regslice_to_auto_cc_AWQOS(3 downto 0),
      m_axi_awready => s01_regslice_to_auto_cc_AWREADY,
      m_axi_awregion(3 downto 0) => s01_regslice_to_auto_cc_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => s01_regslice_to_auto_cc_AWSIZE(2 downto 0),
      m_axi_awvalid => s01_regslice_to_auto_cc_AWVALID,
      m_axi_bready => s01_regslice_to_auto_cc_BREADY,
      m_axi_bresp(1 downto 0) => s01_regslice_to_auto_cc_BRESP(1 downto 0),
      m_axi_bvalid => s01_regslice_to_auto_cc_BVALID,
      m_axi_wdata(511 downto 0) => s01_regslice_to_auto_cc_WDATA(511 downto 0),
      m_axi_wlast => s01_regslice_to_auto_cc_WLAST,
      m_axi_wready => s01_regslice_to_auto_cc_WREADY,
      m_axi_wstrb(63 downto 0) => s01_regslice_to_auto_cc_WSTRB(63 downto 0),
      m_axi_wvalid => s01_regslice_to_auto_cc_WVALID,
      s_axi_awaddr(63 downto 0) => S01_AXI_awaddr(63 downto 0),
      s_axi_awburst(1 downto 0) => S01_AXI_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => S01_AXI_awcache(3 downto 0),
      s_axi_awlen(7 downto 0) => S01_AXI_awlen(7 downto 0),
      s_axi_awlock(0) => S01_AXI_awlock(0),
      s_axi_awprot(2 downto 0) => S01_AXI_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => S01_AXI_awqos(3 downto 0),
      s_axi_awready => S01_AXI_awready,
      s_axi_awregion(3 downto 0) => S01_AXI_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => S01_AXI_awsize(2 downto 0),
      s_axi_awvalid => S01_AXI_awvalid,
      s_axi_bready => S01_AXI_bready,
      s_axi_bresp(1 downto 0) => S01_AXI_bresp(1 downto 0),
      s_axi_bvalid => S01_AXI_bvalid,
      s_axi_wdata(511 downto 0) => S01_AXI_wdata(511 downto 0),
      s_axi_wlast => S01_AXI_wlast,
      s_axi_wready => S01_AXI_wready,
      s_axi_wstrb(63 downto 0) => S01_AXI_wstrb(63 downto 0),
      s_axi_wvalid => S01_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic_s02_couplers_imp_1CF9C2D is
  port (
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    S02_AXI_arready : out STD_LOGIC;
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rlast : out STD_LOGIC;
    S02_AXI_rvalid : out STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC;
    S02_AXI_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pfm_dynamic_s02_couplers_imp_1CF9C2D : entity is "s02_couplers_imp_1CF9C2D";
end pfm_dynamic_s02_couplers_imp_1CF9C2D;

architecture STRUCTURE of pfm_dynamic_s02_couplers_imp_1CF9C2D is
  component pfm_dynamic_auto_cc_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_auto_cc_2;
  component pfm_dynamic_s02_data_fifo_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_s02_data_fifo_0;
  component pfm_dynamic_s02_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_s02_regslice_0;
  signal auto_cc_to_s02_data_fifo_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_cc_to_s02_data_fifo_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s02_data_fifo_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s02_data_fifo_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_cc_to_s02_data_fifo_ARLOCK : STD_LOGIC;
  signal auto_cc_to_s02_data_fifo_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s02_data_fifo_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s02_data_fifo_ARREADY : STD_LOGIC;
  signal auto_cc_to_s02_data_fifo_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_s02_data_fifo_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_s02_data_fifo_ARVALID : STD_LOGIC;
  signal auto_cc_to_s02_data_fifo_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_cc_to_s02_data_fifo_RLAST : STD_LOGIC;
  signal auto_cc_to_s02_data_fifo_RREADY : STD_LOGIC;
  signal auto_cc_to_s02_data_fifo_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_s02_data_fifo_RVALID : STD_LOGIC;
  signal s02_regslice_to_auto_cc_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s02_regslice_to_auto_cc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_regslice_to_auto_cc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_regslice_to_auto_cc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_regslice_to_auto_cc_ARLOCK : STD_LOGIC;
  signal s02_regslice_to_auto_cc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_regslice_to_auto_cc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_regslice_to_auto_cc_ARREADY : STD_LOGIC;
  signal s02_regslice_to_auto_cc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_regslice_to_auto_cc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_regslice_to_auto_cc_ARVALID : STD_LOGIC;
  signal s02_regslice_to_auto_cc_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s02_regslice_to_auto_cc_RLAST : STD_LOGIC;
  signal s02_regslice_to_auto_cc_RREADY : STD_LOGIC;
  signal s02_regslice_to_auto_cc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_regslice_to_auto_cc_RVALID : STD_LOGIC;
  signal NLW_s02_data_fifo_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_cc : label is "axi_clock_converter_v2_1_25_axi_clock_converter,Vivado 2022.1";
  attribute X_CORE_INFO of s02_data_fifo : label is "axi_data_fifo_v2_1_25_axi_data_fifo,Vivado 2022.1";
  attribute X_CORE_INFO of s02_regslice : label is "axi_register_slice_v2_1_26_axi_register_slice,Vivado 2022.1";
begin
auto_cc: component pfm_dynamic_auto_cc_2
     port map (
      m_axi_aclk => M00_ACLK,
      m_axi_araddr(63 downto 0) => auto_cc_to_s02_data_fifo_ARADDR(63 downto 0),
      m_axi_arburst(1 downto 0) => auto_cc_to_s02_data_fifo_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_cc_to_s02_data_fifo_ARCACHE(3 downto 0),
      m_axi_aresetn => M00_ARESETN,
      m_axi_arlen(7 downto 0) => auto_cc_to_s02_data_fifo_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_cc_to_s02_data_fifo_ARLOCK,
      m_axi_arprot(2 downto 0) => auto_cc_to_s02_data_fifo_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_cc_to_s02_data_fifo_ARQOS(3 downto 0),
      m_axi_arready => auto_cc_to_s02_data_fifo_ARREADY,
      m_axi_arregion(3 downto 0) => auto_cc_to_s02_data_fifo_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_cc_to_s02_data_fifo_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_cc_to_s02_data_fifo_ARVALID,
      m_axi_rdata(511 downto 0) => auto_cc_to_s02_data_fifo_RDATA(511 downto 0),
      m_axi_rlast => auto_cc_to_s02_data_fifo_RLAST,
      m_axi_rready => auto_cc_to_s02_data_fifo_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_s02_data_fifo_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_s02_data_fifo_RVALID,
      s_axi_aclk => S01_ACLK,
      s_axi_araddr(63 downto 0) => s02_regslice_to_auto_cc_ARADDR(63 downto 0),
      s_axi_arburst(1 downto 0) => s02_regslice_to_auto_cc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s02_regslice_to_auto_cc_ARCACHE(3 downto 0),
      s_axi_aresetn => S01_ARESETN,
      s_axi_arlen(7 downto 0) => s02_regslice_to_auto_cc_ARLEN(7 downto 0),
      s_axi_arlock(0) => s02_regslice_to_auto_cc_ARLOCK,
      s_axi_arprot(2 downto 0) => s02_regslice_to_auto_cc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s02_regslice_to_auto_cc_ARQOS(3 downto 0),
      s_axi_arready => s02_regslice_to_auto_cc_ARREADY,
      s_axi_arregion(3 downto 0) => s02_regslice_to_auto_cc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => s02_regslice_to_auto_cc_ARSIZE(2 downto 0),
      s_axi_arvalid => s02_regslice_to_auto_cc_ARVALID,
      s_axi_rdata(511 downto 0) => s02_regslice_to_auto_cc_RDATA(511 downto 0),
      s_axi_rlast => s02_regslice_to_auto_cc_RLAST,
      s_axi_rready => s02_regslice_to_auto_cc_RREADY,
      s_axi_rresp(1 downto 0) => s02_regslice_to_auto_cc_RRESP(1 downto 0),
      s_axi_rvalid => s02_regslice_to_auto_cc_RVALID
    );
s02_data_fifo: component pfm_dynamic_s02_data_fifo_0
     port map (
      aclk => M00_ACLK,
      aresetn => M00_ARESETN,
      m_axi_araddr(63 downto 0) => M_AXI_araddr(63 downto 0),
      m_axi_arburst(1 downto 0) => M_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M_AXI_arcache(3 downto 0),
      m_axi_arlen(7 downto 0) => M_AXI_arlen(7 downto 0),
      m_axi_arlock(0) => M_AXI_arlock(0),
      m_axi_arprot(2 downto 0) => M_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M_AXI_arqos(3 downto 0),
      m_axi_arready => M_AXI_arready,
      m_axi_arregion(3 downto 0) => NLW_s02_data_fifo_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => M_AXI_arsize(2 downto 0),
      m_axi_arvalid => M_AXI_arvalid,
      m_axi_rdata(511 downto 0) => M_AXI_rdata(511 downto 0),
      m_axi_rlast => M_AXI_rlast,
      m_axi_rready => M_AXI_rready,
      m_axi_rresp(1 downto 0) => M_AXI_rresp(1 downto 0),
      m_axi_rvalid => M_AXI_rvalid,
      s_axi_araddr(63 downto 0) => auto_cc_to_s02_data_fifo_ARADDR(63 downto 0),
      s_axi_arburst(1 downto 0) => auto_cc_to_s02_data_fifo_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_cc_to_s02_data_fifo_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => auto_cc_to_s02_data_fifo_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_cc_to_s02_data_fifo_ARLOCK,
      s_axi_arprot(2 downto 0) => auto_cc_to_s02_data_fifo_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_cc_to_s02_data_fifo_ARQOS(3 downto 0),
      s_axi_arready => auto_cc_to_s02_data_fifo_ARREADY,
      s_axi_arregion(3 downto 0) => auto_cc_to_s02_data_fifo_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_cc_to_s02_data_fifo_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_cc_to_s02_data_fifo_ARVALID,
      s_axi_rdata(511 downto 0) => auto_cc_to_s02_data_fifo_RDATA(511 downto 0),
      s_axi_rlast => auto_cc_to_s02_data_fifo_RLAST,
      s_axi_rready => auto_cc_to_s02_data_fifo_RREADY,
      s_axi_rresp(1 downto 0) => auto_cc_to_s02_data_fifo_RRESP(1 downto 0),
      s_axi_rvalid => auto_cc_to_s02_data_fifo_RVALID
    );
s02_regslice: component pfm_dynamic_s02_regslice_0
     port map (
      aclk => S01_ACLK,
      aresetn => S01_ARESETN,
      m_axi_araddr(63 downto 0) => s02_regslice_to_auto_cc_ARADDR(63 downto 0),
      m_axi_arburst(1 downto 0) => s02_regslice_to_auto_cc_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s02_regslice_to_auto_cc_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => s02_regslice_to_auto_cc_ARLEN(7 downto 0),
      m_axi_arlock(0) => s02_regslice_to_auto_cc_ARLOCK,
      m_axi_arprot(2 downto 0) => s02_regslice_to_auto_cc_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s02_regslice_to_auto_cc_ARQOS(3 downto 0),
      m_axi_arready => s02_regslice_to_auto_cc_ARREADY,
      m_axi_arregion(3 downto 0) => s02_regslice_to_auto_cc_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => s02_regslice_to_auto_cc_ARSIZE(2 downto 0),
      m_axi_arvalid => s02_regslice_to_auto_cc_ARVALID,
      m_axi_rdata(511 downto 0) => s02_regslice_to_auto_cc_RDATA(511 downto 0),
      m_axi_rlast => s02_regslice_to_auto_cc_RLAST,
      m_axi_rready => s02_regslice_to_auto_cc_RREADY,
      m_axi_rresp(1 downto 0) => s02_regslice_to_auto_cc_RRESP(1 downto 0),
      m_axi_rvalid => s02_regslice_to_auto_cc_RVALID,
      s_axi_araddr(63 downto 0) => S02_AXI_araddr(63 downto 0),
      s_axi_arburst(1 downto 0) => S02_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S02_AXI_arcache(3 downto 0),
      s_axi_arlen(7 downto 0) => S02_AXI_arlen(7 downto 0),
      s_axi_arlock(0) => S02_AXI_arlock(0),
      s_axi_arprot(2 downto 0) => S02_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => S02_AXI_arqos(3 downto 0),
      s_axi_arready => S02_AXI_arready,
      s_axi_arregion(3 downto 0) => S02_AXI_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => S02_AXI_arsize(2 downto 0),
      s_axi_arvalid => S02_AXI_arvalid,
      s_axi_rdata(511 downto 0) => S02_AXI_rdata(511 downto 0),
      s_axi_rlast => S02_AXI_rlast,
      s_axi_rready => S02_AXI_rready,
      s_axi_rresp(1 downto 0) => S02_AXI_rresp(1 downto 0),
      s_axi_rvalid => S02_AXI_rvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic_axi_interconnect_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC
  );
end pfm_dynamic_axi_interconnect_0_0;

architecture STRUCTURE of pfm_dynamic_axi_interconnect_0_0 is
  component pfm_dynamic_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component pfm_dynamic_xbar_0;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC;
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC;
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC;
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_BID : STD_LOGIC;
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC;
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC;
  signal NLW_xbar_s_axi_arready_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 1023 downto 512 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_rlast_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_xbar_s_axi_rvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xbar : label is "axi_crossbar_v2_1_27_axi_crossbar,Vivado 2022.1";
begin
m00_couplers: entity work.pfm_dynamic_m00_couplers_imp_R2G0XH
     port map (
      M00_ACLK => M00_ACLK,
      M00_ARESETN => M00_ARESETN,
      M00_AXI_araddr(63 downto 0) => M00_AXI_araddr(63 downto 0),
      M00_AXI_arburst(1 downto 0) => M00_AXI_arburst(1 downto 0),
      M00_AXI_arcache(3 downto 0) => M00_AXI_arcache(3 downto 0),
      M00_AXI_arlen(7 downto 0) => M00_AXI_arlen(7 downto 0),
      M00_AXI_arlock(0) => M00_AXI_arlock(0),
      M00_AXI_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      M00_AXI_arqos(3 downto 0) => M00_AXI_arqos(3 downto 0),
      M00_AXI_arready => M00_AXI_arready,
      M00_AXI_arsize(2 downto 0) => M00_AXI_arsize(2 downto 0),
      M00_AXI_arvalid => M00_AXI_arvalid,
      M00_AXI_awaddr(63 downto 0) => M00_AXI_awaddr(63 downto 0),
      M00_AXI_awburst(1 downto 0) => M00_AXI_awburst(1 downto 0),
      M00_AXI_awcache(3 downto 0) => M00_AXI_awcache(3 downto 0),
      M00_AXI_awlen(7 downto 0) => M00_AXI_awlen(7 downto 0),
      M00_AXI_awlock(0) => M00_AXI_awlock(0),
      M00_AXI_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      M00_AXI_awqos(3 downto 0) => M00_AXI_awqos(3 downto 0),
      M00_AXI_awready => M00_AXI_awready,
      M00_AXI_awsize(2 downto 0) => M00_AXI_awsize(2 downto 0),
      M00_AXI_awvalid => M00_AXI_awvalid,
      M00_AXI_bready => M00_AXI_bready,
      M00_AXI_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      M00_AXI_bvalid => M00_AXI_bvalid,
      M00_AXI_rdata(127 downto 0) => M00_AXI_rdata(127 downto 0),
      M00_AXI_rlast => M00_AXI_rlast,
      M00_AXI_rready => M00_AXI_rready,
      M00_AXI_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      M00_AXI_rvalid => M00_AXI_rvalid,
      M00_AXI_wdata(127 downto 0) => M00_AXI_wdata(127 downto 0),
      M00_AXI_wlast => M00_AXI_wlast,
      M00_AXI_wready => M00_AXI_wready,
      M00_AXI_wstrb(15 downto 0) => M00_AXI_wstrb(15 downto 0),
      M00_AXI_wvalid => M00_AXI_wvalid,
      S_AXI_araddr(63 downto 0) => xbar_to_m00_couplers_ARADDR(63 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => xbar_to_m00_couplers_ARID,
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID,
      S_AXI_awaddr(63 downto 0) => xbar_to_m00_couplers_AWADDR(63 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => xbar_to_m00_couplers_AWID,
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID,
      S_AXI_bid(0) => xbar_to_m00_couplers_BID,
      S_AXI_bready => xbar_to_m00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(511 downto 0) => xbar_to_m00_couplers_RDATA(511 downto 0),
      S_AXI_rid(0) => xbar_to_m00_couplers_RID,
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(511 downto 0) => xbar_to_m00_couplers_WDATA(511 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST,
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(63 downto 0) => xbar_to_m00_couplers_WSTRB(63 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID
    );
s00_couplers: entity work.pfm_dynamic_s00_couplers_imp_139VRFP
     port map (
      M00_ACLK => M00_ACLK,
      M00_ARESETN => M00_ARESETN,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK,
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY,
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK,
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY,
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID,
      M_AXI_rdata(511 downto 0) => s00_couplers_to_xbar_RDATA(511 downto 0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST,
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID,
      M_AXI_wdata(511 downto 0) => s00_couplers_to_xbar_WDATA(511 downto 0),
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY,
      M_AXI_wstrb(63 downto 0) => s00_couplers_to_xbar_WSTRB(63 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S00_AXI_araddr(31 downto 0) => S00_AXI_araddr(31 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      S00_AXI_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      S00_AXI_arlock(0) => S00_AXI_arlock(0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S00_AXI_arqos(3 downto 0),
      S00_AXI_arready => S00_AXI_arready,
      S00_AXI_arregion(3 downto 0) => S00_AXI_arregion(3 downto 0),
      S00_AXI_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      S00_AXI_arvalid => S00_AXI_arvalid,
      S00_AXI_awaddr(31 downto 0) => S00_AXI_awaddr(31 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      S00_AXI_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      S00_AXI_awlock(0) => S00_AXI_awlock(0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S00_AXI_awqos(3 downto 0),
      S00_AXI_awready => S00_AXI_awready,
      S00_AXI_awregion(3 downto 0) => S00_AXI_awregion(3 downto 0),
      S00_AXI_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      S00_AXI_awvalid => S00_AXI_awvalid,
      S00_AXI_bready => S00_AXI_bready,
      S00_AXI_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      S00_AXI_bvalid => S00_AXI_bvalid,
      S00_AXI_rdata(127 downto 0) => S00_AXI_rdata(127 downto 0),
      S00_AXI_rlast => S00_AXI_rlast,
      S00_AXI_rready => S00_AXI_rready,
      S00_AXI_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      S00_AXI_rvalid => S00_AXI_rvalid,
      S00_AXI_wdata(127 downto 0) => S00_AXI_wdata(127 downto 0),
      S00_AXI_wlast => S00_AXI_wlast,
      S00_AXI_wready => S00_AXI_wready,
      S00_AXI_wstrb(15 downto 0) => S00_AXI_wstrb(15 downto 0),
      S00_AXI_wvalid => S00_AXI_wvalid
    );
s01_couplers: entity work.pfm_dynamic_s01_couplers_imp_536K3F
     port map (
      M00_ACLK => M00_ACLK,
      M00_ARESETN => M00_ARESETN,
      M_AXI_awaddr(63 downto 0) => s01_couplers_to_xbar_AWADDR(63 downto 0),
      M_AXI_awburst(1 downto 0) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s01_couplers_to_xbar_AWLOCK,
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s01_couplers_to_xbar_AWREADY,
      M_AXI_awsize(2 downto 0) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s01_couplers_to_xbar_AWVALID,
      M_AXI_bready => s01_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid => s01_couplers_to_xbar_BVALID,
      M_AXI_wdata(511 downto 0) => s01_couplers_to_xbar_WDATA(511 downto 0),
      M_AXI_wlast => s01_couplers_to_xbar_WLAST,
      M_AXI_wready => s01_couplers_to_xbar_WREADY,
      M_AXI_wstrb(63 downto 0) => s01_couplers_to_xbar_WSTRB(63 downto 0),
      M_AXI_wvalid => s01_couplers_to_xbar_WVALID,
      S01_ACLK => S01_ACLK,
      S01_ARESETN => S01_ARESETN,
      S01_AXI_awaddr(63 downto 0) => S01_AXI_awaddr(63 downto 0),
      S01_AXI_awburst(1 downto 0) => S01_AXI_awburst(1 downto 0),
      S01_AXI_awcache(3 downto 0) => S01_AXI_awcache(3 downto 0),
      S01_AXI_awlen(7 downto 0) => S01_AXI_awlen(7 downto 0),
      S01_AXI_awlock(0) => S01_AXI_awlock(0),
      S01_AXI_awprot(2 downto 0) => S01_AXI_awprot(2 downto 0),
      S01_AXI_awqos(3 downto 0) => S01_AXI_awqos(3 downto 0),
      S01_AXI_awready => S01_AXI_awready,
      S01_AXI_awregion(3 downto 0) => S01_AXI_awregion(3 downto 0),
      S01_AXI_awsize(2 downto 0) => S01_AXI_awsize(2 downto 0),
      S01_AXI_awvalid => S01_AXI_awvalid,
      S01_AXI_bready => S01_AXI_bready,
      S01_AXI_bresp(1 downto 0) => S01_AXI_bresp(1 downto 0),
      S01_AXI_bvalid => S01_AXI_bvalid,
      S01_AXI_wdata(511 downto 0) => S01_AXI_wdata(511 downto 0),
      S01_AXI_wlast => S01_AXI_wlast,
      S01_AXI_wready => S01_AXI_wready,
      S01_AXI_wstrb(63 downto 0) => S01_AXI_wstrb(63 downto 0),
      S01_AXI_wvalid => S01_AXI_wvalid
    );
xbar: component pfm_dynamic_xbar_0
     port map (
      aclk => M00_ACLK,
      aresetn => M00_ARESETN,
      m_axi_araddr(63 downto 0) => xbar_to_m00_couplers_ARADDR(63 downto 0),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(0) => xbar_to_m00_couplers_ARID,
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK,
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID,
      m_axi_awaddr(63 downto 0) => xbar_to_m00_couplers_AWADDR(63 downto 0),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(0) => xbar_to_m00_couplers_AWID,
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK,
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID,
      m_axi_bid(0) => xbar_to_m00_couplers_BID,
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(511 downto 0) => xbar_to_m00_couplers_RDATA(511 downto 0),
      m_axi_rid(0) => xbar_to_m00_couplers_RID,
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(511 downto 0) => xbar_to_m00_couplers_WDATA(511 downto 0),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(63 downto 0) => xbar_to_m00_couplers_WSTRB(63 downto 0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID,
      s_axi_araddr(127 downto 32) => B"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(3 downto 2) => B"00",
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(7 downto 4) => B"0000",
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(1 downto 0) => B"00",
      s_axi_arlen(15 downto 8) => B"00000000",
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(1) => '0',
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK,
      s_axi_arprot(5 downto 3) => B"000",
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(7 downto 4) => B"0000",
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(1) => NLW_xbar_s_axi_arready_UNCONNECTED(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY,
      s_axi_arsize(5 downto 3) => B"101",
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(1) => '0',
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(127 downto 64) => s01_couplers_to_xbar_AWADDR(63 downto 0),
      s_axi_awaddr(63 downto 32) => B"00000000000000000000000000000000",
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(3 downto 2) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(7 downto 4) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => B"00",
      s_axi_awlen(15 downto 8) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(1) => s01_couplers_to_xbar_AWLOCK,
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK,
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(7 downto 4) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY,
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY,
      s_axi_awsize(5 downto 3) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID,
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bid(1 downto 0) => NLW_xbar_s_axi_bid_UNCONNECTED(1 downto 0),
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID,
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID,
      s_axi_rdata(1023 downto 512) => NLW_xbar_s_axi_rdata_UNCONNECTED(1023 downto 512),
      s_axi_rdata(511 downto 0) => s00_couplers_to_xbar_RDATA(511 downto 0),
      s_axi_rid(1 downto 0) => NLW_xbar_s_axi_rid_UNCONNECTED(1 downto 0),
      s_axi_rlast(1) => NLW_xbar_s_axi_rlast_UNCONNECTED(1),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST,
      s_axi_rready(1) => '0',
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(3 downto 2) => NLW_xbar_s_axi_rresp_UNCONNECTED(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(1) => NLW_xbar_s_axi_rvalid_UNCONNECTED(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID,
      s_axi_wdata(1023 downto 512) => s01_couplers_to_xbar_WDATA(511 downto 0),
      s_axi_wdata(511 downto 0) => s00_couplers_to_xbar_WDATA(511 downto 0),
      s_axi_wlast(1) => s01_couplers_to_xbar_WLAST,
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY,
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY,
      s_axi_wstrb(127 downto 64) => s01_couplers_to_xbar_WSTRB(63 downto 0),
      s_axi_wstrb(63 downto 0) => s00_couplers_to_xbar_WSTRB(63 downto 0),
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID,
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic_axi_interconnect_1_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end pfm_dynamic_axi_interconnect_1_0;

architecture STRUCTURE of pfm_dynamic_axi_interconnect_1_0 is
begin
s00_couplers: entity work.pfm_dynamic_s00_couplers_imp_B3UQP7
     port map (
      M00_AXI_araddr(31 downto 0) => M00_AXI_araddr(31 downto 0),
      M00_AXI_arburst(1 downto 0) => M00_AXI_arburst(1 downto 0),
      M00_AXI_arcache(3 downto 0) => M00_AXI_arcache(3 downto 0),
      M00_AXI_arlen(7 downto 0) => M00_AXI_arlen(7 downto 0),
      M00_AXI_arlock(0) => M00_AXI_arlock(0),
      M00_AXI_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      M00_AXI_arqos(3 downto 0) => M00_AXI_arqos(3 downto 0),
      M00_AXI_arready => M00_AXI_arready,
      M00_AXI_arsize(2 downto 0) => M00_AXI_arsize(2 downto 0),
      M00_AXI_arvalid => M00_AXI_arvalid,
      M00_AXI_awaddr(31 downto 0) => M00_AXI_awaddr(31 downto 0),
      M00_AXI_awburst(1 downto 0) => M00_AXI_awburst(1 downto 0),
      M00_AXI_awcache(3 downto 0) => M00_AXI_awcache(3 downto 0),
      M00_AXI_awlen(7 downto 0) => M00_AXI_awlen(7 downto 0),
      M00_AXI_awlock(0) => M00_AXI_awlock(0),
      M00_AXI_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      M00_AXI_awqos(3 downto 0) => M00_AXI_awqos(3 downto 0),
      M00_AXI_awready => M00_AXI_awready,
      M00_AXI_awsize(2 downto 0) => M00_AXI_awsize(2 downto 0),
      M00_AXI_awvalid => M00_AXI_awvalid,
      M00_AXI_bready => M00_AXI_bready,
      M00_AXI_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      M00_AXI_bvalid => M00_AXI_bvalid,
      M00_AXI_rdata(127 downto 0) => M00_AXI_rdata(127 downto 0),
      M00_AXI_rlast => M00_AXI_rlast,
      M00_AXI_rready => M00_AXI_rready,
      M00_AXI_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      M00_AXI_rvalid => M00_AXI_rvalid,
      M00_AXI_wdata(127 downto 0) => M00_AXI_wdata(127 downto 0),
      M00_AXI_wlast => M00_AXI_wlast,
      M00_AXI_wready => M00_AXI_wready,
      M00_AXI_wstrb(15 downto 0) => M00_AXI_wstrb(15 downto 0),
      M00_AXI_wvalid => M00_AXI_wvalid,
      S00_ACLK => S00_ACLK,
      S00_ARESETN => S00_ARESETN,
      S00_AXI_araddr(31 downto 0) => S00_AXI_araddr(31 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      S00_AXI_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      S00_AXI_arlock(0) => S00_AXI_arlock(0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S00_AXI_arqos(3 downto 0),
      S00_AXI_arready => S00_AXI_arready,
      S00_AXI_arregion(3 downto 0) => S00_AXI_arregion(3 downto 0),
      S00_AXI_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      S00_AXI_arvalid => S00_AXI_arvalid,
      S00_AXI_awaddr(31 downto 0) => S00_AXI_awaddr(31 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      S00_AXI_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      S00_AXI_awlock(0) => S00_AXI_awlock(0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S00_AXI_awqos(3 downto 0),
      S00_AXI_awready => S00_AXI_awready,
      S00_AXI_awregion(3 downto 0) => S00_AXI_awregion(3 downto 0),
      S00_AXI_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      S00_AXI_awvalid => S00_AXI_awvalid,
      S00_AXI_bready => S00_AXI_bready,
      S00_AXI_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      S00_AXI_bvalid => S00_AXI_bvalid,
      S00_AXI_rdata(127 downto 0) => S00_AXI_rdata(127 downto 0),
      S00_AXI_rlast => S00_AXI_rlast,
      S00_AXI_rready => S00_AXI_rready,
      S00_AXI_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      S00_AXI_rvalid => S00_AXI_rvalid,
      S00_AXI_wdata(127 downto 0) => S00_AXI_wdata(127 downto 0),
      S00_AXI_wlast => S00_AXI_wlast,
      S00_AXI_wready => S00_AXI_wready,
      S00_AXI_wstrb(15 downto 0) => S00_AXI_wstrb(15 downto 0),
      S00_AXI_wvalid => S00_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic_axi_interconnect_hpm0fpd_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end pfm_dynamic_axi_interconnect_hpm0fpd_0;

architecture STRUCTURE of pfm_dynamic_axi_interconnect_hpm0fpd_0 is
begin
s00_couplers: entity work.pfm_dynamic_s00_couplers_imp_2LVM1Y
     port map (
      M00_AXI_araddr(31 downto 0) => M00_AXI_araddr(31 downto 0),
      M00_AXI_arburst(1 downto 0) => M00_AXI_arburst(1 downto 0),
      M00_AXI_arcache(3 downto 0) => M00_AXI_arcache(3 downto 0),
      M00_AXI_arid(15 downto 0) => M00_AXI_arid(15 downto 0),
      M00_AXI_arlen(7 downto 0) => M00_AXI_arlen(7 downto 0),
      M00_AXI_arlock(0) => M00_AXI_arlock(0),
      M00_AXI_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      M00_AXI_arqos(3 downto 0) => M00_AXI_arqos(3 downto 0),
      M00_AXI_arready => M00_AXI_arready,
      M00_AXI_arregion(3 downto 0) => M00_AXI_arregion(3 downto 0),
      M00_AXI_arsize(2 downto 0) => M00_AXI_arsize(2 downto 0),
      M00_AXI_arvalid => M00_AXI_arvalid,
      M00_AXI_awaddr(31 downto 0) => M00_AXI_awaddr(31 downto 0),
      M00_AXI_awburst(1 downto 0) => M00_AXI_awburst(1 downto 0),
      M00_AXI_awcache(3 downto 0) => M00_AXI_awcache(3 downto 0),
      M00_AXI_awid(15 downto 0) => M00_AXI_awid(15 downto 0),
      M00_AXI_awlen(7 downto 0) => M00_AXI_awlen(7 downto 0),
      M00_AXI_awlock(0) => M00_AXI_awlock(0),
      M00_AXI_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      M00_AXI_awqos(3 downto 0) => M00_AXI_awqos(3 downto 0),
      M00_AXI_awready => M00_AXI_awready,
      M00_AXI_awregion(3 downto 0) => M00_AXI_awregion(3 downto 0),
      M00_AXI_awsize(2 downto 0) => M00_AXI_awsize(2 downto 0),
      M00_AXI_awvalid => M00_AXI_awvalid,
      M00_AXI_bid(15 downto 0) => M00_AXI_bid(15 downto 0),
      M00_AXI_bready => M00_AXI_bready,
      M00_AXI_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      M00_AXI_bvalid => M00_AXI_bvalid,
      M00_AXI_rdata(127 downto 0) => M00_AXI_rdata(127 downto 0),
      M00_AXI_rid(15 downto 0) => M00_AXI_rid(15 downto 0),
      M00_AXI_rlast => M00_AXI_rlast,
      M00_AXI_rready => M00_AXI_rready,
      M00_AXI_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      M00_AXI_rvalid => M00_AXI_rvalid,
      M00_AXI_wdata(127 downto 0) => M00_AXI_wdata(127 downto 0),
      M00_AXI_wlast => M00_AXI_wlast,
      M00_AXI_wready => M00_AXI_wready,
      M00_AXI_wstrb(15 downto 0) => M00_AXI_wstrb(15 downto 0),
      M00_AXI_wvalid => M00_AXI_wvalid,
      S00_ACLK => S00_ACLK,
      S00_ARESETN => S00_ARESETN,
      S00_AXI_araddr(31 downto 0) => S00_AXI_araddr(31 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      S00_AXI_arid(15 downto 0) => S00_AXI_arid(15 downto 0),
      S00_AXI_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      S00_AXI_arlock(0) => S00_AXI_arlock(0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S00_AXI_arqos(3 downto 0),
      S00_AXI_arready => S00_AXI_arready,
      S00_AXI_arregion(3 downto 0) => S00_AXI_arregion(3 downto 0),
      S00_AXI_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      S00_AXI_arvalid => S00_AXI_arvalid,
      S00_AXI_awaddr(31 downto 0) => S00_AXI_awaddr(31 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      S00_AXI_awid(15 downto 0) => S00_AXI_awid(15 downto 0),
      S00_AXI_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      S00_AXI_awlock(0) => S00_AXI_awlock(0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S00_AXI_awqos(3 downto 0),
      S00_AXI_awready => S00_AXI_awready,
      S00_AXI_awregion(3 downto 0) => S00_AXI_awregion(3 downto 0),
      S00_AXI_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      S00_AXI_awvalid => S00_AXI_awvalid,
      S00_AXI_bid(15 downto 0) => S00_AXI_bid(15 downto 0),
      S00_AXI_bready => S00_AXI_bready,
      S00_AXI_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      S00_AXI_bvalid => S00_AXI_bvalid,
      S00_AXI_rdata(127 downto 0) => S00_AXI_rdata(127 downto 0),
      S00_AXI_rid(15 downto 0) => S00_AXI_rid(15 downto 0),
      S00_AXI_rlast => S00_AXI_rlast,
      S00_AXI_rready => S00_AXI_rready,
      S00_AXI_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      S00_AXI_rvalid => S00_AXI_rvalid,
      S00_AXI_wdata(127 downto 0) => S00_AXI_wdata(127 downto 0),
      S00_AXI_wlast => S00_AXI_wlast,
      S00_AXI_wready => S00_AXI_wready,
      S00_AXI_wstrb(15 downto 0) => S00_AXI_wstrb(15 downto 0),
      S00_AXI_wvalid => S00_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic_interconnect_axifull_1_user_slr1_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end pfm_dynamic_interconnect_axifull_1_user_slr1_0;

architecture STRUCTURE of pfm_dynamic_interconnect_axifull_1_user_slr1_0 is
begin
s00_couplers: entity work.pfm_dynamic_s00_couplers_imp_1HPK08H
     port map (
      M00_AXI_araddr(31 downto 0) => M00_AXI_araddr(31 downto 0),
      M00_AXI_arburst(1 downto 0) => M00_AXI_arburst(1 downto 0),
      M00_AXI_arcache(3 downto 0) => M00_AXI_arcache(3 downto 0),
      M00_AXI_arlen(7 downto 0) => M00_AXI_arlen(7 downto 0),
      M00_AXI_arlock(0) => M00_AXI_arlock(0),
      M00_AXI_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      M00_AXI_arqos(3 downto 0) => M00_AXI_arqos(3 downto 0),
      M00_AXI_arready => M00_AXI_arready,
      M00_AXI_arsize(2 downto 0) => M00_AXI_arsize(2 downto 0),
      M00_AXI_arvalid => M00_AXI_arvalid,
      M00_AXI_awaddr(31 downto 0) => M00_AXI_awaddr(31 downto 0),
      M00_AXI_awburst(1 downto 0) => M00_AXI_awburst(1 downto 0),
      M00_AXI_awcache(3 downto 0) => M00_AXI_awcache(3 downto 0),
      M00_AXI_awlen(7 downto 0) => M00_AXI_awlen(7 downto 0),
      M00_AXI_awlock(0) => M00_AXI_awlock(0),
      M00_AXI_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      M00_AXI_awqos(3 downto 0) => M00_AXI_awqos(3 downto 0),
      M00_AXI_awready => M00_AXI_awready,
      M00_AXI_awsize(2 downto 0) => M00_AXI_awsize(2 downto 0),
      M00_AXI_awvalid => M00_AXI_awvalid,
      M00_AXI_bready => M00_AXI_bready,
      M00_AXI_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      M00_AXI_bvalid => M00_AXI_bvalid,
      M00_AXI_rdata(127 downto 0) => M00_AXI_rdata(127 downto 0),
      M00_AXI_rlast => M00_AXI_rlast,
      M00_AXI_rready => M00_AXI_rready,
      M00_AXI_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      M00_AXI_rvalid => M00_AXI_rvalid,
      M00_AXI_wdata(127 downto 0) => M00_AXI_wdata(127 downto 0),
      M00_AXI_wlast => M00_AXI_wlast,
      M00_AXI_wready => M00_AXI_wready,
      M00_AXI_wstrb(15 downto 0) => M00_AXI_wstrb(15 downto 0),
      M00_AXI_wvalid => M00_AXI_wvalid,
      S00_ACLK => S00_ACLK,
      S00_ARESETN => S00_ARESETN,
      S00_AXI_araddr(31 downto 0) => S00_AXI_araddr(31 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      S00_AXI_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      S00_AXI_arlock(0) => S00_AXI_arlock(0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S00_AXI_arqos(3 downto 0),
      S00_AXI_arready => S00_AXI_arready,
      S00_AXI_arregion(3 downto 0) => S00_AXI_arregion(3 downto 0),
      S00_AXI_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      S00_AXI_arvalid => S00_AXI_arvalid,
      S00_AXI_awaddr(31 downto 0) => S00_AXI_awaddr(31 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      S00_AXI_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      S00_AXI_awlock(0) => S00_AXI_awlock(0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S00_AXI_awqos(3 downto 0),
      S00_AXI_awready => S00_AXI_awready,
      S00_AXI_awregion(3 downto 0) => S00_AXI_awregion(3 downto 0),
      S00_AXI_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      S00_AXI_awvalid => S00_AXI_awvalid,
      S00_AXI_bready => S00_AXI_bready,
      S00_AXI_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      S00_AXI_bvalid => S00_AXI_bvalid,
      S00_AXI_rdata(127 downto 0) => S00_AXI_rdata(127 downto 0),
      S00_AXI_rlast => S00_AXI_rlast,
      S00_AXI_rready => S00_AXI_rready,
      S00_AXI_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      S00_AXI_rvalid => S00_AXI_rvalid,
      S00_AXI_wdata(127 downto 0) => S00_AXI_wdata(127 downto 0),
      S00_AXI_wlast => S00_AXI_wlast,
      S00_AXI_wready => S00_AXI_wready,
      S00_AXI_wstrb(15 downto 0) => S00_AXI_wstrb(15 downto 0),
      S00_AXI_wvalid => S00_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic_interconnect_axifull_2_user_slr1_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC;
    S02_ACLK : in STD_LOGIC;
    S02_ARESETN : in STD_LOGIC;
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arready : out STD_LOGIC;
    S02_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC;
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S02_AXI_rlast : out STD_LOGIC;
    S02_AXI_rready : in STD_LOGIC;
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rvalid : out STD_LOGIC
  );
end pfm_dynamic_interconnect_axifull_2_user_slr1_0;

architecture STRUCTURE of pfm_dynamic_interconnect_axifull_2_user_slr1_0 is
  component pfm_dynamic_xbar_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1535 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 1535 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component pfm_dynamic_xbar_1;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 1023 downto 512 );
  signal s01_couplers_to_xbar_RLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s02_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s02_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_ARREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 1535 downto 1024 );
  signal s02_couplers_to_xbar_RLAST : STD_LOGIC;
  signal s02_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC;
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC;
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC;
  signal NLW_xbar_s_axi_awready_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_xbar_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 2 );
  signal NLW_xbar_s_axi_bvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_xbar_s_axi_wready_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 1 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xbar : label is "axi_crossbar_v2_1_27_axi_crossbar,Vivado 2022.1";
begin
m00_couplers: entity work.pfm_dynamic_m00_couplers_imp_1A4N1A0
     port map (
      M00_ACLK => M00_ACLK,
      M00_ARESETN => M00_ARESETN,
      M00_AXI_araddr(63 downto 0) => M00_AXI_araddr(63 downto 0),
      M00_AXI_arburst(1 downto 0) => M00_AXI_arburst(1 downto 0),
      M00_AXI_arcache(3 downto 0) => M00_AXI_arcache(3 downto 0),
      M00_AXI_arlen(7 downto 0) => M00_AXI_arlen(7 downto 0),
      M00_AXI_arlock(0) => M00_AXI_arlock(0),
      M00_AXI_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      M00_AXI_arqos(3 downto 0) => M00_AXI_arqos(3 downto 0),
      M00_AXI_arready => M00_AXI_arready,
      M00_AXI_arsize(2 downto 0) => M00_AXI_arsize(2 downto 0),
      M00_AXI_arvalid => M00_AXI_arvalid,
      M00_AXI_awaddr(63 downto 0) => M00_AXI_awaddr(63 downto 0),
      M00_AXI_awburst(1 downto 0) => M00_AXI_awburst(1 downto 0),
      M00_AXI_awcache(3 downto 0) => M00_AXI_awcache(3 downto 0),
      M00_AXI_awlen(7 downto 0) => M00_AXI_awlen(7 downto 0),
      M00_AXI_awlock(0) => M00_AXI_awlock(0),
      M00_AXI_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      M00_AXI_awqos(3 downto 0) => M00_AXI_awqos(3 downto 0),
      M00_AXI_awready => M00_AXI_awready,
      M00_AXI_awsize(2 downto 0) => M00_AXI_awsize(2 downto 0),
      M00_AXI_awvalid => M00_AXI_awvalid,
      M00_AXI_bready => M00_AXI_bready,
      M00_AXI_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      M00_AXI_bvalid => M00_AXI_bvalid,
      M00_AXI_rdata(127 downto 0) => M00_AXI_rdata(127 downto 0),
      M00_AXI_rlast => M00_AXI_rlast,
      M00_AXI_rready => M00_AXI_rready,
      M00_AXI_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      M00_AXI_rvalid => M00_AXI_rvalid,
      M00_AXI_wdata(127 downto 0) => M00_AXI_wdata(127 downto 0),
      M00_AXI_wlast => M00_AXI_wlast,
      M00_AXI_wready => M00_AXI_wready,
      M00_AXI_wstrb(15 downto 0) => M00_AXI_wstrb(15 downto 0),
      M00_AXI_wvalid => M00_AXI_wvalid,
      S_AXI_araddr(63 downto 0) => xbar_to_m00_couplers_ARADDR(63 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(1 downto 0) => xbar_to_m00_couplers_ARID(1 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID,
      S_AXI_awaddr(63 downto 0) => xbar_to_m00_couplers_AWADDR(63 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(1 downto 0) => xbar_to_m00_couplers_AWID(1 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID,
      S_AXI_bid(1 downto 0) => xbar_to_m00_couplers_BID(1 downto 0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(511 downto 0) => xbar_to_m00_couplers_RDATA(511 downto 0),
      S_AXI_rid(1 downto 0) => xbar_to_m00_couplers_RID(1 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(511 downto 0) => xbar_to_m00_couplers_WDATA(511 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST,
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(63 downto 0) => xbar_to_m00_couplers_WSTRB(63 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID
    );
s00_couplers: entity work.pfm_dynamic_s00_couplers_imp_KLQFC8
     port map (
      M00_ACLK => M00_ACLK,
      M00_ARESETN => M00_ARESETN,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK,
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY,
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK,
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY,
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID,
      M_AXI_rdata(511 downto 0) => s00_couplers_to_xbar_RDATA(511 downto 0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST,
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID,
      M_AXI_wdata(511 downto 0) => s00_couplers_to_xbar_WDATA(511 downto 0),
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY,
      M_AXI_wstrb(63 downto 0) => s00_couplers_to_xbar_WSTRB(63 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S00_AXI_araddr(31 downto 0) => S00_AXI_araddr(31 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      S00_AXI_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      S00_AXI_arlock(0) => S00_AXI_arlock(0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S00_AXI_arqos(3 downto 0),
      S00_AXI_arready => S00_AXI_arready,
      S00_AXI_arregion(3 downto 0) => S00_AXI_arregion(3 downto 0),
      S00_AXI_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      S00_AXI_arvalid => S00_AXI_arvalid,
      S00_AXI_awaddr(31 downto 0) => S00_AXI_awaddr(31 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      S00_AXI_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      S00_AXI_awlock(0) => S00_AXI_awlock(0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S00_AXI_awqos(3 downto 0),
      S00_AXI_awready => S00_AXI_awready,
      S00_AXI_awregion(3 downto 0) => S00_AXI_awregion(3 downto 0),
      S00_AXI_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      S00_AXI_awvalid => S00_AXI_awvalid,
      S00_AXI_bready => S00_AXI_bready,
      S00_AXI_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      S00_AXI_bvalid => S00_AXI_bvalid,
      S00_AXI_rdata(127 downto 0) => S00_AXI_rdata(127 downto 0),
      S00_AXI_rlast => S00_AXI_rlast,
      S00_AXI_rready => S00_AXI_rready,
      S00_AXI_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      S00_AXI_rvalid => S00_AXI_rvalid,
      S00_AXI_wdata(127 downto 0) => S00_AXI_wdata(127 downto 0),
      S00_AXI_wlast => S00_AXI_wlast,
      S00_AXI_wready => S00_AXI_wready,
      S00_AXI_wstrb(15 downto 0) => S00_AXI_wstrb(15 downto 0),
      S00_AXI_wvalid => S00_AXI_wvalid
    );
s01_couplers: entity work.pfm_dynamic_s01_couplers_imp_1N9NPO6
     port map (
      M00_ACLK => M00_ACLK,
      M00_ARESETN => M00_ARESETN,
      M_AXI_araddr(63 downto 0) => s01_couplers_to_xbar_ARADDR(63 downto 0),
      M_AXI_arburst(1 downto 0) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s01_couplers_to_xbar_ARLOCK,
      M_AXI_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s01_couplers_to_xbar_ARREADY,
      M_AXI_arsize(2 downto 0) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s01_couplers_to_xbar_ARVALID,
      M_AXI_rdata(511 downto 0) => s01_couplers_to_xbar_RDATA(1023 downto 512),
      M_AXI_rlast => s01_couplers_to_xbar_RLAST,
      M_AXI_rready => s01_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      M_AXI_rvalid => s01_couplers_to_xbar_RVALID,
      S01_ACLK => S01_ACLK,
      S01_ARESETN => S01_ARESETN,
      S01_AXI_araddr(63 downto 0) => S01_AXI_araddr(63 downto 0),
      S01_AXI_arburst(1 downto 0) => S01_AXI_arburst(1 downto 0),
      S01_AXI_arcache(3 downto 0) => S01_AXI_arcache(3 downto 0),
      S01_AXI_arlen(7 downto 0) => S01_AXI_arlen(7 downto 0),
      S01_AXI_arlock(0) => S01_AXI_arlock(0),
      S01_AXI_arprot(2 downto 0) => S01_AXI_arprot(2 downto 0),
      S01_AXI_arqos(3 downto 0) => S01_AXI_arqos(3 downto 0),
      S01_AXI_arready => S01_AXI_arready,
      S01_AXI_arregion(3 downto 0) => S01_AXI_arregion(3 downto 0),
      S01_AXI_arsize(2 downto 0) => S01_AXI_arsize(2 downto 0),
      S01_AXI_arvalid => S01_AXI_arvalid,
      S01_AXI_rdata(511 downto 0) => S01_AXI_rdata(511 downto 0),
      S01_AXI_rlast => S01_AXI_rlast,
      S01_AXI_rready => S01_AXI_rready,
      S01_AXI_rresp(1 downto 0) => S01_AXI_rresp(1 downto 0),
      S01_AXI_rvalid => S01_AXI_rvalid
    );
s02_couplers: entity work.pfm_dynamic_s02_couplers_imp_1CF9C2D
     port map (
      M00_ACLK => M00_ACLK,
      M00_ARESETN => M00_ARESETN,
      M_AXI_araddr(63 downto 0) => s02_couplers_to_xbar_ARADDR(63 downto 0),
      M_AXI_arburst(1 downto 0) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s02_couplers_to_xbar_ARLOCK,
      M_AXI_arprot(2 downto 0) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s02_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s02_couplers_to_xbar_ARREADY,
      M_AXI_arsize(2 downto 0) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s02_couplers_to_xbar_ARVALID,
      M_AXI_rdata(511 downto 0) => s02_couplers_to_xbar_RDATA(1535 downto 1024),
      M_AXI_rlast => s02_couplers_to_xbar_RLAST,
      M_AXI_rready => s02_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s02_couplers_to_xbar_RRESP(5 downto 4),
      M_AXI_rvalid => s02_couplers_to_xbar_RVALID,
      S01_ACLK => S01_ACLK,
      S01_ARESETN => S01_ARESETN,
      S02_AXI_araddr(63 downto 0) => S02_AXI_araddr(63 downto 0),
      S02_AXI_arburst(1 downto 0) => S02_AXI_arburst(1 downto 0),
      S02_AXI_arcache(3 downto 0) => S02_AXI_arcache(3 downto 0),
      S02_AXI_arlen(7 downto 0) => S02_AXI_arlen(7 downto 0),
      S02_AXI_arlock(0) => S02_AXI_arlock(0),
      S02_AXI_arprot(2 downto 0) => S02_AXI_arprot(2 downto 0),
      S02_AXI_arqos(3 downto 0) => S02_AXI_arqos(3 downto 0),
      S02_AXI_arready => S02_AXI_arready,
      S02_AXI_arregion(3 downto 0) => S02_AXI_arregion(3 downto 0),
      S02_AXI_arsize(2 downto 0) => S02_AXI_arsize(2 downto 0),
      S02_AXI_arvalid => S02_AXI_arvalid,
      S02_AXI_rdata(511 downto 0) => S02_AXI_rdata(511 downto 0),
      S02_AXI_rlast => S02_AXI_rlast,
      S02_AXI_rready => S02_AXI_rready,
      S02_AXI_rresp(1 downto 0) => S02_AXI_rresp(1 downto 0),
      S02_AXI_rvalid => S02_AXI_rvalid
    );
xbar: component pfm_dynamic_xbar_1
     port map (
      aclk => M00_ACLK,
      aresetn => M00_ARESETN,
      m_axi_araddr(63 downto 0) => xbar_to_m00_couplers_ARADDR(63 downto 0),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(1 downto 0) => xbar_to_m00_couplers_ARID(1 downto 0),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK,
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID,
      m_axi_awaddr(63 downto 0) => xbar_to_m00_couplers_AWADDR(63 downto 0),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(1 downto 0) => xbar_to_m00_couplers_AWID(1 downto 0),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK,
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID,
      m_axi_bid(1 downto 0) => xbar_to_m00_couplers_BID(1 downto 0),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(511 downto 0) => xbar_to_m00_couplers_RDATA(511 downto 0),
      m_axi_rid(1 downto 0) => xbar_to_m00_couplers_RID(1 downto 0),
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(511 downto 0) => xbar_to_m00_couplers_WDATA(511 downto 0),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(63 downto 0) => xbar_to_m00_couplers_WSTRB(63 downto 0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID,
      s_axi_araddr(191 downto 128) => s02_couplers_to_xbar_ARADDR(63 downto 0),
      s_axi_araddr(127 downto 64) => s01_couplers_to_xbar_ARADDR(63 downto 0),
      s_axi_araddr(63 downto 32) => B"00000000000000000000000000000000",
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(5 downto 4) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(3 downto 2) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(11 downto 8) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(7 downto 4) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(5 downto 0) => B"000000",
      s_axi_arlen(23 downto 16) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(15 downto 8) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(2) => s02_couplers_to_xbar_ARLOCK,
      s_axi_arlock(1) => s01_couplers_to_xbar_ARLOCK,
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK,
      s_axi_arprot(8 downto 6) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(11 downto 8) => s02_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(7 downto 4) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(2) => s02_couplers_to_xbar_ARREADY,
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY,
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY,
      s_axi_arsize(8 downto 6) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(5 downto 3) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(2) => s02_couplers_to_xbar_ARVALID,
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(191 downto 32) => B"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(5 downto 2) => B"0000",
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(11 downto 4) => B"00000000",
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(5 downto 0) => B"000000",
      s_axi_awlen(23 downto 8) => B"0000000000000000",
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(2 downto 1) => B"00",
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK,
      s_axi_awprot(8 downto 3) => B"000000",
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(11 downto 4) => B"00000000",
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(2 downto 1) => NLW_xbar_s_axi_awready_UNCONNECTED(2 downto 1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY,
      s_axi_awsize(8 downto 3) => B"001101",
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(2 downto 1) => B"00",
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bid(5 downto 0) => NLW_xbar_s_axi_bid_UNCONNECTED(5 downto 0),
      s_axi_bready(2 downto 1) => B"00",
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(5 downto 2) => NLW_xbar_s_axi_bresp_UNCONNECTED(5 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(2 downto 1) => NLW_xbar_s_axi_bvalid_UNCONNECTED(2 downto 1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID,
      s_axi_rdata(1535 downto 1024) => s02_couplers_to_xbar_RDATA(1535 downto 1024),
      s_axi_rdata(1023 downto 512) => s01_couplers_to_xbar_RDATA(1023 downto 512),
      s_axi_rdata(511 downto 0) => s00_couplers_to_xbar_RDATA(511 downto 0),
      s_axi_rid(5 downto 0) => NLW_xbar_s_axi_rid_UNCONNECTED(5 downto 0),
      s_axi_rlast(2) => s02_couplers_to_xbar_RLAST,
      s_axi_rlast(1) => s01_couplers_to_xbar_RLAST,
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST,
      s_axi_rready(2) => s02_couplers_to_xbar_RREADY,
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY,
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(5 downto 4) => s02_couplers_to_xbar_RRESP(5 downto 4),
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(2) => s02_couplers_to_xbar_RVALID,
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID,
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID,
      s_axi_wdata(1535 downto 512) => B"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wdata(511 downto 0) => s00_couplers_to_xbar_WDATA(511 downto 0),
      s_axi_wlast(2 downto 1) => B"00",
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(2 downto 1) => NLW_xbar_s_axi_wready_UNCONNECTED(2 downto 1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY,
      s_axi_wstrb(191 downto 64) => B"11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111",
      s_axi_wstrb(63 downto 0) => s00_couplers_to_xbar_WSTRB(63 downto 0),
      s_axi_wvalid(2 downto 1) => B"00",
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic_interconnect_axilite_user_slr1_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end pfm_dynamic_interconnect_axilite_user_slr1_0;

architecture STRUCTURE of pfm_dynamic_interconnect_axilite_user_slr1_0 is
  component pfm_dynamic_xbar_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component pfm_dynamic_xbar_2;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xbar : label is "axi_crossbar_v2_1_27_axi_crossbar,Vivado 2022.1";
begin
m00_couplers: entity work.pfm_dynamic_m00_couplers_imp_XZDQE6
     port map (
      M00_AXI_araddr(8 downto 0) => M00_AXI_araddr(8 downto 0),
      M00_AXI_arready => M00_AXI_arready,
      M00_AXI_arvalid => M00_AXI_arvalid,
      M00_AXI_awaddr(8 downto 0) => M00_AXI_awaddr(8 downto 0),
      M00_AXI_awready => M00_AXI_awready,
      M00_AXI_awvalid => M00_AXI_awvalid,
      M00_AXI_bready => M00_AXI_bready,
      M00_AXI_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      M00_AXI_bvalid => M00_AXI_bvalid,
      M00_AXI_rdata(31 downto 0) => M00_AXI_rdata(31 downto 0),
      M00_AXI_rready => M00_AXI_rready,
      M00_AXI_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      M00_AXI_rvalid => M00_AXI_rvalid,
      M00_AXI_wdata(31 downto 0) => M00_AXI_wdata(31 downto 0),
      M00_AXI_wready => M00_AXI_wready,
      M00_AXI_wstrb(3 downto 0) => M00_AXI_wstrb(3 downto 0),
      M00_AXI_wvalid => M00_AXI_wvalid,
      S00_ACLK => S00_ACLK,
      S00_ARESETN => S00_ARESETN,
      m_axi_araddr(8 downto 0) => xbar_to_m00_couplers_ARADDR(8 downto 0),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID,
      m_axi_awaddr(8 downto 0) => xbar_to_m00_couplers_AWADDR(8 downto 0),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID,
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY,
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID,
      s_axi_arready => xbar_to_m00_couplers_ARREADY,
      s_axi_awready => xbar_to_m00_couplers_AWREADY,
      s_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      s_axi_bvalid => xbar_to_m00_couplers_BVALID,
      s_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      s_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      s_axi_rvalid => xbar_to_m00_couplers_RVALID,
      s_axi_wready => xbar_to_m00_couplers_WREADY
    );
m01_couplers: entity work.pfm_dynamic_m01_couplers_imp_1RPSKZK
     port map (
      M01_ACLK => M01_ACLK,
      M01_ARESETN => M01_ARESETN,
      M01_AXI_araddr(5 downto 0) => M01_AXI_araddr(5 downto 0),
      M01_AXI_arready => M01_AXI_arready,
      M01_AXI_arvalid => M01_AXI_arvalid,
      M01_AXI_awaddr(5 downto 0) => M01_AXI_awaddr(5 downto 0),
      M01_AXI_awready => M01_AXI_awready,
      M01_AXI_awvalid => M01_AXI_awvalid,
      M01_AXI_bready => M01_AXI_bready,
      M01_AXI_bresp(1 downto 0) => M01_AXI_bresp(1 downto 0),
      M01_AXI_bvalid => M01_AXI_bvalid,
      M01_AXI_rdata(31 downto 0) => M01_AXI_rdata(31 downto 0),
      M01_AXI_rready => M01_AXI_rready,
      M01_AXI_rresp(1 downto 0) => M01_AXI_rresp(1 downto 0),
      M01_AXI_rvalid => M01_AXI_rvalid,
      M01_AXI_wdata(31 downto 0) => M01_AXI_wdata(31 downto 0),
      M01_AXI_wready => M01_AXI_wready,
      M01_AXI_wstrb(3 downto 0) => M01_AXI_wstrb(3 downto 0),
      M01_AXI_wvalid => M01_AXI_wvalid,
      S00_ACLK => S00_ACLK,
      S00_ARESETN => S00_ARESETN,
      S_AXI_araddr(5 downto 0) => xbar_to_m01_couplers_ARADDR(37 downto 32),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID,
      S_AXI_awaddr(5 downto 0) => xbar_to_m01_couplers_AWADDR(37 downto 32),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID,
      S_AXI_bready => xbar_to_m01_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID
    );
s00_couplers: entity work.pfm_dynamic_s00_couplers_imp_15R05HQ
     port map (
      S00_ACLK => S00_ACLK,
      S00_ARESETN => S00_ARESETN,
      S00_AXI_araddr(31 downto 0) => S00_AXI_araddr(31 downto 0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      S00_AXI_arready => S00_AXI_arready,
      S00_AXI_arvalid => S00_AXI_arvalid,
      S00_AXI_awaddr(31 downto 0) => S00_AXI_awaddr(31 downto 0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      S00_AXI_awready => S00_AXI_awready,
      S00_AXI_awvalid => S00_AXI_awvalid,
      S00_AXI_bready => S00_AXI_bready,
      S00_AXI_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      S00_AXI_bvalid => S00_AXI_bvalid,
      S00_AXI_rdata(31 downto 0) => S00_AXI_rdata(31 downto 0),
      S00_AXI_rready => S00_AXI_rready,
      S00_AXI_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      S00_AXI_rvalid => S00_AXI_rvalid,
      S00_AXI_wdata(31 downto 0) => S00_AXI_wdata(31 downto 0),
      S00_AXI_wready => S00_AXI_wready,
      S00_AXI_wstrb(3 downto 0) => S00_AXI_wstrb(3 downto 0),
      S00_AXI_wvalid => S00_AXI_wvalid,
      m_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      m_axi_arvalid => s00_couplers_to_xbar_ARVALID,
      m_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      m_axi_awvalid => s00_couplers_to_xbar_AWVALID,
      m_axi_bready => s00_couplers_to_xbar_BREADY,
      m_axi_rready => s00_couplers_to_xbar_RREADY,
      m_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      m_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      m_axi_wvalid => s00_couplers_to_xbar_WVALID,
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY,
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID,
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY
    );
xbar: component pfm_dynamic_xbar_2
     port map (
      aclk => S00_ACLK,
      aresetn => S00_ARESETN,
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID,
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID,
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID,
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID,
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY,
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY,
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY,
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID,
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY,
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pfm_dynamic is
  port (
    bscanid_en : in STD_LOGIC;
    capture : in STD_LOGIC;
    clkwiz_kernel2_clk_out1 : in STD_LOGIC;
    clkwiz_kernel2_locked : in STD_LOGIC;
    clkwiz_kernel3_clk_out : in STD_LOGIC;
    clkwiz_kernel4_clk_out : in STD_LOGIC;
    clkwiz_kernel5_clk_out : in STD_LOGIC;
    clkwiz_kernel6_clk_out : in STD_LOGIC;
    clkwiz_kernel_clk_out1 : in STD_LOGIC;
    clkwiz_kernel_locked : in STD_LOGIC;
    clkwiz_sysclks_clk_out2 : in STD_LOGIC;
    clkwiz_sysclks_locked : in STD_LOGIC;
    drck : in STD_LOGIC;
    interconnect_aximm_ddrmem2_M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aximm_ddrmem2_M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_arready : in STD_LOGIC;
    interconnect_aximm_ddrmem2_M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_arvalid : out STD_LOGIC;
    interconnect_aximm_ddrmem2_M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aximm_ddrmem2_M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_awready : in STD_LOGIC;
    interconnect_aximm_ddrmem2_M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_awvalid : out STD_LOGIC;
    interconnect_aximm_ddrmem2_M00_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_bready : out STD_LOGIC;
    interconnect_aximm_ddrmem2_M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_bvalid : in STD_LOGIC;
    interconnect_aximm_ddrmem2_M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_rlast : in STD_LOGIC;
    interconnect_aximm_ddrmem2_M00_AXI_rready : out STD_LOGIC;
    interconnect_aximm_ddrmem2_M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_rvalid : in STD_LOGIC;
    interconnect_aximm_ddrmem2_M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_wlast : out STD_LOGIC;
    interconnect_aximm_ddrmem2_M00_AXI_wready : in STD_LOGIC;
    interconnect_aximm_ddrmem2_M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    interconnect_aximm_ddrmem2_M00_AXI_wvalid : out STD_LOGIC;
    interconnect_aximm_ddrmem3_M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aximm_ddrmem3_M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_arready : in STD_LOGIC;
    interconnect_aximm_ddrmem3_M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_arvalid : out STD_LOGIC;
    interconnect_aximm_ddrmem3_M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aximm_ddrmem3_M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_awready : in STD_LOGIC;
    interconnect_aximm_ddrmem3_M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_awvalid : out STD_LOGIC;
    interconnect_aximm_ddrmem3_M00_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_bready : out STD_LOGIC;
    interconnect_aximm_ddrmem3_M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_bvalid : in STD_LOGIC;
    interconnect_aximm_ddrmem3_M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_rlast : in STD_LOGIC;
    interconnect_aximm_ddrmem3_M00_AXI_rready : out STD_LOGIC;
    interconnect_aximm_ddrmem3_M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_rvalid : in STD_LOGIC;
    interconnect_aximm_ddrmem3_M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_wlast : out STD_LOGIC;
    interconnect_aximm_ddrmem3_M00_AXI_wready : in STD_LOGIC;
    interconnect_aximm_ddrmem3_M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    interconnect_aximm_ddrmem3_M00_AXI_wvalid : out STD_LOGIC;
    interconnect_aximm_ddrmem4_M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aximm_ddrmem4_M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_arready : in STD_LOGIC;
    interconnect_aximm_ddrmem4_M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_arvalid : out STD_LOGIC;
    interconnect_aximm_ddrmem4_M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aximm_ddrmem4_M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_awready : in STD_LOGIC;
    interconnect_aximm_ddrmem4_M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_awvalid : out STD_LOGIC;
    interconnect_aximm_ddrmem4_M00_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_bready : out STD_LOGIC;
    interconnect_aximm_ddrmem4_M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_bvalid : in STD_LOGIC;
    interconnect_aximm_ddrmem4_M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_rlast : in STD_LOGIC;
    interconnect_aximm_ddrmem4_M00_AXI_rready : out STD_LOGIC;
    interconnect_aximm_ddrmem4_M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_rvalid : in STD_LOGIC;
    interconnect_aximm_ddrmem4_M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_wlast : out STD_LOGIC;
    interconnect_aximm_ddrmem4_M00_AXI_wready : in STD_LOGIC;
    interconnect_aximm_ddrmem4_M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    interconnect_aximm_ddrmem4_M00_AXI_wvalid : out STD_LOGIC;
    interconnect_aximm_ddrmem5_M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aximm_ddrmem5_M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_arready : in STD_LOGIC;
    interconnect_aximm_ddrmem5_M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_arvalid : out STD_LOGIC;
    interconnect_aximm_ddrmem5_M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aximm_ddrmem5_M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_awready : in STD_LOGIC;
    interconnect_aximm_ddrmem5_M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_awvalid : out STD_LOGIC;
    interconnect_aximm_ddrmem5_M00_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_bready : out STD_LOGIC;
    interconnect_aximm_ddrmem5_M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_bvalid : in STD_LOGIC;
    interconnect_aximm_ddrmem5_M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_rlast : in STD_LOGIC;
    interconnect_aximm_ddrmem5_M00_AXI_rready : out STD_LOGIC;
    interconnect_aximm_ddrmem5_M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_rvalid : in STD_LOGIC;
    interconnect_aximm_ddrmem5_M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_wlast : out STD_LOGIC;
    interconnect_aximm_ddrmem5_M00_AXI_wready : in STD_LOGIC;
    interconnect_aximm_ddrmem5_M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    interconnect_aximm_ddrmem5_M00_AXI_wvalid : out STD_LOGIC;
    pr_reset_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    regslice_control_userpf_M_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    regslice_control_userpf_M_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    regslice_control_userpf_M_AXI_arready : out STD_LOGIC;
    regslice_control_userpf_M_AXI_arvalid : in STD_LOGIC;
    regslice_control_userpf_M_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    regslice_control_userpf_M_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    regslice_control_userpf_M_AXI_awready : out STD_LOGIC;
    regslice_control_userpf_M_AXI_awvalid : in STD_LOGIC;
    regslice_control_userpf_M_AXI_bready : in STD_LOGIC;
    regslice_control_userpf_M_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    regslice_control_userpf_M_AXI_bvalid : out STD_LOGIC;
    regslice_control_userpf_M_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    regslice_control_userpf_M_AXI_rready : in STD_LOGIC;
    regslice_control_userpf_M_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    regslice_control_userpf_M_AXI_rvalid : out STD_LOGIC;
    regslice_control_userpf_M_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    regslice_control_userpf_M_AXI_wready : out STD_LOGIC;
    regslice_control_userpf_M_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regslice_control_userpf_M_AXI_wvalid : in STD_LOGIC;
    regslice_data_hpm0fpd_M_AXI1_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    regslice_data_hpm0fpd_M_AXI1_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_arready : out STD_LOGIC;
    regslice_data_hpm0fpd_M_AXI1_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_arvalid : in STD_LOGIC;
    regslice_data_hpm0fpd_M_AXI1_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    regslice_data_hpm0fpd_M_AXI1_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_awready : out STD_LOGIC;
    regslice_data_hpm0fpd_M_AXI1_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_awvalid : in STD_LOGIC;
    regslice_data_hpm0fpd_M_AXI1_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_bready : in STD_LOGIC;
    regslice_data_hpm0fpd_M_AXI1_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_bvalid : out STD_LOGIC;
    regslice_data_hpm0fpd_M_AXI1_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_rlast : out STD_LOGIC;
    regslice_data_hpm0fpd_M_AXI1_rready : in STD_LOGIC;
    regslice_data_hpm0fpd_M_AXI1_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_rvalid : out STD_LOGIC;
    regslice_data_hpm0fpd_M_AXI1_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_wlast : in STD_LOGIC;
    regslice_data_hpm0fpd_M_AXI1_wready : out STD_LOGIC;
    regslice_data_hpm0fpd_M_AXI1_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regslice_data_hpm0fpd_M_AXI1_wvalid : in STD_LOGIC;
    reset : in STD_LOGIC;
    runtest : in STD_LOGIC;
    sel : in STD_LOGIC;
    shift : in STD_LOGIC;
    tck : in STD_LOGIC;
    tdi : in STD_LOGIC;
    tdo : out STD_LOGIC;
    tms : in STD_LOGIC;
    update : in STD_LOGIC;
    xlconcat_interrupt_dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pfm_dynamic : entity is true;
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of pfm_dynamic : entity is "pfm_dynamic.hwdef";
end pfm_dynamic;

architecture STRUCTURE of pfm_dynamic is
  component pfm_dynamic_axi_gpio_null_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component pfm_dynamic_axi_gpio_null_0;
  component pfm_dynamic_axi_mmu_2_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_axi_mmu_2_0;
  component pfm_dynamic_axi_mmu_3_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_axi_mmu_3_0;
  component pfm_dynamic_axi_mmu_4_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_axi_mmu_4_0;
  component pfm_dynamic_axi_mmu_5_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_axi_mmu_5_0;
  component pfm_dynamic_axi_register_slice_hpm0fpd_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_axi_register_slice_hpm0fpd_0;
  component pfm_dynamic_axi_vip_2_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_axi_vip_2_0;
  component pfm_dynamic_axi_vip_3_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_axi_vip_3_0;
  component pfm_dynamic_axi_vip_4_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_axi_vip_4_0;
  component pfm_dynamic_axi_vip_5_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_axi_vip_5_0;
  component pfm_dynamic_axi_vip_ctrl_userpf_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_axi_vip_ctrl_userpf_0;
  component pfm_dynamic_axi_vip_hpm0fpd_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component pfm_dynamic_axi_vip_hpm0fpd_0;
  component pfm_dynamic_debug_bridge_xsdbm_0 is
  port (
    clk : in STD_LOGIC;
    S_BSCAN_bscanid_en : in STD_LOGIC;
    S_BSCAN_capture : in STD_LOGIC;
    S_BSCAN_drck : in STD_LOGIC;
    S_BSCAN_reset : in STD_LOGIC;
    S_BSCAN_runtest : in STD_LOGIC;
    S_BSCAN_sel : in STD_LOGIC;
    S_BSCAN_shift : in STD_LOGIC;
    S_BSCAN_tck : in STD_LOGIC;
    S_BSCAN_tdi : in STD_LOGIC;
    S_BSCAN_tdo : out STD_LOGIC;
    S_BSCAN_tms : in STD_LOGIC;
    S_BSCAN_update : in STD_LOGIC
  );
  end component pfm_dynamic_debug_bridge_xsdbm_0;
  component pfm_dynamic_digitcaps_accel_1_0 is
  port (
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_gmem0_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem0_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem0_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem0_AWVALID : out STD_LOGIC;
    m_axi_gmem0_AWREADY : in STD_LOGIC;
    m_axi_gmem0_WDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_gmem0_WSTRB : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem0_WLAST : out STD_LOGIC;
    m_axi_gmem0_WVALID : out STD_LOGIC;
    m_axi_gmem0_WREADY : in STD_LOGIC;
    m_axi_gmem0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem0_BVALID : in STD_LOGIC;
    m_axi_gmem0_BREADY : out STD_LOGIC;
    m_axi_gmem0_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem0_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem0_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem0_ARVALID : out STD_LOGIC;
    m_axi_gmem0_ARREADY : in STD_LOGIC;
    m_axi_gmem0_RDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_gmem0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem0_RLAST : in STD_LOGIC;
    m_axi_gmem0_RVALID : in STD_LOGIC;
    m_axi_gmem0_RREADY : out STD_LOGIC;
    m_axi_gmem1_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem1_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem1_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem1_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem1_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem1_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem1_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem1_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem1_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem1_AWVALID : out STD_LOGIC;
    m_axi_gmem1_AWREADY : in STD_LOGIC;
    m_axi_gmem1_WDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_gmem1_WSTRB : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem1_WLAST : out STD_LOGIC;
    m_axi_gmem1_WVALID : out STD_LOGIC;
    m_axi_gmem1_WREADY : in STD_LOGIC;
    m_axi_gmem1_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem1_BVALID : in STD_LOGIC;
    m_axi_gmem1_BREADY : out STD_LOGIC;
    m_axi_gmem1_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem1_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem1_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem1_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem1_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem1_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem1_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem1_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem1_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem1_ARVALID : out STD_LOGIC;
    m_axi_gmem1_ARREADY : in STD_LOGIC;
    m_axi_gmem1_RDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_gmem1_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem1_RLAST : in STD_LOGIC;
    m_axi_gmem1_RVALID : in STD_LOGIC;
    m_axi_gmem1_RREADY : out STD_LOGIC;
    m_axi_gmem2_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem2_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem2_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem2_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem2_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem2_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem2_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem2_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem2_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem2_AWVALID : out STD_LOGIC;
    m_axi_gmem2_AWREADY : in STD_LOGIC;
    m_axi_gmem2_WDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_gmem2_WSTRB : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem2_WLAST : out STD_LOGIC;
    m_axi_gmem2_WVALID : out STD_LOGIC;
    m_axi_gmem2_WREADY : in STD_LOGIC;
    m_axi_gmem2_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem2_BVALID : in STD_LOGIC;
    m_axi_gmem2_BREADY : out STD_LOGIC;
    m_axi_gmem2_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem2_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem2_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem2_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem2_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem2_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem2_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem2_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem2_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem2_ARVALID : out STD_LOGIC;
    m_axi_gmem2_ARREADY : in STD_LOGIC;
    m_axi_gmem2_RDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_gmem2_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem2_RLAST : in STD_LOGIC;
    m_axi_gmem2_RVALID : in STD_LOGIC;
    m_axi_gmem2_RREADY : out STD_LOGIC
  );
  end component pfm_dynamic_digitcaps_accel_1_0;
  signal \<const0>\ : STD_LOGIC;
  signal ARESETN_1 : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI1_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_interconnect_0_M00_AXI1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M00_AXI1_ARLOCK : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI1_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI1_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI1_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_interconnect_0_M00_AXI1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M00_AXI1_AWLOCK : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI1_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI1_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI1_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI1_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI1_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_interconnect_0_M00_AXI1_RLAST : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI1_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI1_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI1_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_interconnect_0_M00_AXI1_WLAST : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI1_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI1_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_M00_AXI1_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARLOCK : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWLOCK : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_interconnect_0_M00_AXI_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_M00_AXI_RLAST : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_interconnect_0_M00_AXI_WLAST : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARLOCK : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWLOCK : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_interconnect_1_M00_AXI_RLAST : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_interconnect_1_M00_AXI_WLAST : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_interconnect_1_M00_AXI_WVALID : STD_LOGIC;
  signal axi_vip_1_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_1_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_1_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_1_M_AXI_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_vip_1_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vip_1_M_AXI_ARLOCK : STD_LOGIC;
  signal axi_vip_1_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_1_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_1_M_AXI_ARREADY : STD_LOGIC;
  signal axi_vip_1_M_AXI_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_1_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_1_M_AXI_ARVALID : STD_LOGIC;
  signal axi_vip_1_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_1_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_1_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_1_M_AXI_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_vip_1_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vip_1_M_AXI_AWLOCK : STD_LOGIC;
  signal axi_vip_1_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_1_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_1_M_AXI_AWREADY : STD_LOGIC;
  signal axi_vip_1_M_AXI_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_1_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_1_M_AXI_AWVALID : STD_LOGIC;
  signal axi_vip_1_M_AXI_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_vip_1_M_AXI_BREADY : STD_LOGIC;
  signal axi_vip_1_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_1_M_AXI_BVALID : STD_LOGIC;
  signal axi_vip_1_M_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_vip_1_M_AXI_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_vip_1_M_AXI_RLAST : STD_LOGIC;
  signal axi_vip_1_M_AXI_RREADY : STD_LOGIC;
  signal axi_vip_1_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_1_M_AXI_RVALID : STD_LOGIC;
  signal axi_vip_1_M_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_vip_1_M_AXI_WLAST : STD_LOGIC;
  signal axi_vip_1_M_AXI_WREADY : STD_LOGIC;
  signal axi_vip_1_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_vip_1_M_AXI_WVALID : STD_LOGIC;
  signal axi_vip_2_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_2_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_2_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_2_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vip_2_M_AXI_ARLOCK : STD_LOGIC;
  signal axi_vip_2_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_2_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_2_M_AXI_ARREADY : STD_LOGIC;
  signal axi_vip_2_M_AXI_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_2_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_2_M_AXI_ARVALID : STD_LOGIC;
  signal axi_vip_2_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_2_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_2_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_2_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vip_2_M_AXI_AWLOCK : STD_LOGIC;
  signal axi_vip_2_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_2_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_2_M_AXI_AWREADY : STD_LOGIC;
  signal axi_vip_2_M_AXI_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_2_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_2_M_AXI_AWVALID : STD_LOGIC;
  signal axi_vip_2_M_AXI_BREADY : STD_LOGIC;
  signal axi_vip_2_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_2_M_AXI_BVALID : STD_LOGIC;
  signal axi_vip_2_M_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_vip_2_M_AXI_RLAST : STD_LOGIC;
  signal axi_vip_2_M_AXI_RREADY : STD_LOGIC;
  signal axi_vip_2_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_2_M_AXI_RVALID : STD_LOGIC;
  signal axi_vip_2_M_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_vip_2_M_AXI_WLAST : STD_LOGIC;
  signal axi_vip_2_M_AXI_WREADY : STD_LOGIC;
  signal axi_vip_2_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_vip_2_M_AXI_WVALID : STD_LOGIC;
  signal axi_vip_3_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_3_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_3_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_3_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vip_3_M_AXI_ARLOCK : STD_LOGIC;
  signal axi_vip_3_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_3_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_3_M_AXI_ARREADY : STD_LOGIC;
  signal axi_vip_3_M_AXI_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_3_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_3_M_AXI_ARVALID : STD_LOGIC;
  signal axi_vip_3_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_3_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_3_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_3_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vip_3_M_AXI_AWLOCK : STD_LOGIC;
  signal axi_vip_3_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_3_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_3_M_AXI_AWREADY : STD_LOGIC;
  signal axi_vip_3_M_AXI_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_3_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_3_M_AXI_AWVALID : STD_LOGIC;
  signal axi_vip_3_M_AXI_BREADY : STD_LOGIC;
  signal axi_vip_3_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_3_M_AXI_BVALID : STD_LOGIC;
  signal axi_vip_3_M_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_vip_3_M_AXI_RLAST : STD_LOGIC;
  signal axi_vip_3_M_AXI_RREADY : STD_LOGIC;
  signal axi_vip_3_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_3_M_AXI_RVALID : STD_LOGIC;
  signal axi_vip_3_M_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_vip_3_M_AXI_WLAST : STD_LOGIC;
  signal axi_vip_3_M_AXI_WREADY : STD_LOGIC;
  signal axi_vip_3_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_vip_3_M_AXI_WVALID : STD_LOGIC;
  signal axi_vip_4_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_4_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_4_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_4_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vip_4_M_AXI_ARLOCK : STD_LOGIC;
  signal axi_vip_4_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_4_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_4_M_AXI_ARREADY : STD_LOGIC;
  signal axi_vip_4_M_AXI_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_4_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_4_M_AXI_ARVALID : STD_LOGIC;
  signal axi_vip_4_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_4_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_4_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_4_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vip_4_M_AXI_AWLOCK : STD_LOGIC;
  signal axi_vip_4_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_4_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_4_M_AXI_AWREADY : STD_LOGIC;
  signal axi_vip_4_M_AXI_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_4_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_4_M_AXI_AWVALID : STD_LOGIC;
  signal axi_vip_4_M_AXI_BREADY : STD_LOGIC;
  signal axi_vip_4_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_4_M_AXI_BVALID : STD_LOGIC;
  signal axi_vip_4_M_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_vip_4_M_AXI_RLAST : STD_LOGIC;
  signal axi_vip_4_M_AXI_RREADY : STD_LOGIC;
  signal axi_vip_4_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_4_M_AXI_RVALID : STD_LOGIC;
  signal axi_vip_4_M_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_vip_4_M_AXI_WLAST : STD_LOGIC;
  signal axi_vip_4_M_AXI_WREADY : STD_LOGIC;
  signal axi_vip_4_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_vip_4_M_AXI_WVALID : STD_LOGIC;
  signal axi_vip_5_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_5_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_5_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_5_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vip_5_M_AXI_ARLOCK : STD_LOGIC;
  signal axi_vip_5_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_5_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_5_M_AXI_ARREADY : STD_LOGIC;
  signal axi_vip_5_M_AXI_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_5_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_5_M_AXI_ARVALID : STD_LOGIC;
  signal axi_vip_5_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_5_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_5_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_5_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vip_5_M_AXI_AWLOCK : STD_LOGIC;
  signal axi_vip_5_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_5_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_5_M_AXI_AWREADY : STD_LOGIC;
  signal axi_vip_5_M_AXI_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_5_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_5_M_AXI_AWVALID : STD_LOGIC;
  signal axi_vip_5_M_AXI_BREADY : STD_LOGIC;
  signal axi_vip_5_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_5_M_AXI_BVALID : STD_LOGIC;
  signal axi_vip_5_M_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_vip_5_M_AXI_RLAST : STD_LOGIC;
  signal axi_vip_5_M_AXI_RREADY : STD_LOGIC;
  signal axi_vip_5_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_5_M_AXI_RVALID : STD_LOGIC;
  signal axi_vip_5_M_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_vip_5_M_AXI_WLAST : STD_LOGIC;
  signal axi_vip_5_M_AXI_WREADY : STD_LOGIC;
  signal axi_vip_5_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_vip_5_M_AXI_WVALID : STD_LOGIC;
  signal axi_vip_ctrl_userpf_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_ctrl_userpf_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_ctrl_userpf_M_AXI_ARREADY : STD_LOGIC;
  signal axi_vip_ctrl_userpf_M_AXI_ARVALID : STD_LOGIC;
  signal axi_vip_ctrl_userpf_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_ctrl_userpf_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_ctrl_userpf_M_AXI_AWREADY : STD_LOGIC;
  signal axi_vip_ctrl_userpf_M_AXI_AWVALID : STD_LOGIC;
  signal axi_vip_ctrl_userpf_M_AXI_BREADY : STD_LOGIC;
  signal axi_vip_ctrl_userpf_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_ctrl_userpf_M_AXI_BVALID : STD_LOGIC;
  signal axi_vip_ctrl_userpf_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_ctrl_userpf_M_AXI_RREADY : STD_LOGIC;
  signal axi_vip_ctrl_userpf_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_ctrl_userpf_M_AXI_RVALID : STD_LOGIC;
  signal axi_vip_ctrl_userpf_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_ctrl_userpf_M_AXI_WREADY : STD_LOGIC;
  signal axi_vip_ctrl_userpf_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_ctrl_userpf_M_AXI_WVALID : STD_LOGIC;
  signal digitcaps_accel_1_interrupt : STD_LOGIC;
  signal digitcaps_accel_1_m_axi_gmem0_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem0_ARREADY : STD_LOGIC;
  signal digitcaps_accel_1_m_axi_gmem0_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem0_ARVALID : STD_LOGIC;
  signal digitcaps_accel_1_m_axi_gmem0_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem0_RLAST : STD_LOGIC;
  signal digitcaps_accel_1_m_axi_gmem0_RREADY : STD_LOGIC;
  signal digitcaps_accel_1_m_axi_gmem0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem0_RVALID : STD_LOGIC;
  signal digitcaps_accel_1_m_axi_gmem1_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem1_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem1_ARREADY : STD_LOGIC;
  signal digitcaps_accel_1_m_axi_gmem1_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem1_ARVALID : STD_LOGIC;
  signal digitcaps_accel_1_m_axi_gmem1_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem1_RLAST : STD_LOGIC;
  signal digitcaps_accel_1_m_axi_gmem1_RREADY : STD_LOGIC;
  signal digitcaps_accel_1_m_axi_gmem1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem1_RVALID : STD_LOGIC;
  signal digitcaps_accel_1_m_axi_gmem2_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem2_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem2_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem2_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem2_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem2_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem2_AWREADY : STD_LOGIC;
  signal digitcaps_accel_1_m_axi_gmem2_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem2_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem2_AWVALID : STD_LOGIC;
  signal digitcaps_accel_1_m_axi_gmem2_BREADY : STD_LOGIC;
  signal digitcaps_accel_1_m_axi_gmem2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem2_BVALID : STD_LOGIC;
  signal digitcaps_accel_1_m_axi_gmem2_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem2_WLAST : STD_LOGIC;
  signal digitcaps_accel_1_m_axi_gmem2_WREADY : STD_LOGIC;
  signal digitcaps_accel_1_m_axi_gmem2_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal digitcaps_accel_1_m_axi_gmem2_WVALID : STD_LOGIC;
  signal expanded_resets_interconnect_aresetn1 : STD_LOGIC;
  signal interconnect_axifull_1_user_slr1_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_axifull_1_user_slr1_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_axifull_1_user_slr1_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_axifull_1_user_slr1_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal interconnect_axifull_1_user_slr1_M00_AXI_ARLOCK : STD_LOGIC;
  signal interconnect_axifull_1_user_slr1_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_axifull_1_user_slr1_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_axifull_1_user_slr1_M00_AXI_ARREADY : STD_LOGIC;
  signal interconnect_axifull_1_user_slr1_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_axifull_1_user_slr1_M00_AXI_ARVALID : STD_LOGIC;
  signal interconnect_axifull_1_user_slr1_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_axifull_1_user_slr1_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_axifull_1_user_slr1_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_axifull_1_user_slr1_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal interconnect_axifull_1_user_slr1_M00_AXI_AWLOCK : STD_LOGIC;
  signal interconnect_axifull_1_user_slr1_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_axifull_1_user_slr1_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_axifull_1_user_slr1_M00_AXI_AWREADY : STD_LOGIC;
  signal interconnect_axifull_1_user_slr1_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_axifull_1_user_slr1_M00_AXI_AWVALID : STD_LOGIC;
  signal interconnect_axifull_1_user_slr1_M00_AXI_BREADY : STD_LOGIC;
  signal interconnect_axifull_1_user_slr1_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_axifull_1_user_slr1_M00_AXI_BVALID : STD_LOGIC;
  signal interconnect_axifull_1_user_slr1_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal interconnect_axifull_1_user_slr1_M00_AXI_RLAST : STD_LOGIC;
  signal interconnect_axifull_1_user_slr1_M00_AXI_RREADY : STD_LOGIC;
  signal interconnect_axifull_1_user_slr1_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_axifull_1_user_slr1_M00_AXI_RVALID : STD_LOGIC;
  signal interconnect_axifull_1_user_slr1_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal interconnect_axifull_1_user_slr1_M00_AXI_WLAST : STD_LOGIC;
  signal interconnect_axifull_1_user_slr1_M00_AXI_WREADY : STD_LOGIC;
  signal interconnect_axifull_1_user_slr1_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal interconnect_axifull_1_user_slr1_M00_AXI_WVALID : STD_LOGIC;
  signal interconnect_axifull_2_user_slr1_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal interconnect_axifull_2_user_slr1_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_axifull_2_user_slr1_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_axifull_2_user_slr1_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal interconnect_axifull_2_user_slr1_M00_AXI_ARLOCK : STD_LOGIC;
  signal interconnect_axifull_2_user_slr1_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_axifull_2_user_slr1_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_axifull_2_user_slr1_M00_AXI_ARREADY : STD_LOGIC;
  signal interconnect_axifull_2_user_slr1_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_axifull_2_user_slr1_M00_AXI_ARVALID : STD_LOGIC;
  signal interconnect_axifull_2_user_slr1_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal interconnect_axifull_2_user_slr1_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_axifull_2_user_slr1_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_axifull_2_user_slr1_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal interconnect_axifull_2_user_slr1_M00_AXI_AWLOCK : STD_LOGIC;
  signal interconnect_axifull_2_user_slr1_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_axifull_2_user_slr1_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_axifull_2_user_slr1_M00_AXI_AWREADY : STD_LOGIC;
  signal interconnect_axifull_2_user_slr1_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_axifull_2_user_slr1_M00_AXI_AWVALID : STD_LOGIC;
  signal interconnect_axifull_2_user_slr1_M00_AXI_BREADY : STD_LOGIC;
  signal interconnect_axifull_2_user_slr1_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_axifull_2_user_slr1_M00_AXI_BVALID : STD_LOGIC;
  signal interconnect_axifull_2_user_slr1_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal interconnect_axifull_2_user_slr1_M00_AXI_RLAST : STD_LOGIC;
  signal interconnect_axifull_2_user_slr1_M00_AXI_RREADY : STD_LOGIC;
  signal interconnect_axifull_2_user_slr1_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_axifull_2_user_slr1_M00_AXI_RVALID : STD_LOGIC;
  signal interconnect_axifull_2_user_slr1_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal interconnect_axifull_2_user_slr1_M00_AXI_WLAST : STD_LOGIC;
  signal interconnect_axifull_2_user_slr1_M00_AXI_WREADY : STD_LOGIC;
  signal interconnect_axifull_2_user_slr1_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal interconnect_axifull_2_user_slr1_M00_AXI_WVALID : STD_LOGIC;
  signal interconnect_axilite_user_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal interconnect_axilite_user_M00_AXI_ARREADY : STD_LOGIC;
  signal interconnect_axilite_user_M00_AXI_ARVALID : STD_LOGIC;
  signal interconnect_axilite_user_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal interconnect_axilite_user_M00_AXI_AWREADY : STD_LOGIC;
  signal interconnect_axilite_user_M00_AXI_AWVALID : STD_LOGIC;
  signal interconnect_axilite_user_M00_AXI_BREADY : STD_LOGIC;
  signal interconnect_axilite_user_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_axilite_user_M00_AXI_BVALID : STD_LOGIC;
  signal interconnect_axilite_user_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_axilite_user_M00_AXI_RREADY : STD_LOGIC;
  signal interconnect_axilite_user_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_axilite_user_M00_AXI_RVALID : STD_LOGIC;
  signal interconnect_axilite_user_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_axilite_user_M00_AXI_WREADY : STD_LOGIC;
  signal interconnect_axilite_user_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_axilite_user_M00_AXI_WVALID : STD_LOGIC;
  signal interconnect_axilite_user_slr1_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal interconnect_axilite_user_slr1_M01_AXI_ARREADY : STD_LOGIC;
  signal interconnect_axilite_user_slr1_M01_AXI_ARVALID : STD_LOGIC;
  signal interconnect_axilite_user_slr1_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal interconnect_axilite_user_slr1_M01_AXI_AWREADY : STD_LOGIC;
  signal interconnect_axilite_user_slr1_M01_AXI_AWVALID : STD_LOGIC;
  signal interconnect_axilite_user_slr1_M01_AXI_BREADY : STD_LOGIC;
  signal interconnect_axilite_user_slr1_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_axilite_user_slr1_M01_AXI_BVALID : STD_LOGIC;
  signal interconnect_axilite_user_slr1_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_axilite_user_slr1_M01_AXI_RREADY : STD_LOGIC;
  signal interconnect_axilite_user_slr1_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_axilite_user_slr1_M01_AXI_RVALID : STD_LOGIC;
  signal interconnect_axilite_user_slr1_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_axilite_user_slr1_M01_AXI_WREADY : STD_LOGIC;
  signal interconnect_axilite_user_slr1_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_axilite_user_slr1_M01_AXI_WVALID : STD_LOGIC;
  signal reset_controllers_interconnect_aresetn : STD_LOGIC;
  signal reset_controllers_peripheral_aresetn : STD_LOGIC;
  signal \^xlconcat_interrupt_dout\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_gpio_null_gpio_io_o_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axi_gpio_null_gpio_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axi_mmu_2_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_axi_mmu_2_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_axi_mmu_3_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal NLW_axi_mmu_3_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal NLW_axi_mmu_3_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_axi_mmu_3_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_axi_mmu_4_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal NLW_axi_mmu_4_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal NLW_axi_mmu_4_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_axi_mmu_4_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_axi_mmu_5_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_axi_mmu_5_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_axi_register_slice_hpm0fpd_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_register_slice_hpm0fpd_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_register_slice_hpm0fpd_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_register_slice_hpm0fpd_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_register_slice_hpm0fpd_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_register_slice_hpm0fpd_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_register_slice_hpm0fpd_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axi_register_slice_hpm0fpd_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axi_register_slice_hpm0fpd_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_register_slice_hpm0fpd_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_axi_register_slice_hpm0fpd_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_axi_register_slice_hpm0fpd_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_register_slice_hpm0fpd_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_register_slice_hpm0fpd_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_register_slice_hpm0fpd_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_register_slice_hpm0fpd_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_register_slice_hpm0fpd_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axi_register_slice_hpm0fpd_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axi_register_slice_hpm0fpd_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_register_slice_hpm0fpd_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_axi_register_slice_hpm0fpd_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_axi_register_slice_hpm0fpd_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_register_slice_hpm0fpd_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_register_slice_hpm0fpd_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_register_slice_hpm0fpd_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_register_slice_hpm0fpd_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_register_slice_hpm0fpd_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_axi_register_slice_hpm0fpd_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem0_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_digitcaps_accel_1_m_axi_gmem0_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_digitcaps_accel_1_m_axi_gmem0_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_digitcaps_accel_1_m_axi_gmem0_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_digitcaps_accel_1_m_axi_gmem1_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_digitcaps_accel_1_m_axi_gmem1_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_digitcaps_accel_1_m_axi_gmem1_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_digitcaps_accel_1_m_axi_gmem1_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_digitcaps_accel_1_m_axi_gmem2_ARVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_digitcaps_accel_1_m_axi_gmem2_RREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_digitcaps_accel_1_m_axi_gmem0_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem0_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem0_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem0_AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem0_AWLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem0_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem0_AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem0_AWREGION_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem0_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem0_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem0_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem1_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem1_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem1_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem1_AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem1_AWLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem1_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem1_AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem1_AWREGION_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem1_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem1_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem1_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem2_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem2_ARBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem2_ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem2_ARLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem2_ARLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem2_ARPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem2_ARQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem2_ARREGION_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_digitcaps_accel_1_m_axi_gmem2_ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axi_gpio_null : label is "axi_gpio,Vivado 2022.1";
  attribute DPA_TRACE_MASTER : string;
  attribute DPA_TRACE_MASTER of axi_interconnect_hpm0fpd : label is "true";
  attribute X_CORE_INFO of axi_mmu_2 : label is "axi_mmu_v2_1_24_top,Vivado 2022.1";
  attribute X_CORE_INFO of axi_mmu_3 : label is "axi_mmu_v2_1_24_top,Vivado 2022.1";
  attribute X_CORE_INFO of axi_mmu_4 : label is "axi_mmu_v2_1_24_top,Vivado 2022.1";
  attribute X_CORE_INFO of axi_mmu_5 : label is "axi_mmu_v2_1_24_top,Vivado 2022.1";
  attribute X_CORE_INFO of axi_register_slice_hpm0fpd : label is "axi_register_slice_v2_1_26_axi_register_slice,Vivado 2022.1";
  attribute X_CORE_INFO of axi_vip_2 : label is "axi_vip_v1_1_12_top,Vivado 2022.1";
  attribute X_CORE_INFO of axi_vip_3 : label is "axi_vip_v1_1_12_top,Vivado 2022.1";
  attribute X_CORE_INFO of axi_vip_4 : label is "axi_vip_v1_1_12_top,Vivado 2022.1";
  attribute X_CORE_INFO of axi_vip_5 : label is "axi_vip_v1_1_12_top,Vivado 2022.1";
  attribute X_CORE_INFO of axi_vip_ctrl_userpf : label is "axi_vip_v1_1_12_top,Vivado 2022.1";
  attribute X_CORE_INFO of axi_vip_hpm0fpd : label is "axi_vip_v1_1_12_top,Vivado 2022.1";
  attribute X_CORE_INFO of debug_bridge_xsdbm : label is "bd_ebbe,Vivado 2022.1";
  attribute X_CORE_INFO of digitcaps_accel_1 : label is "digitcaps_accel,Vivado 2022.1";
  attribute \ap_clk.FREQ_HZ\ : string;
  attribute \ap_clk.FREQ_HZ\ of digitcaps_accel_1 : label is "150000000";
  attribute \ap_clk.FREQ_HZ_TOLERANCE\ : string;
  attribute \ap_clk.FREQ_HZ_TOLERANCE\ of digitcaps_accel_1 : label is "7500000";
  attribute DPA_TRACE_SLAVE : string;
  attribute DPA_TRACE_SLAVE of interconnect_axifull_2_user_slr1 : label is "true";
  attribute DPA_AXILITE_MASTER : string;
  attribute DPA_AXILITE_MASTER of interconnect_axilite_user_slr1 : label is "fallback";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clkwiz_kernel2_clk_out1 : signal is "xilinx.com:signal:clock:1.0 CLK.CLKWIZ_KERNEL2_CLK_OUT1 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clkwiz_kernel2_clk_out1 : signal is "XIL_INTERFACENAME CLK.CLKWIZ_KERNEL2_CLK_OUT1, ASSOCIATED_BUSIF interconnect_aximm_ddrmem2_M00_AXI:interconnect_aximm_ddrmem3_M00_AXI:interconnect_aximm_ddrmem4_M00_AXI:interconnect_aximm_ddrmem5_M00_AXI:regslice_data_hpm0fpd_M_AXI1, CLK_DOMAIN pfm_dynamic_clkwiz_kernel2_clk_out1, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clkwiz_kernel3_clk_out : signal is "xilinx.com:signal:clock:1.0 CLK.CLKWIZ_KERNEL3_CLK_OUT CLK";
  attribute X_INTERFACE_PARAMETER of clkwiz_kernel3_clk_out : signal is "XIL_INTERFACENAME CLK.CLKWIZ_KERNEL3_CLK_OUT, CLK_DOMAIN pfm_dynamic_clkwiz_kernel3_clk_out, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clkwiz_kernel4_clk_out : signal is "xilinx.com:signal:clock:1.0 CLK.CLKWIZ_KERNEL4_CLK_OUT CLK";
  attribute X_INTERFACE_PARAMETER of clkwiz_kernel4_clk_out : signal is "XIL_INTERFACENAME CLK.CLKWIZ_KERNEL4_CLK_OUT, CLK_DOMAIN pfm_dynamic_clkwiz_kernel4_clk_out, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clkwiz_kernel5_clk_out : signal is "xilinx.com:signal:clock:1.0 CLK.CLKWIZ_KERNEL5_CLK_OUT CLK";
  attribute X_INTERFACE_PARAMETER of clkwiz_kernel5_clk_out : signal is "XIL_INTERFACENAME CLK.CLKWIZ_KERNEL5_CLK_OUT, CLK_DOMAIN pfm_dynamic_clkwiz_kernel5_clk_out, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clkwiz_kernel6_clk_out : signal is "xilinx.com:signal:clock:1.0 CLK.CLKWIZ_KERNEL6_CLK_OUT CLK";
  attribute X_INTERFACE_PARAMETER of clkwiz_kernel6_clk_out : signal is "XIL_INTERFACENAME CLK.CLKWIZ_KERNEL6_CLK_OUT, CLK_DOMAIN pfm_dynamic_clkwiz_kernel6_clk_out, FREQ_HZ 600000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clkwiz_kernel_clk_out1 : signal is "xilinx.com:signal:clock:1.0 CLK.CLKWIZ_KERNEL_CLK_OUT1 CLK";
  attribute X_INTERFACE_PARAMETER of clkwiz_kernel_clk_out1 : signal is "XIL_INTERFACENAME CLK.CLKWIZ_KERNEL_CLK_OUT1, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clkwiz_sysclks_clk_out2 : signal is "xilinx.com:signal:clock:1.0 CLK.CLKWIZ_SYSCLKS_CLK_OUT2 CLK";
  attribute X_INTERFACE_PARAMETER of clkwiz_sysclks_clk_out2 : signal is "XIL_INTERFACENAME CLK.CLKWIZ_SYSCLKS_CLK_OUT2, ASSOCIATED_BUSIF regslice_control_userpf_M_AXI, CLK_DOMAIN pfm_dynamic_clkwiz_sysclks_clk_out2, FREQ_HZ 75000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clkwiz_sysclks_locked : signal is "xilinx.com:signal:reset:1.0 RST.CLKWIZ_SYSCLKS_LOCKED RST";
  attribute X_INTERFACE_PARAMETER of clkwiz_sysclks_locked : signal is "XIL_INTERFACENAME RST.CLKWIZ_SYSCLKS_LOCKED, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI ARREADY";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI ARVALID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI AWREADY";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI AWVALID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI BREADY";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI BVALID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI RLAST";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI RREADY";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI RVALID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI WLAST";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI WREADY";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI WVALID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI ARREADY";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI ARVALID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI AWREADY";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI AWVALID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI BREADY";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI BVALID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI RLAST";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI RREADY";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI RVALID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI WLAST";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI WREADY";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI WVALID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI ARREADY";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI ARVALID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI AWREADY";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI AWVALID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI BREADY";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI BVALID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI RLAST";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI RREADY";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI RVALID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI WLAST";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI WREADY";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI WVALID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI ARREADY";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI ARVALID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI AWREADY";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI AWVALID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI BREADY";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI BVALID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI RLAST";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI RREADY";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI RVALID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI WLAST";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI WREADY";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI WVALID";
  attribute X_INTERFACE_INFO of regslice_control_userpf_M_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI ARREADY";
  attribute X_INTERFACE_INFO of regslice_control_userpf_M_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI ARVALID";
  attribute X_INTERFACE_INFO of regslice_control_userpf_M_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI AWREADY";
  attribute X_INTERFACE_INFO of regslice_control_userpf_M_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI AWVALID";
  attribute X_INTERFACE_INFO of regslice_control_userpf_M_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI BREADY";
  attribute X_INTERFACE_INFO of regslice_control_userpf_M_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI BVALID";
  attribute X_INTERFACE_INFO of regslice_control_userpf_M_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI RREADY";
  attribute X_INTERFACE_INFO of regslice_control_userpf_M_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI RVALID";
  attribute X_INTERFACE_INFO of regslice_control_userpf_M_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI WREADY";
  attribute X_INTERFACE_INFO of regslice_control_userpf_M_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI WVALID";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_arready : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARREADY";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_arvalid : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARVALID";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_awready : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWREADY";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_awvalid : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWVALID";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_bready : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 BREADY";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_bvalid : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 BVALID";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_rlast : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 RLAST";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_rready : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 RREADY";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_rvalid : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 RVALID";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_wlast : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 WLAST";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_wready : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 WREADY";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_wvalid : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 WVALID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of interconnect_aximm_ddrmem2_M00_AXI_araddr : signal is "XIL_INTERFACENAME interconnect_aximm_ddrmem2_M00_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel2_clk_out1, DATA_WIDTH 128, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI ARBURST";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI ARCACHE";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_arid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI ARID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI ARLEN";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI ARLOCK";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI ARPROT";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI ARQOS";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI ARSIZE";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI AWADDR";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI AWBURST";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI AWCACHE";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_awid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI AWID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI AWLEN";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI AWLOCK";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI AWPROT";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI AWQOS";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI AWSIZE";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_bid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI BID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI BRESP";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI RDATA";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_rid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI RID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI RRESP";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI WDATA";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem2_M00_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem2_M00_AXI WSTRB";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of interconnect_aximm_ddrmem3_M00_AXI_araddr : signal is "XIL_INTERFACENAME interconnect_aximm_ddrmem3_M00_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel2_clk_out1, DATA_WIDTH 128, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI ARBURST";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI ARCACHE";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_arid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI ARID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI ARLEN";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI ARLOCK";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI ARPROT";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI ARQOS";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI ARSIZE";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI AWADDR";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI AWBURST";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI AWCACHE";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_awid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI AWID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI AWLEN";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI AWLOCK";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI AWPROT";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI AWQOS";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI AWSIZE";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_bid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI BID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI BRESP";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI RDATA";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_rid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI RID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI RRESP";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI WDATA";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem3_M00_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem3_M00_AXI WSTRB";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of interconnect_aximm_ddrmem4_M00_AXI_araddr : signal is "XIL_INTERFACENAME interconnect_aximm_ddrmem4_M00_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel2_clk_out1, DATA_WIDTH 128, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI ARBURST";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI ARCACHE";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_arid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI ARID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI ARLEN";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI ARLOCK";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI ARPROT";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI ARQOS";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI ARSIZE";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI AWADDR";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI AWBURST";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI AWCACHE";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_awid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI AWID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI AWLEN";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI AWLOCK";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI AWPROT";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI AWQOS";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI AWSIZE";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_bid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI BID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI BRESP";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI RDATA";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_rid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI RID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI RRESP";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI WDATA";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem4_M00_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem4_M00_AXI WSTRB";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of interconnect_aximm_ddrmem5_M00_AXI_araddr : signal is "XIL_INTERFACENAME interconnect_aximm_ddrmem5_M00_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel2_clk_out1, DATA_WIDTH 128, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI ARBURST";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI ARCACHE";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_arid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI ARID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI ARLEN";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI ARLOCK";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI ARPROT";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI ARQOS";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI ARSIZE";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI AWADDR";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI AWBURST";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI AWCACHE";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_awid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI AWID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI AWLEN";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI AWLOCK";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI AWPROT";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI AWQOS";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI AWSIZE";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_bid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI BID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI BRESP";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI RDATA";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_rid : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI RID";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI RRESP";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI WDATA";
  attribute X_INTERFACE_INFO of interconnect_aximm_ddrmem5_M00_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 interconnect_aximm_ddrmem5_M00_AXI WSTRB";
  attribute X_INTERFACE_INFO of pr_reset_n : signal is "xilinx.com:signal:reset:1.0 RST.PR_RESET_N RST";
  attribute X_INTERFACE_PARAMETER of pr_reset_n : signal is "XIL_INTERFACENAME RST.PR_RESET_N, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of regslice_control_userpf_M_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of regslice_control_userpf_M_AXI_araddr : signal is "XIL_INTERFACENAME regslice_control_userpf_M_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_sysclks_clk_out2, DATA_WIDTH 32, FREQ_HZ 75000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of regslice_control_userpf_M_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI ARPROT";
  attribute X_INTERFACE_INFO of regslice_control_userpf_M_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI AWADDR";
  attribute X_INTERFACE_INFO of regslice_control_userpf_M_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI AWPROT";
  attribute X_INTERFACE_INFO of regslice_control_userpf_M_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI BRESP";
  attribute X_INTERFACE_INFO of regslice_control_userpf_M_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI RDATA";
  attribute X_INTERFACE_INFO of regslice_control_userpf_M_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI RRESP";
  attribute X_INTERFACE_INFO of regslice_control_userpf_M_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI WDATA";
  attribute X_INTERFACE_INFO of regslice_control_userpf_M_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 regslice_control_userpf_M_AXI WSTRB";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_araddr : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARADDR";
  attribute X_INTERFACE_PARAMETER of regslice_data_hpm0fpd_M_AXI1_araddr : signal is "XIL_INTERFACENAME regslice_data_hpm0fpd_M_AXI1, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel2_clk_out1, DATA_WIDTH 128, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_arburst : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARBURST";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_arcache : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARCACHE";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_arid : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARID";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_arlen : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARLEN";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_arlock : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARLOCK";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_arprot : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARPROT";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_arqos : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARQOS";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_arregion : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARREGION";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_arsize : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 ARSIZE";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_awaddr : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWADDR";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_awburst : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWBURST";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_awcache : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWCACHE";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_awid : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWID";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_awlen : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWLEN";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_awlock : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWLOCK";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_awprot : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWPROT";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_awqos : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWQOS";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_awregion : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWREGION";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_awsize : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 AWSIZE";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_bid : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 BID";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_bresp : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 BRESP";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_rdata : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 RDATA";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_rid : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 RID";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_rresp : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 RRESP";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_wdata : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 WDATA";
  attribute X_INTERFACE_INFO of regslice_data_hpm0fpd_M_AXI1_wstrb : signal is "xilinx.com:interface:aximm:1.0 regslice_data_hpm0fpd_M_AXI1 WSTRB";
begin
  xlconcat_interrupt_dout(31) <= \<const0>\;
  xlconcat_interrupt_dout(30) <= \<const0>\;
  xlconcat_interrupt_dout(29) <= \<const0>\;
  xlconcat_interrupt_dout(28) <= \<const0>\;
  xlconcat_interrupt_dout(27) <= \<const0>\;
  xlconcat_interrupt_dout(26) <= \<const0>\;
  xlconcat_interrupt_dout(25) <= \<const0>\;
  xlconcat_interrupt_dout(24) <= \<const0>\;
  xlconcat_interrupt_dout(23) <= \<const0>\;
  xlconcat_interrupt_dout(22) <= \<const0>\;
  xlconcat_interrupt_dout(21) <= \<const0>\;
  xlconcat_interrupt_dout(20) <= \<const0>\;
  xlconcat_interrupt_dout(19) <= \<const0>\;
  xlconcat_interrupt_dout(18) <= \<const0>\;
  xlconcat_interrupt_dout(17) <= \<const0>\;
  xlconcat_interrupt_dout(16) <= \<const0>\;
  xlconcat_interrupt_dout(15) <= \<const0>\;
  xlconcat_interrupt_dout(14) <= \<const0>\;
  xlconcat_interrupt_dout(13) <= \<const0>\;
  xlconcat_interrupt_dout(12) <= \<const0>\;
  xlconcat_interrupt_dout(11) <= \<const0>\;
  xlconcat_interrupt_dout(10) <= \<const0>\;
  xlconcat_interrupt_dout(9) <= \<const0>\;
  xlconcat_interrupt_dout(8) <= \<const0>\;
  xlconcat_interrupt_dout(7) <= \<const0>\;
  xlconcat_interrupt_dout(6) <= \<const0>\;
  xlconcat_interrupt_dout(5) <= \<const0>\;
  xlconcat_interrupt_dout(4) <= \<const0>\;
  xlconcat_interrupt_dout(3) <= \<const0>\;
  xlconcat_interrupt_dout(2) <= \<const0>\;
  xlconcat_interrupt_dout(1) <= \<const0>\;
  xlconcat_interrupt_dout(0) <= \^xlconcat_interrupt_dout\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
axi_gpio_null: component pfm_dynamic_axi_gpio_null_0
     port map (
      gpio_io_i(31 downto 0) => B"00000000000000000000000000000000",
      gpio_io_o(31 downto 0) => NLW_axi_gpio_null_gpio_io_o_UNCONNECTED(31 downto 0),
      gpio_io_t(31 downto 0) => NLW_axi_gpio_null_gpio_io_t_UNCONNECTED(31 downto 0),
      s_axi_aclk => clkwiz_sysclks_clk_out2,
      s_axi_araddr(8 downto 0) => interconnect_axilite_user_M00_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => ARESETN_1,
      s_axi_arready => interconnect_axilite_user_M00_AXI_ARREADY,
      s_axi_arvalid => interconnect_axilite_user_M00_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => interconnect_axilite_user_M00_AXI_AWADDR(8 downto 0),
      s_axi_awready => interconnect_axilite_user_M00_AXI_AWREADY,
      s_axi_awvalid => interconnect_axilite_user_M00_AXI_AWVALID,
      s_axi_bready => interconnect_axilite_user_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => interconnect_axilite_user_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => interconnect_axilite_user_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => interconnect_axilite_user_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => interconnect_axilite_user_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => interconnect_axilite_user_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => interconnect_axilite_user_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => interconnect_axilite_user_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => interconnect_axilite_user_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => interconnect_axilite_user_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => interconnect_axilite_user_M00_AXI_WVALID
    );
axi_interconnect_0: entity work.pfm_dynamic_axi_interconnect_0_0
     port map (
      ACLK => '0',
      ARESETN => '0',
      M00_ACLK => clkwiz_kernel2_clk_out1,
      M00_ARESETN => reset_controllers_interconnect_aresetn,
      M00_AXI_araddr(63 downto 0) => axi_interconnect_0_M00_AXI1_ARADDR(63 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_interconnect_0_M00_AXI1_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_interconnect_0_M00_AXI1_ARCACHE(3 downto 0),
      M00_AXI_arlen(7 downto 0) => axi_interconnect_0_M00_AXI1_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => axi_interconnect_0_M00_AXI1_ARLOCK,
      M00_AXI_arprot(2 downto 0) => axi_interconnect_0_M00_AXI1_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_interconnect_0_M00_AXI1_ARQOS(3 downto 0),
      M00_AXI_arready => axi_interconnect_0_M00_AXI1_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_interconnect_0_M00_AXI1_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_interconnect_0_M00_AXI1_ARVALID,
      M00_AXI_awaddr(63 downto 0) => axi_interconnect_0_M00_AXI1_AWADDR(63 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_interconnect_0_M00_AXI1_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_interconnect_0_M00_AXI1_AWCACHE(3 downto 0),
      M00_AXI_awlen(7 downto 0) => axi_interconnect_0_M00_AXI1_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => axi_interconnect_0_M00_AXI1_AWLOCK,
      M00_AXI_awprot(2 downto 0) => axi_interconnect_0_M00_AXI1_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_interconnect_0_M00_AXI1_AWQOS(3 downto 0),
      M00_AXI_awready => axi_interconnect_0_M00_AXI1_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_interconnect_0_M00_AXI1_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_interconnect_0_M00_AXI1_AWVALID,
      M00_AXI_bready => axi_interconnect_0_M00_AXI1_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI1_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_0_M00_AXI1_BVALID,
      M00_AXI_rdata(127 downto 0) => axi_interconnect_0_M00_AXI1_RDATA(127 downto 0),
      M00_AXI_rlast => axi_interconnect_0_M00_AXI1_RLAST,
      M00_AXI_rready => axi_interconnect_0_M00_AXI1_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI1_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_0_M00_AXI1_RVALID,
      M00_AXI_wdata(127 downto 0) => axi_interconnect_0_M00_AXI1_WDATA(127 downto 0),
      M00_AXI_wlast => axi_interconnect_0_M00_AXI1_WLAST,
      M00_AXI_wready => axi_interconnect_0_M00_AXI1_WREADY,
      M00_AXI_wstrb(15 downto 0) => axi_interconnect_0_M00_AXI1_WSTRB(15 downto 0),
      M00_AXI_wvalid => axi_interconnect_0_M00_AXI1_WVALID,
      S00_ACLK => '0',
      S00_ARESETN => '0',
      S00_AXI_araddr(31 downto 0) => axi_vip_4_M_AXI_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_vip_4_M_AXI_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_vip_4_M_AXI_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_vip_4_M_AXI_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => axi_vip_4_M_AXI_ARLOCK,
      S00_AXI_arprot(2 downto 0) => axi_vip_4_M_AXI_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => axi_vip_4_M_AXI_ARQOS(3 downto 0),
      S00_AXI_arready => axi_vip_4_M_AXI_ARREADY,
      S00_AXI_arregion(3 downto 0) => axi_vip_4_M_AXI_ARREGION(3 downto 0),
      S00_AXI_arsize(2 downto 0) => axi_vip_4_M_AXI_ARSIZE(2 downto 0),
      S00_AXI_arvalid => axi_vip_4_M_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => axi_vip_4_M_AXI_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_vip_4_M_AXI_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_vip_4_M_AXI_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => axi_vip_4_M_AXI_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => axi_vip_4_M_AXI_AWLOCK,
      S00_AXI_awprot(2 downto 0) => axi_vip_4_M_AXI_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => axi_vip_4_M_AXI_AWQOS(3 downto 0),
      S00_AXI_awready => axi_vip_4_M_AXI_AWREADY,
      S00_AXI_awregion(3 downto 0) => axi_vip_4_M_AXI_AWREGION(3 downto 0),
      S00_AXI_awsize(2 downto 0) => axi_vip_4_M_AXI_AWSIZE(2 downto 0),
      S00_AXI_awvalid => axi_vip_4_M_AXI_AWVALID,
      S00_AXI_bready => axi_vip_4_M_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_vip_4_M_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_vip_4_M_AXI_BVALID,
      S00_AXI_rdata(127 downto 0) => axi_vip_4_M_AXI_RDATA(127 downto 0),
      S00_AXI_rlast => axi_vip_4_M_AXI_RLAST,
      S00_AXI_rready => axi_vip_4_M_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_vip_4_M_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_vip_4_M_AXI_RVALID,
      S00_AXI_wdata(127 downto 0) => axi_vip_4_M_AXI_WDATA(127 downto 0),
      S00_AXI_wlast => axi_vip_4_M_AXI_WLAST,
      S00_AXI_wready => axi_vip_4_M_AXI_WREADY,
      S00_AXI_wstrb(15 downto 0) => axi_vip_4_M_AXI_WSTRB(15 downto 0),
      S00_AXI_wvalid => axi_vip_4_M_AXI_WVALID,
      S01_ACLK => clkwiz_kernel_clk_out1,
      S01_ARESETN => reset_controllers_peripheral_aresetn,
      S01_AXI_awaddr(63 downto 0) => digitcaps_accel_1_m_axi_gmem2_AWADDR(63 downto 0),
      S01_AXI_awburst(1 downto 0) => digitcaps_accel_1_m_axi_gmem2_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => digitcaps_accel_1_m_axi_gmem2_AWCACHE(3 downto 0),
      S01_AXI_awlen(7 downto 0) => digitcaps_accel_1_m_axi_gmem2_AWLEN(7 downto 0),
      S01_AXI_awlock(1) => '0',
      S01_AXI_awlock(0) => digitcaps_accel_1_m_axi_gmem2_AWLOCK(0),
      S01_AXI_awprot(2 downto 0) => digitcaps_accel_1_m_axi_gmem2_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => digitcaps_accel_1_m_axi_gmem2_AWQOS(3 downto 0),
      S01_AXI_awready => digitcaps_accel_1_m_axi_gmem2_AWREADY,
      S01_AXI_awregion(3 downto 0) => digitcaps_accel_1_m_axi_gmem2_AWREGION(3 downto 0),
      S01_AXI_awsize(2 downto 0) => digitcaps_accel_1_m_axi_gmem2_AWSIZE(2 downto 0),
      S01_AXI_awvalid => digitcaps_accel_1_m_axi_gmem2_AWVALID,
      S01_AXI_bready => digitcaps_accel_1_m_axi_gmem2_BREADY,
      S01_AXI_bresp(1 downto 0) => digitcaps_accel_1_m_axi_gmem2_BRESP(1 downto 0),
      S01_AXI_bvalid => digitcaps_accel_1_m_axi_gmem2_BVALID,
      S01_AXI_wdata(511 downto 0) => digitcaps_accel_1_m_axi_gmem2_WDATA(511 downto 0),
      S01_AXI_wlast => digitcaps_accel_1_m_axi_gmem2_WLAST,
      S01_AXI_wready => digitcaps_accel_1_m_axi_gmem2_WREADY,
      S01_AXI_wstrb(63 downto 0) => digitcaps_accel_1_m_axi_gmem2_WSTRB(63 downto 0),
      S01_AXI_wvalid => digitcaps_accel_1_m_axi_gmem2_WVALID
    );
axi_interconnect_1: entity work.pfm_dynamic_axi_interconnect_1_0
     port map (
      ACLK => '0',
      ARESETN => '0',
      M00_ACLK => '0',
      M00_ARESETN => '0',
      M00_AXI_araddr(31 downto 0) => axi_interconnect_1_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_interconnect_1_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_interconnect_1_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(7 downto 0) => axi_interconnect_1_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => axi_interconnect_1_M00_AXI_ARLOCK,
      M00_AXI_arprot(2 downto 0) => axi_interconnect_1_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_interconnect_1_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_interconnect_1_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_interconnect_1_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_interconnect_1_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_1_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_interconnect_1_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_interconnect_1_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(7 downto 0) => axi_interconnect_1_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => axi_interconnect_1_M00_AXI_AWLOCK,
      M00_AXI_awprot(2 downto 0) => axi_interconnect_1_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_interconnect_1_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_interconnect_1_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_interconnect_1_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_interconnect_1_M00_AXI_AWVALID,
      M00_AXI_bready => axi_interconnect_1_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_1_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_1_M00_AXI_BVALID,
      M00_AXI_rdata(127 downto 0) => axi_interconnect_1_M00_AXI_RDATA(127 downto 0),
      M00_AXI_rlast => axi_interconnect_1_M00_AXI_RLAST,
      M00_AXI_rready => axi_interconnect_1_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_1_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_1_M00_AXI_RVALID,
      M00_AXI_wdata(127 downto 0) => axi_interconnect_1_M00_AXI_WDATA(127 downto 0),
      M00_AXI_wlast => axi_interconnect_1_M00_AXI_WLAST,
      M00_AXI_wready => axi_interconnect_1_M00_AXI_WREADY,
      M00_AXI_wstrb(15 downto 0) => axi_interconnect_1_M00_AXI_WSTRB(15 downto 0),
      M00_AXI_wvalid => axi_interconnect_1_M00_AXI_WVALID,
      S00_ACLK => clkwiz_kernel2_clk_out1,
      S00_ARESETN => reset_controllers_interconnect_aresetn,
      S00_AXI_araddr(31 downto 0) => axi_vip_5_M_AXI_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_vip_5_M_AXI_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_vip_5_M_AXI_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_vip_5_M_AXI_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => axi_vip_5_M_AXI_ARLOCK,
      S00_AXI_arprot(2 downto 0) => axi_vip_5_M_AXI_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => axi_vip_5_M_AXI_ARQOS(3 downto 0),
      S00_AXI_arready => axi_vip_5_M_AXI_ARREADY,
      S00_AXI_arregion(3 downto 0) => axi_vip_5_M_AXI_ARREGION(3 downto 0),
      S00_AXI_arsize(2 downto 0) => axi_vip_5_M_AXI_ARSIZE(2 downto 0),
      S00_AXI_arvalid => axi_vip_5_M_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => axi_vip_5_M_AXI_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_vip_5_M_AXI_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_vip_5_M_AXI_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => axi_vip_5_M_AXI_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => axi_vip_5_M_AXI_AWLOCK,
      S00_AXI_awprot(2 downto 0) => axi_vip_5_M_AXI_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => axi_vip_5_M_AXI_AWQOS(3 downto 0),
      S00_AXI_awready => axi_vip_5_M_AXI_AWREADY,
      S00_AXI_awregion(3 downto 0) => axi_vip_5_M_AXI_AWREGION(3 downto 0),
      S00_AXI_awsize(2 downto 0) => axi_vip_5_M_AXI_AWSIZE(2 downto 0),
      S00_AXI_awvalid => axi_vip_5_M_AXI_AWVALID,
      S00_AXI_bready => axi_vip_5_M_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_vip_5_M_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_vip_5_M_AXI_BVALID,
      S00_AXI_rdata(127 downto 0) => axi_vip_5_M_AXI_RDATA(127 downto 0),
      S00_AXI_rlast => axi_vip_5_M_AXI_RLAST,
      S00_AXI_rready => axi_vip_5_M_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_vip_5_M_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_vip_5_M_AXI_RVALID,
      S00_AXI_wdata(127 downto 0) => axi_vip_5_M_AXI_WDATA(127 downto 0),
      S00_AXI_wlast => axi_vip_5_M_AXI_WLAST,
      S00_AXI_wready => axi_vip_5_M_AXI_WREADY,
      S00_AXI_wstrb(15 downto 0) => axi_vip_5_M_AXI_WSTRB(15 downto 0),
      S00_AXI_wvalid => axi_vip_5_M_AXI_WVALID
    );
axi_interconnect_hpm0fpd: entity work.pfm_dynamic_axi_interconnect_hpm0fpd_0
     port map (
      ACLK => '0',
      ARESETN => '0',
      M00_ACLK => '0',
      M00_ARESETN => '0',
      M00_AXI_araddr(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_interconnect_0_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_interconnect_0_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(15 downto 0) => axi_interconnect_0_M00_AXI_ARID(15 downto 0),
      M00_AXI_arlen(7 downto 0) => axi_interconnect_0_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => axi_interconnect_0_M00_AXI_ARLOCK,
      M00_AXI_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_interconnect_0_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_interconnect_0_M00_AXI_ARREADY,
      M00_AXI_arregion(3 downto 0) => axi_interconnect_0_M00_AXI_ARREGION(3 downto 0),
      M00_AXI_arsize(2 downto 0) => axi_interconnect_0_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_interconnect_0_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_interconnect_0_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(15 downto 0) => axi_interconnect_0_M00_AXI_AWID(15 downto 0),
      M00_AXI_awlen(7 downto 0) => axi_interconnect_0_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => axi_interconnect_0_M00_AXI_AWLOCK,
      M00_AXI_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_interconnect_0_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_interconnect_0_M00_AXI_AWREADY,
      M00_AXI_awregion(3 downto 0) => axi_interconnect_0_M00_AXI_AWREGION(3 downto 0),
      M00_AXI_awsize(2 downto 0) => axi_interconnect_0_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      M00_AXI_bid(15 downto 0) => axi_interconnect_0_M00_AXI_BID(15 downto 0),
      M00_AXI_bready => axi_interconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(127 downto 0) => axi_interconnect_0_M00_AXI_RDATA(127 downto 0),
      M00_AXI_rid(15 downto 0) => axi_interconnect_0_M00_AXI_RID(15 downto 0),
      M00_AXI_rlast => axi_interconnect_0_M00_AXI_RLAST,
      M00_AXI_rready => axi_interconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(127 downto 0) => axi_interconnect_0_M00_AXI_WDATA(127 downto 0),
      M00_AXI_wlast => axi_interconnect_0_M00_AXI_WLAST,
      M00_AXI_wready => axi_interconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(15 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(15 downto 0),
      M00_AXI_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      S00_ACLK => clkwiz_kernel2_clk_out1,
      S00_ARESETN => reset_controllers_interconnect_aresetn,
      S00_AXI_araddr(31 downto 0) => axi_vip_1_M_AXI_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_vip_1_M_AXI_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_vip_1_M_AXI_ARCACHE(3 downto 0),
      S00_AXI_arid(15 downto 0) => axi_vip_1_M_AXI_ARID(15 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_vip_1_M_AXI_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => axi_vip_1_M_AXI_ARLOCK,
      S00_AXI_arprot(2 downto 0) => axi_vip_1_M_AXI_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => axi_vip_1_M_AXI_ARQOS(3 downto 0),
      S00_AXI_arready => axi_vip_1_M_AXI_ARREADY,
      S00_AXI_arregion(3 downto 0) => axi_vip_1_M_AXI_ARREGION(3 downto 0),
      S00_AXI_arsize(2 downto 0) => axi_vip_1_M_AXI_ARSIZE(2 downto 0),
      S00_AXI_arvalid => axi_vip_1_M_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => axi_vip_1_M_AXI_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_vip_1_M_AXI_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_vip_1_M_AXI_AWCACHE(3 downto 0),
      S00_AXI_awid(15 downto 0) => axi_vip_1_M_AXI_AWID(15 downto 0),
      S00_AXI_awlen(7 downto 0) => axi_vip_1_M_AXI_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => axi_vip_1_M_AXI_AWLOCK,
      S00_AXI_awprot(2 downto 0) => axi_vip_1_M_AXI_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => axi_vip_1_M_AXI_AWQOS(3 downto 0),
      S00_AXI_awready => axi_vip_1_M_AXI_AWREADY,
      S00_AXI_awregion(3 downto 0) => axi_vip_1_M_AXI_AWREGION(3 downto 0),
      S00_AXI_awsize(2 downto 0) => axi_vip_1_M_AXI_AWSIZE(2 downto 0),
      S00_AXI_awvalid => axi_vip_1_M_AXI_AWVALID,
      S00_AXI_bid(15 downto 0) => axi_vip_1_M_AXI_BID(15 downto 0),
      S00_AXI_bready => axi_vip_1_M_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_vip_1_M_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_vip_1_M_AXI_BVALID,
      S00_AXI_rdata(127 downto 0) => axi_vip_1_M_AXI_RDATA(127 downto 0),
      S00_AXI_rid(15 downto 0) => axi_vip_1_M_AXI_RID(15 downto 0),
      S00_AXI_rlast => axi_vip_1_M_AXI_RLAST,
      S00_AXI_rready => axi_vip_1_M_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_vip_1_M_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_vip_1_M_AXI_RVALID,
      S00_AXI_wdata(127 downto 0) => axi_vip_1_M_AXI_WDATA(127 downto 0),
      S00_AXI_wlast => axi_vip_1_M_AXI_WLAST,
      S00_AXI_wready => axi_vip_1_M_AXI_WREADY,
      S00_AXI_wstrb(15 downto 0) => axi_vip_1_M_AXI_WSTRB(15 downto 0),
      S00_AXI_wvalid => axi_vip_1_M_AXI_WVALID
    );
axi_mmu_2: component pfm_dynamic_axi_mmu_2_0
     port map (
      aclk => clkwiz_kernel2_clk_out1,
      aresetn => reset_controllers_interconnect_aresetn,
      m_axi_araddr(31 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_arcache(3 downto 0),
      m_axi_arid(5 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_arid(5 downto 0),
      m_axi_arlen(7 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_arlen(7 downto 0),
      m_axi_arlock(0) => interconnect_aximm_ddrmem2_M00_AXI_arlock(0),
      m_axi_arprot(2 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_arqos(3 downto 0),
      m_axi_arready => interconnect_aximm_ddrmem2_M00_AXI_arready,
      m_axi_arsize(2 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_arsize(2 downto 0),
      m_axi_arvalid => interconnect_aximm_ddrmem2_M00_AXI_arvalid,
      m_axi_awaddr(31 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_awcache(3 downto 0),
      m_axi_awid(5 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_awid(5 downto 0),
      m_axi_awlen(7 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_awlen(7 downto 0),
      m_axi_awlock(0) => interconnect_aximm_ddrmem2_M00_AXI_awlock(0),
      m_axi_awprot(2 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_awqos(3 downto 0),
      m_axi_awready => interconnect_aximm_ddrmem2_M00_AXI_awready,
      m_axi_awsize(2 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_awsize(2 downto 0),
      m_axi_awvalid => interconnect_aximm_ddrmem2_M00_AXI_awvalid,
      m_axi_bid(5 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_bid(5 downto 0),
      m_axi_bready => interconnect_aximm_ddrmem2_M00_AXI_bready,
      m_axi_bresp(1 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_bresp(1 downto 0),
      m_axi_bvalid => interconnect_aximm_ddrmem2_M00_AXI_bvalid,
      m_axi_rdata(127 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_rdata(127 downto 0),
      m_axi_rid(5 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_rid(5 downto 0),
      m_axi_rlast => interconnect_aximm_ddrmem2_M00_AXI_rlast,
      m_axi_rready => interconnect_aximm_ddrmem2_M00_AXI_rready,
      m_axi_rresp(1 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_rresp(1 downto 0),
      m_axi_rvalid => interconnect_aximm_ddrmem2_M00_AXI_rvalid,
      m_axi_wdata(127 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_wdata(127 downto 0),
      m_axi_wlast => interconnect_aximm_ddrmem2_M00_AXI_wlast,
      m_axi_wready => interconnect_aximm_ddrmem2_M00_AXI_wready,
      m_axi_wstrb(15 downto 0) => interconnect_aximm_ddrmem2_M00_AXI_wstrb(15 downto 0),
      m_axi_wvalid => interconnect_aximm_ddrmem2_M00_AXI_wvalid,
      s_axi_araddr(31 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_ARCACHE(3 downto 0),
      s_axi_arid(5 downto 0) => B"000000",
      s_axi_arlen(7 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_ARLEN(7 downto 0),
      s_axi_arlock(0) => interconnect_axifull_1_user_slr1_M00_AXI_ARLOCK,
      s_axi_arprot(2 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_ARQOS(3 downto 0),
      s_axi_arready => interconnect_axifull_1_user_slr1_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => interconnect_axifull_1_user_slr1_M00_AXI_ARVALID,
      s_axi_awaddr(31 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awid(5 downto 0) => B"000000",
      s_axi_awlen(7 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_AWLEN(7 downto 0),
      s_axi_awlock(0) => interconnect_axifull_1_user_slr1_M00_AXI_AWLOCK,
      s_axi_awprot(2 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_AWQOS(3 downto 0),
      s_axi_awready => interconnect_axifull_1_user_slr1_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => interconnect_axifull_1_user_slr1_M00_AXI_AWVALID,
      s_axi_bid(5 downto 0) => NLW_axi_mmu_2_s_axi_bid_UNCONNECTED(5 downto 0),
      s_axi_bready => interconnect_axifull_1_user_slr1_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => interconnect_axifull_1_user_slr1_M00_AXI_BVALID,
      s_axi_rdata(127 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_RDATA(127 downto 0),
      s_axi_rid(5 downto 0) => NLW_axi_mmu_2_s_axi_rid_UNCONNECTED(5 downto 0),
      s_axi_rlast => interconnect_axifull_1_user_slr1_M00_AXI_RLAST,
      s_axi_rready => interconnect_axifull_1_user_slr1_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => interconnect_axifull_1_user_slr1_M00_AXI_RVALID,
      s_axi_wdata(127 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_WDATA(127 downto 0),
      s_axi_wlast => interconnect_axifull_1_user_slr1_M00_AXI_WLAST,
      s_axi_wready => interconnect_axifull_1_user_slr1_M00_AXI_WREADY,
      s_axi_wstrb(15 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_WSTRB(15 downto 0),
      s_axi_wvalid => interconnect_axifull_1_user_slr1_M00_AXI_WVALID
    );
axi_mmu_3: component pfm_dynamic_axi_mmu_3_0
     port map (
      aclk => clkwiz_kernel2_clk_out1,
      aresetn => reset_controllers_interconnect_aresetn,
      m_axi_araddr(63 downto 32) => NLW_axi_mmu_3_m_axi_araddr_UNCONNECTED(63 downto 32),
      m_axi_araddr(31 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_arcache(3 downto 0),
      m_axi_arid(5 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_arid(5 downto 0),
      m_axi_arlen(7 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_arlen(7 downto 0),
      m_axi_arlock(0) => interconnect_aximm_ddrmem3_M00_AXI_arlock(0),
      m_axi_arprot(2 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_arqos(3 downto 0),
      m_axi_arready => interconnect_aximm_ddrmem3_M00_AXI_arready,
      m_axi_arsize(2 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_arsize(2 downto 0),
      m_axi_arvalid => interconnect_aximm_ddrmem3_M00_AXI_arvalid,
      m_axi_awaddr(63 downto 32) => NLW_axi_mmu_3_m_axi_awaddr_UNCONNECTED(63 downto 32),
      m_axi_awaddr(31 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_awcache(3 downto 0),
      m_axi_awid(5 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_awid(5 downto 0),
      m_axi_awlen(7 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_awlen(7 downto 0),
      m_axi_awlock(0) => interconnect_aximm_ddrmem3_M00_AXI_awlock(0),
      m_axi_awprot(2 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_awqos(3 downto 0),
      m_axi_awready => interconnect_aximm_ddrmem3_M00_AXI_awready,
      m_axi_awsize(2 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_awsize(2 downto 0),
      m_axi_awvalid => interconnect_aximm_ddrmem3_M00_AXI_awvalid,
      m_axi_bid(5 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_bid(5 downto 0),
      m_axi_bready => interconnect_aximm_ddrmem3_M00_AXI_bready,
      m_axi_bresp(1 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_bresp(1 downto 0),
      m_axi_bvalid => interconnect_aximm_ddrmem3_M00_AXI_bvalid,
      m_axi_rdata(127 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_rdata(127 downto 0),
      m_axi_rid(5 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_rid(5 downto 0),
      m_axi_rlast => interconnect_aximm_ddrmem3_M00_AXI_rlast,
      m_axi_rready => interconnect_aximm_ddrmem3_M00_AXI_rready,
      m_axi_rresp(1 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_rresp(1 downto 0),
      m_axi_rvalid => interconnect_aximm_ddrmem3_M00_AXI_rvalid,
      m_axi_wdata(127 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_wdata(127 downto 0),
      m_axi_wlast => interconnect_aximm_ddrmem3_M00_AXI_wlast,
      m_axi_wready => interconnect_aximm_ddrmem3_M00_AXI_wready,
      m_axi_wstrb(15 downto 0) => interconnect_aximm_ddrmem3_M00_AXI_wstrb(15 downto 0),
      m_axi_wvalid => interconnect_aximm_ddrmem3_M00_AXI_wvalid,
      s_axi_araddr(63 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_ARADDR(63 downto 0),
      s_axi_arburst(1 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_ARCACHE(3 downto 0),
      s_axi_arid(5 downto 0) => B"000000",
      s_axi_arlen(7 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_ARLEN(7 downto 0),
      s_axi_arlock(0) => interconnect_axifull_2_user_slr1_M00_AXI_ARLOCK,
      s_axi_arprot(2 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_ARQOS(3 downto 0),
      s_axi_arready => interconnect_axifull_2_user_slr1_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => interconnect_axifull_2_user_slr1_M00_AXI_ARVALID,
      s_axi_awaddr(63 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_AWADDR(63 downto 0),
      s_axi_awburst(1 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awid(5 downto 0) => B"000000",
      s_axi_awlen(7 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_AWLEN(7 downto 0),
      s_axi_awlock(0) => interconnect_axifull_2_user_slr1_M00_AXI_AWLOCK,
      s_axi_awprot(2 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_AWQOS(3 downto 0),
      s_axi_awready => interconnect_axifull_2_user_slr1_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => interconnect_axifull_2_user_slr1_M00_AXI_AWVALID,
      s_axi_bid(5 downto 0) => NLW_axi_mmu_3_s_axi_bid_UNCONNECTED(5 downto 0),
      s_axi_bready => interconnect_axifull_2_user_slr1_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => interconnect_axifull_2_user_slr1_M00_AXI_BVALID,
      s_axi_rdata(127 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_RDATA(127 downto 0),
      s_axi_rid(5 downto 0) => NLW_axi_mmu_3_s_axi_rid_UNCONNECTED(5 downto 0),
      s_axi_rlast => interconnect_axifull_2_user_slr1_M00_AXI_RLAST,
      s_axi_rready => interconnect_axifull_2_user_slr1_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => interconnect_axifull_2_user_slr1_M00_AXI_RVALID,
      s_axi_wdata(127 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_WDATA(127 downto 0),
      s_axi_wlast => interconnect_axifull_2_user_slr1_M00_AXI_WLAST,
      s_axi_wready => interconnect_axifull_2_user_slr1_M00_AXI_WREADY,
      s_axi_wstrb(15 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_WSTRB(15 downto 0),
      s_axi_wvalid => interconnect_axifull_2_user_slr1_M00_AXI_WVALID
    );
axi_mmu_4: component pfm_dynamic_axi_mmu_4_0
     port map (
      aclk => clkwiz_kernel2_clk_out1,
      aresetn => reset_controllers_interconnect_aresetn,
      m_axi_araddr(63 downto 32) => NLW_axi_mmu_4_m_axi_araddr_UNCONNECTED(63 downto 32),
      m_axi_araddr(31 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_arcache(3 downto 0),
      m_axi_arid(5 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_arid(5 downto 0),
      m_axi_arlen(7 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_arlen(7 downto 0),
      m_axi_arlock(0) => interconnect_aximm_ddrmem4_M00_AXI_arlock(0),
      m_axi_arprot(2 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_arqos(3 downto 0),
      m_axi_arready => interconnect_aximm_ddrmem4_M00_AXI_arready,
      m_axi_arsize(2 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_arsize(2 downto 0),
      m_axi_arvalid => interconnect_aximm_ddrmem4_M00_AXI_arvalid,
      m_axi_awaddr(63 downto 32) => NLW_axi_mmu_4_m_axi_awaddr_UNCONNECTED(63 downto 32),
      m_axi_awaddr(31 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_awcache(3 downto 0),
      m_axi_awid(5 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_awid(5 downto 0),
      m_axi_awlen(7 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_awlen(7 downto 0),
      m_axi_awlock(0) => interconnect_aximm_ddrmem4_M00_AXI_awlock(0),
      m_axi_awprot(2 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_awqos(3 downto 0),
      m_axi_awready => interconnect_aximm_ddrmem4_M00_AXI_awready,
      m_axi_awsize(2 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_awsize(2 downto 0),
      m_axi_awvalid => interconnect_aximm_ddrmem4_M00_AXI_awvalid,
      m_axi_bid(5 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_bid(5 downto 0),
      m_axi_bready => interconnect_aximm_ddrmem4_M00_AXI_bready,
      m_axi_bresp(1 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_bresp(1 downto 0),
      m_axi_bvalid => interconnect_aximm_ddrmem4_M00_AXI_bvalid,
      m_axi_rdata(127 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_rdata(127 downto 0),
      m_axi_rid(5 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_rid(5 downto 0),
      m_axi_rlast => interconnect_aximm_ddrmem4_M00_AXI_rlast,
      m_axi_rready => interconnect_aximm_ddrmem4_M00_AXI_rready,
      m_axi_rresp(1 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_rresp(1 downto 0),
      m_axi_rvalid => interconnect_aximm_ddrmem4_M00_AXI_rvalid,
      m_axi_wdata(127 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_wdata(127 downto 0),
      m_axi_wlast => interconnect_aximm_ddrmem4_M00_AXI_wlast,
      m_axi_wready => interconnect_aximm_ddrmem4_M00_AXI_wready,
      m_axi_wstrb(15 downto 0) => interconnect_aximm_ddrmem4_M00_AXI_wstrb(15 downto 0),
      m_axi_wvalid => interconnect_aximm_ddrmem4_M00_AXI_wvalid,
      s_axi_araddr(63 downto 0) => axi_interconnect_0_M00_AXI1_ARADDR(63 downto 0),
      s_axi_arburst(1 downto 0) => axi_interconnect_0_M00_AXI1_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_interconnect_0_M00_AXI1_ARCACHE(3 downto 0),
      s_axi_arid(5 downto 0) => B"000000",
      s_axi_arlen(7 downto 0) => axi_interconnect_0_M00_AXI1_ARLEN(7 downto 0),
      s_axi_arlock(0) => axi_interconnect_0_M00_AXI1_ARLOCK,
      s_axi_arprot(2 downto 0) => axi_interconnect_0_M00_AXI1_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => axi_interconnect_0_M00_AXI1_ARQOS(3 downto 0),
      s_axi_arready => axi_interconnect_0_M00_AXI1_ARREADY,
      s_axi_arsize(2 downto 0) => axi_interconnect_0_M00_AXI1_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_interconnect_0_M00_AXI1_ARVALID,
      s_axi_awaddr(63 downto 0) => axi_interconnect_0_M00_AXI1_AWADDR(63 downto 0),
      s_axi_awburst(1 downto 0) => axi_interconnect_0_M00_AXI1_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_interconnect_0_M00_AXI1_AWCACHE(3 downto 0),
      s_axi_awid(5 downto 0) => B"000000",
      s_axi_awlen(7 downto 0) => axi_interconnect_0_M00_AXI1_AWLEN(7 downto 0),
      s_axi_awlock(0) => axi_interconnect_0_M00_AXI1_AWLOCK,
      s_axi_awprot(2 downto 0) => axi_interconnect_0_M00_AXI1_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => axi_interconnect_0_M00_AXI1_AWQOS(3 downto 0),
      s_axi_awready => axi_interconnect_0_M00_AXI1_AWREADY,
      s_axi_awsize(2 downto 0) => axi_interconnect_0_M00_AXI1_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_interconnect_0_M00_AXI1_AWVALID,
      s_axi_bid(5 downto 0) => NLW_axi_mmu_4_s_axi_bid_UNCONNECTED(5 downto 0),
      s_axi_bready => axi_interconnect_0_M00_AXI1_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M00_AXI1_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M00_AXI1_BVALID,
      s_axi_rdata(127 downto 0) => axi_interconnect_0_M00_AXI1_RDATA(127 downto 0),
      s_axi_rid(5 downto 0) => NLW_axi_mmu_4_s_axi_rid_UNCONNECTED(5 downto 0),
      s_axi_rlast => axi_interconnect_0_M00_AXI1_RLAST,
      s_axi_rready => axi_interconnect_0_M00_AXI1_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M00_AXI1_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M00_AXI1_RVALID,
      s_axi_wdata(127 downto 0) => axi_interconnect_0_M00_AXI1_WDATA(127 downto 0),
      s_axi_wlast => axi_interconnect_0_M00_AXI1_WLAST,
      s_axi_wready => axi_interconnect_0_M00_AXI1_WREADY,
      s_axi_wstrb(15 downto 0) => axi_interconnect_0_M00_AXI1_WSTRB(15 downto 0),
      s_axi_wvalid => axi_interconnect_0_M00_AXI1_WVALID
    );
axi_mmu_5: component pfm_dynamic_axi_mmu_5_0
     port map (
      aclk => clkwiz_kernel2_clk_out1,
      aresetn => reset_controllers_interconnect_aresetn,
      m_axi_araddr(31 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_arcache(3 downto 0),
      m_axi_arid(5 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_arid(5 downto 0),
      m_axi_arlen(7 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_arlen(7 downto 0),
      m_axi_arlock(0) => interconnect_aximm_ddrmem5_M00_AXI_arlock(0),
      m_axi_arprot(2 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_arqos(3 downto 0),
      m_axi_arready => interconnect_aximm_ddrmem5_M00_AXI_arready,
      m_axi_arsize(2 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_arsize(2 downto 0),
      m_axi_arvalid => interconnect_aximm_ddrmem5_M00_AXI_arvalid,
      m_axi_awaddr(31 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_awcache(3 downto 0),
      m_axi_awid(5 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_awid(5 downto 0),
      m_axi_awlen(7 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_awlen(7 downto 0),
      m_axi_awlock(0) => interconnect_aximm_ddrmem5_M00_AXI_awlock(0),
      m_axi_awprot(2 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_awqos(3 downto 0),
      m_axi_awready => interconnect_aximm_ddrmem5_M00_AXI_awready,
      m_axi_awsize(2 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_awsize(2 downto 0),
      m_axi_awvalid => interconnect_aximm_ddrmem5_M00_AXI_awvalid,
      m_axi_bid(5 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_bid(5 downto 0),
      m_axi_bready => interconnect_aximm_ddrmem5_M00_AXI_bready,
      m_axi_bresp(1 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_bresp(1 downto 0),
      m_axi_bvalid => interconnect_aximm_ddrmem5_M00_AXI_bvalid,
      m_axi_rdata(127 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_rdata(127 downto 0),
      m_axi_rid(5 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_rid(5 downto 0),
      m_axi_rlast => interconnect_aximm_ddrmem5_M00_AXI_rlast,
      m_axi_rready => interconnect_aximm_ddrmem5_M00_AXI_rready,
      m_axi_rresp(1 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_rresp(1 downto 0),
      m_axi_rvalid => interconnect_aximm_ddrmem5_M00_AXI_rvalid,
      m_axi_wdata(127 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_wdata(127 downto 0),
      m_axi_wlast => interconnect_aximm_ddrmem5_M00_AXI_wlast,
      m_axi_wready => interconnect_aximm_ddrmem5_M00_AXI_wready,
      m_axi_wstrb(15 downto 0) => interconnect_aximm_ddrmem5_M00_AXI_wstrb(15 downto 0),
      m_axi_wvalid => interconnect_aximm_ddrmem5_M00_AXI_wvalid,
      s_axi_araddr(31 downto 0) => axi_interconnect_1_M00_AXI_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => axi_interconnect_1_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_interconnect_1_M00_AXI_ARCACHE(3 downto 0),
      s_axi_arid(5 downto 0) => B"000000",
      s_axi_arlen(7 downto 0) => axi_interconnect_1_M00_AXI_ARLEN(7 downto 0),
      s_axi_arlock(0) => axi_interconnect_1_M00_AXI_ARLOCK,
      s_axi_arprot(2 downto 0) => axi_interconnect_1_M00_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => axi_interconnect_1_M00_AXI_ARQOS(3 downto 0),
      s_axi_arready => axi_interconnect_1_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => axi_interconnect_1_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_interconnect_1_M00_AXI_ARVALID,
      s_axi_awaddr(31 downto 0) => axi_interconnect_1_M00_AXI_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => axi_interconnect_1_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_interconnect_1_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awid(5 downto 0) => B"000000",
      s_axi_awlen(7 downto 0) => axi_interconnect_1_M00_AXI_AWLEN(7 downto 0),
      s_axi_awlock(0) => axi_interconnect_1_M00_AXI_AWLOCK,
      s_axi_awprot(2 downto 0) => axi_interconnect_1_M00_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => axi_interconnect_1_M00_AXI_AWQOS(3 downto 0),
      s_axi_awready => axi_interconnect_1_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => axi_interconnect_1_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_interconnect_1_M00_AXI_AWVALID,
      s_axi_bid(5 downto 0) => NLW_axi_mmu_5_s_axi_bid_UNCONNECTED(5 downto 0),
      s_axi_bready => axi_interconnect_1_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_1_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_1_M00_AXI_BVALID,
      s_axi_rdata(127 downto 0) => axi_interconnect_1_M00_AXI_RDATA(127 downto 0),
      s_axi_rid(5 downto 0) => NLW_axi_mmu_5_s_axi_rid_UNCONNECTED(5 downto 0),
      s_axi_rlast => axi_interconnect_1_M00_AXI_RLAST,
      s_axi_rready => axi_interconnect_1_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_1_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_1_M00_AXI_RVALID,
      s_axi_wdata(127 downto 0) => axi_interconnect_1_M00_AXI_WDATA(127 downto 0),
      s_axi_wlast => axi_interconnect_1_M00_AXI_WLAST,
      s_axi_wready => axi_interconnect_1_M00_AXI_WREADY,
      s_axi_wstrb(15 downto 0) => axi_interconnect_1_M00_AXI_WSTRB(15 downto 0),
      s_axi_wvalid => axi_interconnect_1_M00_AXI_WVALID
    );
axi_register_slice_hpm0fpd: component pfm_dynamic_axi_register_slice_hpm0fpd_0
     port map (
      aclk => clkwiz_kernel2_clk_out1,
      aresetn => reset_controllers_interconnect_aresetn,
      m_axi_araddr(31 downto 0) => NLW_axi_register_slice_hpm0fpd_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_axi_register_slice_hpm0fpd_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_axi_register_slice_hpm0fpd_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(15 downto 0) => NLW_axi_register_slice_hpm0fpd_m_axi_arid_UNCONNECTED(15 downto 0),
      m_axi_arlen(7 downto 0) => NLW_axi_register_slice_hpm0fpd_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_axi_register_slice_hpm0fpd_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_axi_register_slice_hpm0fpd_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_axi_register_slice_hpm0fpd_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_axi_register_slice_hpm0fpd_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_axi_register_slice_hpm0fpd_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_arvalid => NLW_axi_register_slice_hpm0fpd_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_axi_register_slice_hpm0fpd_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_axi_register_slice_hpm0fpd_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_axi_register_slice_hpm0fpd_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(15 downto 0) => NLW_axi_register_slice_hpm0fpd_m_axi_awid_UNCONNECTED(15 downto 0),
      m_axi_awlen(7 downto 0) => NLW_axi_register_slice_hpm0fpd_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_axi_register_slice_hpm0fpd_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_axi_register_slice_hpm0fpd_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_axi_register_slice_hpm0fpd_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_axi_register_slice_hpm0fpd_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_axi_register_slice_hpm0fpd_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awvalid => NLW_axi_register_slice_hpm0fpd_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(15 downto 0) => B"0000000000000000",
      m_axi_bready => NLW_axi_register_slice_hpm0fpd_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_bvalid => '0',
      m_axi_rdata(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(15 downto 0) => B"0000000000000000",
      m_axi_rlast => '0',
      m_axi_rready => NLW_axi_register_slice_hpm0fpd_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_rvalid => '0',
      m_axi_wdata(127 downto 0) => NLW_axi_register_slice_hpm0fpd_m_axi_wdata_UNCONNECTED(127 downto 0),
      m_axi_wlast => NLW_axi_register_slice_hpm0fpd_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(15 downto 0) => NLW_axi_register_slice_hpm0fpd_m_axi_wstrb_UNCONNECTED(15 downto 0),
      m_axi_wvalid => NLW_axi_register_slice_hpm0fpd_m_axi_wvalid_UNCONNECTED,
      s_axi_araddr(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => axi_interconnect_0_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_interconnect_0_M00_AXI_ARCACHE(3 downto 0),
      s_axi_arid(15 downto 0) => axi_interconnect_0_M00_AXI_ARID(15 downto 0),
      s_axi_arlen(7 downto 0) => axi_interconnect_0_M00_AXI_ARLEN(7 downto 0),
      s_axi_arlock(0) => axi_interconnect_0_M00_AXI_ARLOCK,
      s_axi_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => axi_interconnect_0_M00_AXI_ARQOS(3 downto 0),
      s_axi_arready => axi_interconnect_0_M00_AXI_ARREADY,
      s_axi_arregion(3 downto 0) => axi_interconnect_0_M00_AXI_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => axi_interconnect_0_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      s_axi_awaddr(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => axi_interconnect_0_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_interconnect_0_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awid(15 downto 0) => axi_interconnect_0_M00_AXI_AWID(15 downto 0),
      s_axi_awlen(7 downto 0) => axi_interconnect_0_M00_AXI_AWLEN(7 downto 0),
      s_axi_awlock(0) => axi_interconnect_0_M00_AXI_AWLOCK,
      s_axi_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => axi_interconnect_0_M00_AXI_AWQOS(3 downto 0),
      s_axi_awready => axi_interconnect_0_M00_AXI_AWREADY,
      s_axi_awregion(3 downto 0) => axi_interconnect_0_M00_AXI_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => axi_interconnect_0_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      s_axi_bid(15 downto 0) => axi_interconnect_0_M00_AXI_BID(15 downto 0),
      s_axi_bready => axi_interconnect_0_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      s_axi_rdata(127 downto 0) => axi_interconnect_0_M00_AXI_RDATA(127 downto 0),
      s_axi_rid(15 downto 0) => axi_interconnect_0_M00_AXI_RID(15 downto 0),
      s_axi_rlast => axi_interconnect_0_M00_AXI_RLAST,
      s_axi_rready => axi_interconnect_0_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      s_axi_wdata(127 downto 0) => axi_interconnect_0_M00_AXI_WDATA(127 downto 0),
      s_axi_wlast => axi_interconnect_0_M00_AXI_WLAST,
      s_axi_wready => axi_interconnect_0_M00_AXI_WREADY,
      s_axi_wstrb(15 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(15 downto 0),
      s_axi_wvalid => axi_interconnect_0_M00_AXI_WVALID
    );
axi_vip_2: component pfm_dynamic_axi_vip_2_0
     port map (
      aclk => clkwiz_kernel2_clk_out1,
      aresetn => reset_controllers_interconnect_aresetn,
      m_axi_araddr(31 downto 0) => axi_vip_2_M_AXI_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => axi_vip_2_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => axi_vip_2_M_AXI_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => axi_vip_2_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock(0) => axi_vip_2_M_AXI_ARLOCK,
      m_axi_arprot(2 downto 0) => axi_vip_2_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => axi_vip_2_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => axi_vip_2_M_AXI_ARREADY,
      m_axi_arregion(3 downto 0) => axi_vip_2_M_AXI_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => axi_vip_2_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => axi_vip_2_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => axi_vip_2_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => axi_vip_2_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => axi_vip_2_M_AXI_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => axi_vip_2_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => axi_vip_2_M_AXI_AWLOCK,
      m_axi_awprot(2 downto 0) => axi_vip_2_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => axi_vip_2_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => axi_vip_2_M_AXI_AWREADY,
      m_axi_awregion(3 downto 0) => axi_vip_2_M_AXI_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => axi_vip_2_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => axi_vip_2_M_AXI_AWVALID,
      m_axi_bready => axi_vip_2_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => axi_vip_2_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => axi_vip_2_M_AXI_BVALID,
      m_axi_rdata(127 downto 0) => axi_vip_2_M_AXI_RDATA(127 downto 0),
      m_axi_rlast => axi_vip_2_M_AXI_RLAST,
      m_axi_rready => axi_vip_2_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => axi_vip_2_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => axi_vip_2_M_AXI_RVALID,
      m_axi_wdata(127 downto 0) => axi_vip_2_M_AXI_WDATA(127 downto 0),
      m_axi_wlast => axi_vip_2_M_AXI_WLAST,
      m_axi_wready => axi_vip_2_M_AXI_WREADY,
      m_axi_wstrb(15 downto 0) => axi_vip_2_M_AXI_WSTRB(15 downto 0),
      m_axi_wvalid => axi_vip_2_M_AXI_WVALID
    );
axi_vip_3: component pfm_dynamic_axi_vip_3_0
     port map (
      aclk => clkwiz_kernel2_clk_out1,
      aresetn => reset_controllers_interconnect_aresetn,
      m_axi_araddr(31 downto 0) => axi_vip_3_M_AXI_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => axi_vip_3_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => axi_vip_3_M_AXI_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => axi_vip_3_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock(0) => axi_vip_3_M_AXI_ARLOCK,
      m_axi_arprot(2 downto 0) => axi_vip_3_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => axi_vip_3_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => axi_vip_3_M_AXI_ARREADY,
      m_axi_arregion(3 downto 0) => axi_vip_3_M_AXI_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => axi_vip_3_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => axi_vip_3_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => axi_vip_3_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => axi_vip_3_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => axi_vip_3_M_AXI_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => axi_vip_3_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => axi_vip_3_M_AXI_AWLOCK,
      m_axi_awprot(2 downto 0) => axi_vip_3_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => axi_vip_3_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => axi_vip_3_M_AXI_AWREADY,
      m_axi_awregion(3 downto 0) => axi_vip_3_M_AXI_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => axi_vip_3_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => axi_vip_3_M_AXI_AWVALID,
      m_axi_bready => axi_vip_3_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => axi_vip_3_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => axi_vip_3_M_AXI_BVALID,
      m_axi_rdata(127 downto 0) => axi_vip_3_M_AXI_RDATA(127 downto 0),
      m_axi_rlast => axi_vip_3_M_AXI_RLAST,
      m_axi_rready => axi_vip_3_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => axi_vip_3_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => axi_vip_3_M_AXI_RVALID,
      m_axi_wdata(127 downto 0) => axi_vip_3_M_AXI_WDATA(127 downto 0),
      m_axi_wlast => axi_vip_3_M_AXI_WLAST,
      m_axi_wready => axi_vip_3_M_AXI_WREADY,
      m_axi_wstrb(15 downto 0) => axi_vip_3_M_AXI_WSTRB(15 downto 0),
      m_axi_wvalid => axi_vip_3_M_AXI_WVALID
    );
axi_vip_4: component pfm_dynamic_axi_vip_4_0
     port map (
      aclk => clkwiz_kernel2_clk_out1,
      aresetn => reset_controllers_interconnect_aresetn,
      m_axi_araddr(31 downto 0) => axi_vip_4_M_AXI_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => axi_vip_4_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => axi_vip_4_M_AXI_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => axi_vip_4_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock(0) => axi_vip_4_M_AXI_ARLOCK,
      m_axi_arprot(2 downto 0) => axi_vip_4_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => axi_vip_4_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => axi_vip_4_M_AXI_ARREADY,
      m_axi_arregion(3 downto 0) => axi_vip_4_M_AXI_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => axi_vip_4_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => axi_vip_4_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => axi_vip_4_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => axi_vip_4_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => axi_vip_4_M_AXI_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => axi_vip_4_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => axi_vip_4_M_AXI_AWLOCK,
      m_axi_awprot(2 downto 0) => axi_vip_4_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => axi_vip_4_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => axi_vip_4_M_AXI_AWREADY,
      m_axi_awregion(3 downto 0) => axi_vip_4_M_AXI_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => axi_vip_4_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => axi_vip_4_M_AXI_AWVALID,
      m_axi_bready => axi_vip_4_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => axi_vip_4_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => axi_vip_4_M_AXI_BVALID,
      m_axi_rdata(127 downto 0) => axi_vip_4_M_AXI_RDATA(127 downto 0),
      m_axi_rlast => axi_vip_4_M_AXI_RLAST,
      m_axi_rready => axi_vip_4_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => axi_vip_4_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => axi_vip_4_M_AXI_RVALID,
      m_axi_wdata(127 downto 0) => axi_vip_4_M_AXI_WDATA(127 downto 0),
      m_axi_wlast => axi_vip_4_M_AXI_WLAST,
      m_axi_wready => axi_vip_4_M_AXI_WREADY,
      m_axi_wstrb(15 downto 0) => axi_vip_4_M_AXI_WSTRB(15 downto 0),
      m_axi_wvalid => axi_vip_4_M_AXI_WVALID
    );
axi_vip_5: component pfm_dynamic_axi_vip_5_0
     port map (
      aclk => clkwiz_kernel2_clk_out1,
      aresetn => reset_controllers_interconnect_aresetn,
      m_axi_araddr(31 downto 0) => axi_vip_5_M_AXI_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => axi_vip_5_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => axi_vip_5_M_AXI_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => axi_vip_5_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock(0) => axi_vip_5_M_AXI_ARLOCK,
      m_axi_arprot(2 downto 0) => axi_vip_5_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => axi_vip_5_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => axi_vip_5_M_AXI_ARREADY,
      m_axi_arregion(3 downto 0) => axi_vip_5_M_AXI_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => axi_vip_5_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => axi_vip_5_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => axi_vip_5_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => axi_vip_5_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => axi_vip_5_M_AXI_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => axi_vip_5_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => axi_vip_5_M_AXI_AWLOCK,
      m_axi_awprot(2 downto 0) => axi_vip_5_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => axi_vip_5_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => axi_vip_5_M_AXI_AWREADY,
      m_axi_awregion(3 downto 0) => axi_vip_5_M_AXI_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => axi_vip_5_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => axi_vip_5_M_AXI_AWVALID,
      m_axi_bready => axi_vip_5_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => axi_vip_5_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => axi_vip_5_M_AXI_BVALID,
      m_axi_rdata(127 downto 0) => axi_vip_5_M_AXI_RDATA(127 downto 0),
      m_axi_rlast => axi_vip_5_M_AXI_RLAST,
      m_axi_rready => axi_vip_5_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => axi_vip_5_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => axi_vip_5_M_AXI_RVALID,
      m_axi_wdata(127 downto 0) => axi_vip_5_M_AXI_WDATA(127 downto 0),
      m_axi_wlast => axi_vip_5_M_AXI_WLAST,
      m_axi_wready => axi_vip_5_M_AXI_WREADY,
      m_axi_wstrb(15 downto 0) => axi_vip_5_M_AXI_WSTRB(15 downto 0),
      m_axi_wvalid => axi_vip_5_M_AXI_WVALID
    );
axi_vip_ctrl_userpf: component pfm_dynamic_axi_vip_ctrl_userpf_0
     port map (
      aclk => clkwiz_sysclks_clk_out2,
      aresetn => expanded_resets_interconnect_aresetn1,
      m_axi_araddr(31 downto 0) => axi_vip_ctrl_userpf_M_AXI_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => axi_vip_ctrl_userpf_M_AXI_ARPROT(2 downto 0),
      m_axi_arready => axi_vip_ctrl_userpf_M_AXI_ARREADY,
      m_axi_arvalid => axi_vip_ctrl_userpf_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => axi_vip_ctrl_userpf_M_AXI_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => axi_vip_ctrl_userpf_M_AXI_AWPROT(2 downto 0),
      m_axi_awready => axi_vip_ctrl_userpf_M_AXI_AWREADY,
      m_axi_awvalid => axi_vip_ctrl_userpf_M_AXI_AWVALID,
      m_axi_bready => axi_vip_ctrl_userpf_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => axi_vip_ctrl_userpf_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => axi_vip_ctrl_userpf_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => axi_vip_ctrl_userpf_M_AXI_RDATA(31 downto 0),
      m_axi_rready => axi_vip_ctrl_userpf_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => axi_vip_ctrl_userpf_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => axi_vip_ctrl_userpf_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => axi_vip_ctrl_userpf_M_AXI_WDATA(31 downto 0),
      m_axi_wready => axi_vip_ctrl_userpf_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => axi_vip_ctrl_userpf_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => axi_vip_ctrl_userpf_M_AXI_WVALID,
      s_axi_araddr(31 downto 0) => regslice_control_userpf_M_AXI_araddr(31 downto 0),
      s_axi_arprot(2 downto 0) => regslice_control_userpf_M_AXI_arprot(2 downto 0),
      s_axi_arready => regslice_control_userpf_M_AXI_arready,
      s_axi_arvalid => regslice_control_userpf_M_AXI_arvalid,
      s_axi_awaddr(31 downto 0) => regslice_control_userpf_M_AXI_awaddr(31 downto 0),
      s_axi_awprot(2 downto 0) => regslice_control_userpf_M_AXI_awprot(2 downto 0),
      s_axi_awready => regslice_control_userpf_M_AXI_awready,
      s_axi_awvalid => regslice_control_userpf_M_AXI_awvalid,
      s_axi_bready => regslice_control_userpf_M_AXI_bready,
      s_axi_bresp(1 downto 0) => regslice_control_userpf_M_AXI_bresp(1 downto 0),
      s_axi_bvalid => regslice_control_userpf_M_AXI_bvalid,
      s_axi_rdata(31 downto 0) => regslice_control_userpf_M_AXI_rdata(31 downto 0),
      s_axi_rready => regslice_control_userpf_M_AXI_rready,
      s_axi_rresp(1 downto 0) => regslice_control_userpf_M_AXI_rresp(1 downto 0),
      s_axi_rvalid => regslice_control_userpf_M_AXI_rvalid,
      s_axi_wdata(31 downto 0) => regslice_control_userpf_M_AXI_wdata(31 downto 0),
      s_axi_wready => regslice_control_userpf_M_AXI_wready,
      s_axi_wstrb(3 downto 0) => regslice_control_userpf_M_AXI_wstrb(3 downto 0),
      s_axi_wvalid => regslice_control_userpf_M_AXI_wvalid
    );
axi_vip_hpm0fpd: component pfm_dynamic_axi_vip_hpm0fpd_0
     port map (
      aclk => clkwiz_kernel2_clk_out1,
      aresetn => reset_controllers_interconnect_aresetn,
      m_axi_araddr(31 downto 0) => axi_vip_1_M_AXI_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => axi_vip_1_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => axi_vip_1_M_AXI_ARCACHE(3 downto 0),
      m_axi_arid(15 downto 0) => axi_vip_1_M_AXI_ARID(15 downto 0),
      m_axi_arlen(7 downto 0) => axi_vip_1_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock(0) => axi_vip_1_M_AXI_ARLOCK,
      m_axi_arprot(2 downto 0) => axi_vip_1_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => axi_vip_1_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => axi_vip_1_M_AXI_ARREADY,
      m_axi_arregion(3 downto 0) => axi_vip_1_M_AXI_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => axi_vip_1_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => axi_vip_1_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => axi_vip_1_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => axi_vip_1_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => axi_vip_1_M_AXI_AWCACHE(3 downto 0),
      m_axi_awid(15 downto 0) => axi_vip_1_M_AXI_AWID(15 downto 0),
      m_axi_awlen(7 downto 0) => axi_vip_1_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => axi_vip_1_M_AXI_AWLOCK,
      m_axi_awprot(2 downto 0) => axi_vip_1_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => axi_vip_1_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => axi_vip_1_M_AXI_AWREADY,
      m_axi_awregion(3 downto 0) => axi_vip_1_M_AXI_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => axi_vip_1_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => axi_vip_1_M_AXI_AWVALID,
      m_axi_bid(15 downto 0) => axi_vip_1_M_AXI_BID(15 downto 0),
      m_axi_bready => axi_vip_1_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => axi_vip_1_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => axi_vip_1_M_AXI_BVALID,
      m_axi_rdata(127 downto 0) => axi_vip_1_M_AXI_RDATA(127 downto 0),
      m_axi_rid(15 downto 0) => axi_vip_1_M_AXI_RID(15 downto 0),
      m_axi_rlast => axi_vip_1_M_AXI_RLAST,
      m_axi_rready => axi_vip_1_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => axi_vip_1_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => axi_vip_1_M_AXI_RVALID,
      m_axi_wdata(127 downto 0) => axi_vip_1_M_AXI_WDATA(127 downto 0),
      m_axi_wlast => axi_vip_1_M_AXI_WLAST,
      m_axi_wready => axi_vip_1_M_AXI_WREADY,
      m_axi_wstrb(15 downto 0) => axi_vip_1_M_AXI_WSTRB(15 downto 0),
      m_axi_wvalid => axi_vip_1_M_AXI_WVALID,
      s_axi_araddr(31 downto 0) => regslice_data_hpm0fpd_M_AXI1_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => regslice_data_hpm0fpd_M_AXI1_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => regslice_data_hpm0fpd_M_AXI1_arcache(3 downto 0),
      s_axi_arid(15 downto 0) => regslice_data_hpm0fpd_M_AXI1_arid(15 downto 0),
      s_axi_arlen(7 downto 0) => regslice_data_hpm0fpd_M_AXI1_arlen(7 downto 0),
      s_axi_arlock(0) => regslice_data_hpm0fpd_M_AXI1_arlock(0),
      s_axi_arprot(2 downto 0) => regslice_data_hpm0fpd_M_AXI1_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => regslice_data_hpm0fpd_M_AXI1_arqos(3 downto 0),
      s_axi_arready => regslice_data_hpm0fpd_M_AXI1_arready,
      s_axi_arregion(3 downto 0) => regslice_data_hpm0fpd_M_AXI1_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => regslice_data_hpm0fpd_M_AXI1_arsize(2 downto 0),
      s_axi_arvalid => regslice_data_hpm0fpd_M_AXI1_arvalid,
      s_axi_awaddr(31 downto 0) => regslice_data_hpm0fpd_M_AXI1_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => regslice_data_hpm0fpd_M_AXI1_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => regslice_data_hpm0fpd_M_AXI1_awcache(3 downto 0),
      s_axi_awid(15 downto 0) => regslice_data_hpm0fpd_M_AXI1_awid(15 downto 0),
      s_axi_awlen(7 downto 0) => regslice_data_hpm0fpd_M_AXI1_awlen(7 downto 0),
      s_axi_awlock(0) => regslice_data_hpm0fpd_M_AXI1_awlock(0),
      s_axi_awprot(2 downto 0) => regslice_data_hpm0fpd_M_AXI1_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => regslice_data_hpm0fpd_M_AXI1_awqos(3 downto 0),
      s_axi_awready => regslice_data_hpm0fpd_M_AXI1_awready,
      s_axi_awregion(3 downto 0) => regslice_data_hpm0fpd_M_AXI1_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => regslice_data_hpm0fpd_M_AXI1_awsize(2 downto 0),
      s_axi_awvalid => regslice_data_hpm0fpd_M_AXI1_awvalid,
      s_axi_bid(15 downto 0) => regslice_data_hpm0fpd_M_AXI1_bid(15 downto 0),
      s_axi_bready => regslice_data_hpm0fpd_M_AXI1_bready,
      s_axi_bresp(1 downto 0) => regslice_data_hpm0fpd_M_AXI1_bresp(1 downto 0),
      s_axi_bvalid => regslice_data_hpm0fpd_M_AXI1_bvalid,
      s_axi_rdata(127 downto 0) => regslice_data_hpm0fpd_M_AXI1_rdata(127 downto 0),
      s_axi_rid(15 downto 0) => regslice_data_hpm0fpd_M_AXI1_rid(15 downto 0),
      s_axi_rlast => regslice_data_hpm0fpd_M_AXI1_rlast,
      s_axi_rready => regslice_data_hpm0fpd_M_AXI1_rready,
      s_axi_rresp(1 downto 0) => regslice_data_hpm0fpd_M_AXI1_rresp(1 downto 0),
      s_axi_rvalid => regslice_data_hpm0fpd_M_AXI1_rvalid,
      s_axi_wdata(127 downto 0) => regslice_data_hpm0fpd_M_AXI1_wdata(127 downto 0),
      s_axi_wlast => regslice_data_hpm0fpd_M_AXI1_wlast,
      s_axi_wready => regslice_data_hpm0fpd_M_AXI1_wready,
      s_axi_wstrb(15 downto 0) => regslice_data_hpm0fpd_M_AXI1_wstrb(15 downto 0),
      s_axi_wvalid => regslice_data_hpm0fpd_M_AXI1_wvalid
    );
debug_bridge_xsdbm: component pfm_dynamic_debug_bridge_xsdbm_0
     port map (
      S_BSCAN_bscanid_en => bscanid_en,
      S_BSCAN_capture => capture,
      S_BSCAN_drck => drck,
      S_BSCAN_reset => reset,
      S_BSCAN_runtest => runtest,
      S_BSCAN_sel => sel,
      S_BSCAN_shift => shift,
      S_BSCAN_tck => tck,
      S_BSCAN_tdi => tdi,
      S_BSCAN_tdo => tdo,
      S_BSCAN_tms => tms,
      S_BSCAN_update => update,
      clk => clkwiz_sysclks_clk_out2
    );
digitcaps_accel_1: component pfm_dynamic_digitcaps_accel_1_0
     port map (
      ap_clk => clkwiz_kernel_clk_out1,
      ap_rst_n => reset_controllers_peripheral_aresetn,
      interrupt => digitcaps_accel_1_interrupt,
      m_axi_gmem0_ARADDR(63 downto 0) => digitcaps_accel_1_m_axi_gmem0_ARADDR(63 downto 0),
      m_axi_gmem0_ARBURST(1 downto 0) => digitcaps_accel_1_m_axi_gmem0_ARBURST(1 downto 0),
      m_axi_gmem0_ARCACHE(3 downto 0) => digitcaps_accel_1_m_axi_gmem0_ARCACHE(3 downto 0),
      m_axi_gmem0_ARLEN(7 downto 0) => digitcaps_accel_1_m_axi_gmem0_ARLEN(7 downto 0),
      m_axi_gmem0_ARLOCK(1 downto 0) => digitcaps_accel_1_m_axi_gmem0_ARLOCK(1 downto 0),
      m_axi_gmem0_ARPROT(2 downto 0) => digitcaps_accel_1_m_axi_gmem0_ARPROT(2 downto 0),
      m_axi_gmem0_ARQOS(3 downto 0) => digitcaps_accel_1_m_axi_gmem0_ARQOS(3 downto 0),
      m_axi_gmem0_ARREADY => digitcaps_accel_1_m_axi_gmem0_ARREADY,
      m_axi_gmem0_ARREGION(3 downto 0) => digitcaps_accel_1_m_axi_gmem0_ARREGION(3 downto 0),
      m_axi_gmem0_ARSIZE(2 downto 0) => digitcaps_accel_1_m_axi_gmem0_ARSIZE(2 downto 0),
      m_axi_gmem0_ARVALID => digitcaps_accel_1_m_axi_gmem0_ARVALID,
      m_axi_gmem0_AWADDR(63 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem0_AWADDR_UNCONNECTED(63 downto 0),
      m_axi_gmem0_AWBURST(1 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem0_AWBURST_UNCONNECTED(1 downto 0),
      m_axi_gmem0_AWCACHE(3 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem0_AWCACHE_UNCONNECTED(3 downto 0),
      m_axi_gmem0_AWLEN(7 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem0_AWLEN_UNCONNECTED(7 downto 0),
      m_axi_gmem0_AWLOCK(1 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem0_AWLOCK_UNCONNECTED(1 downto 0),
      m_axi_gmem0_AWPROT(2 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem0_AWPROT_UNCONNECTED(2 downto 0),
      m_axi_gmem0_AWQOS(3 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem0_AWQOS_UNCONNECTED(3 downto 0),
      m_axi_gmem0_AWREADY => '0',
      m_axi_gmem0_AWREGION(3 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem0_AWREGION_UNCONNECTED(3 downto 0),
      m_axi_gmem0_AWSIZE(2 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem0_AWSIZE_UNCONNECTED(2 downto 0),
      m_axi_gmem0_AWVALID => NLW_digitcaps_accel_1_m_axi_gmem0_AWVALID_UNCONNECTED,
      m_axi_gmem0_BREADY => NLW_digitcaps_accel_1_m_axi_gmem0_BREADY_UNCONNECTED,
      m_axi_gmem0_BRESP(1 downto 0) => B"00",
      m_axi_gmem0_BVALID => '0',
      m_axi_gmem0_RDATA(511 downto 0) => digitcaps_accel_1_m_axi_gmem0_RDATA(511 downto 0),
      m_axi_gmem0_RLAST => digitcaps_accel_1_m_axi_gmem0_RLAST,
      m_axi_gmem0_RREADY => digitcaps_accel_1_m_axi_gmem0_RREADY,
      m_axi_gmem0_RRESP(1 downto 0) => digitcaps_accel_1_m_axi_gmem0_RRESP(1 downto 0),
      m_axi_gmem0_RVALID => digitcaps_accel_1_m_axi_gmem0_RVALID,
      m_axi_gmem0_WDATA(511 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem0_WDATA_UNCONNECTED(511 downto 0),
      m_axi_gmem0_WLAST => NLW_digitcaps_accel_1_m_axi_gmem0_WLAST_UNCONNECTED,
      m_axi_gmem0_WREADY => '0',
      m_axi_gmem0_WSTRB(63 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem0_WSTRB_UNCONNECTED(63 downto 0),
      m_axi_gmem0_WVALID => NLW_digitcaps_accel_1_m_axi_gmem0_WVALID_UNCONNECTED,
      m_axi_gmem1_ARADDR(63 downto 0) => digitcaps_accel_1_m_axi_gmem1_ARADDR(63 downto 0),
      m_axi_gmem1_ARBURST(1 downto 0) => digitcaps_accel_1_m_axi_gmem1_ARBURST(1 downto 0),
      m_axi_gmem1_ARCACHE(3 downto 0) => digitcaps_accel_1_m_axi_gmem1_ARCACHE(3 downto 0),
      m_axi_gmem1_ARLEN(7 downto 0) => digitcaps_accel_1_m_axi_gmem1_ARLEN(7 downto 0),
      m_axi_gmem1_ARLOCK(1 downto 0) => digitcaps_accel_1_m_axi_gmem1_ARLOCK(1 downto 0),
      m_axi_gmem1_ARPROT(2 downto 0) => digitcaps_accel_1_m_axi_gmem1_ARPROT(2 downto 0),
      m_axi_gmem1_ARQOS(3 downto 0) => digitcaps_accel_1_m_axi_gmem1_ARQOS(3 downto 0),
      m_axi_gmem1_ARREADY => digitcaps_accel_1_m_axi_gmem1_ARREADY,
      m_axi_gmem1_ARREGION(3 downto 0) => digitcaps_accel_1_m_axi_gmem1_ARREGION(3 downto 0),
      m_axi_gmem1_ARSIZE(2 downto 0) => digitcaps_accel_1_m_axi_gmem1_ARSIZE(2 downto 0),
      m_axi_gmem1_ARVALID => digitcaps_accel_1_m_axi_gmem1_ARVALID,
      m_axi_gmem1_AWADDR(63 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem1_AWADDR_UNCONNECTED(63 downto 0),
      m_axi_gmem1_AWBURST(1 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem1_AWBURST_UNCONNECTED(1 downto 0),
      m_axi_gmem1_AWCACHE(3 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem1_AWCACHE_UNCONNECTED(3 downto 0),
      m_axi_gmem1_AWLEN(7 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem1_AWLEN_UNCONNECTED(7 downto 0),
      m_axi_gmem1_AWLOCK(1 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem1_AWLOCK_UNCONNECTED(1 downto 0),
      m_axi_gmem1_AWPROT(2 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem1_AWPROT_UNCONNECTED(2 downto 0),
      m_axi_gmem1_AWQOS(3 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem1_AWQOS_UNCONNECTED(3 downto 0),
      m_axi_gmem1_AWREADY => '0',
      m_axi_gmem1_AWREGION(3 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem1_AWREGION_UNCONNECTED(3 downto 0),
      m_axi_gmem1_AWSIZE(2 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem1_AWSIZE_UNCONNECTED(2 downto 0),
      m_axi_gmem1_AWVALID => NLW_digitcaps_accel_1_m_axi_gmem1_AWVALID_UNCONNECTED,
      m_axi_gmem1_BREADY => NLW_digitcaps_accel_1_m_axi_gmem1_BREADY_UNCONNECTED,
      m_axi_gmem1_BRESP(1 downto 0) => B"00",
      m_axi_gmem1_BVALID => '0',
      m_axi_gmem1_RDATA(511 downto 0) => digitcaps_accel_1_m_axi_gmem1_RDATA(511 downto 0),
      m_axi_gmem1_RLAST => digitcaps_accel_1_m_axi_gmem1_RLAST,
      m_axi_gmem1_RREADY => digitcaps_accel_1_m_axi_gmem1_RREADY,
      m_axi_gmem1_RRESP(1 downto 0) => digitcaps_accel_1_m_axi_gmem1_RRESP(1 downto 0),
      m_axi_gmem1_RVALID => digitcaps_accel_1_m_axi_gmem1_RVALID,
      m_axi_gmem1_WDATA(511 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem1_WDATA_UNCONNECTED(511 downto 0),
      m_axi_gmem1_WLAST => NLW_digitcaps_accel_1_m_axi_gmem1_WLAST_UNCONNECTED,
      m_axi_gmem1_WREADY => '0',
      m_axi_gmem1_WSTRB(63 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem1_WSTRB_UNCONNECTED(63 downto 0),
      m_axi_gmem1_WVALID => NLW_digitcaps_accel_1_m_axi_gmem1_WVALID_UNCONNECTED,
      m_axi_gmem2_ARADDR(63 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem2_ARADDR_UNCONNECTED(63 downto 0),
      m_axi_gmem2_ARBURST(1 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem2_ARBURST_UNCONNECTED(1 downto 0),
      m_axi_gmem2_ARCACHE(3 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem2_ARCACHE_UNCONNECTED(3 downto 0),
      m_axi_gmem2_ARLEN(7 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem2_ARLEN_UNCONNECTED(7 downto 0),
      m_axi_gmem2_ARLOCK(1 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem2_ARLOCK_UNCONNECTED(1 downto 0),
      m_axi_gmem2_ARPROT(2 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem2_ARPROT_UNCONNECTED(2 downto 0),
      m_axi_gmem2_ARQOS(3 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem2_ARQOS_UNCONNECTED(3 downto 0),
      m_axi_gmem2_ARREADY => '0',
      m_axi_gmem2_ARREGION(3 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem2_ARREGION_UNCONNECTED(3 downto 0),
      m_axi_gmem2_ARSIZE(2 downto 0) => NLW_digitcaps_accel_1_m_axi_gmem2_ARSIZE_UNCONNECTED(2 downto 0),
      m_axi_gmem2_ARVALID => NLW_digitcaps_accel_1_m_axi_gmem2_ARVALID_UNCONNECTED,
      m_axi_gmem2_AWADDR(63 downto 0) => digitcaps_accel_1_m_axi_gmem2_AWADDR(63 downto 0),
      m_axi_gmem2_AWBURST(1 downto 0) => digitcaps_accel_1_m_axi_gmem2_AWBURST(1 downto 0),
      m_axi_gmem2_AWCACHE(3 downto 0) => digitcaps_accel_1_m_axi_gmem2_AWCACHE(3 downto 0),
      m_axi_gmem2_AWLEN(7 downto 0) => digitcaps_accel_1_m_axi_gmem2_AWLEN(7 downto 0),
      m_axi_gmem2_AWLOCK(1 downto 0) => digitcaps_accel_1_m_axi_gmem2_AWLOCK(1 downto 0),
      m_axi_gmem2_AWPROT(2 downto 0) => digitcaps_accel_1_m_axi_gmem2_AWPROT(2 downto 0),
      m_axi_gmem2_AWQOS(3 downto 0) => digitcaps_accel_1_m_axi_gmem2_AWQOS(3 downto 0),
      m_axi_gmem2_AWREADY => digitcaps_accel_1_m_axi_gmem2_AWREADY,
      m_axi_gmem2_AWREGION(3 downto 0) => digitcaps_accel_1_m_axi_gmem2_AWREGION(3 downto 0),
      m_axi_gmem2_AWSIZE(2 downto 0) => digitcaps_accel_1_m_axi_gmem2_AWSIZE(2 downto 0),
      m_axi_gmem2_AWVALID => digitcaps_accel_1_m_axi_gmem2_AWVALID,
      m_axi_gmem2_BREADY => digitcaps_accel_1_m_axi_gmem2_BREADY,
      m_axi_gmem2_BRESP(1 downto 0) => digitcaps_accel_1_m_axi_gmem2_BRESP(1 downto 0),
      m_axi_gmem2_BVALID => digitcaps_accel_1_m_axi_gmem2_BVALID,
      m_axi_gmem2_RDATA(511 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      m_axi_gmem2_RLAST => '0',
      m_axi_gmem2_RREADY => NLW_digitcaps_accel_1_m_axi_gmem2_RREADY_UNCONNECTED,
      m_axi_gmem2_RRESP(1 downto 0) => B"00",
      m_axi_gmem2_RVALID => '0',
      m_axi_gmem2_WDATA(511 downto 0) => digitcaps_accel_1_m_axi_gmem2_WDATA(511 downto 0),
      m_axi_gmem2_WLAST => digitcaps_accel_1_m_axi_gmem2_WLAST,
      m_axi_gmem2_WREADY => digitcaps_accel_1_m_axi_gmem2_WREADY,
      m_axi_gmem2_WSTRB(63 downto 0) => digitcaps_accel_1_m_axi_gmem2_WSTRB(63 downto 0),
      m_axi_gmem2_WVALID => digitcaps_accel_1_m_axi_gmem2_WVALID,
      s_axi_control_ARADDR(5 downto 0) => interconnect_axilite_user_slr1_M01_AXI_ARADDR(5 downto 0),
      s_axi_control_ARREADY => interconnect_axilite_user_slr1_M01_AXI_ARREADY,
      s_axi_control_ARVALID => interconnect_axilite_user_slr1_M01_AXI_ARVALID,
      s_axi_control_AWADDR(5 downto 0) => interconnect_axilite_user_slr1_M01_AXI_AWADDR(5 downto 0),
      s_axi_control_AWREADY => interconnect_axilite_user_slr1_M01_AXI_AWREADY,
      s_axi_control_AWVALID => interconnect_axilite_user_slr1_M01_AXI_AWVALID,
      s_axi_control_BREADY => interconnect_axilite_user_slr1_M01_AXI_BREADY,
      s_axi_control_BRESP(1 downto 0) => interconnect_axilite_user_slr1_M01_AXI_BRESP(1 downto 0),
      s_axi_control_BVALID => interconnect_axilite_user_slr1_M01_AXI_BVALID,
      s_axi_control_RDATA(31 downto 0) => interconnect_axilite_user_slr1_M01_AXI_RDATA(31 downto 0),
      s_axi_control_RREADY => interconnect_axilite_user_slr1_M01_AXI_RREADY,
      s_axi_control_RRESP(1 downto 0) => interconnect_axilite_user_slr1_M01_AXI_RRESP(1 downto 0),
      s_axi_control_RVALID => interconnect_axilite_user_slr1_M01_AXI_RVALID,
      s_axi_control_WDATA(31 downto 0) => interconnect_axilite_user_slr1_M01_AXI_WDATA(31 downto 0),
      s_axi_control_WREADY => interconnect_axilite_user_slr1_M01_AXI_WREADY,
      s_axi_control_WSTRB(3 downto 0) => interconnect_axilite_user_slr1_M01_AXI_WSTRB(3 downto 0),
      s_axi_control_WVALID => interconnect_axilite_user_slr1_M01_AXI_WVALID
    );
interconnect_axifull_1_user_slr1: entity work.pfm_dynamic_interconnect_axifull_1_user_slr1_0
     port map (
      ACLK => '0',
      ARESETN => '0',
      M00_ACLK => '0',
      M00_ARESETN => '0',
      M00_AXI_araddr(31 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(7 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => interconnect_axifull_1_user_slr1_M00_AXI_ARLOCK,
      M00_AXI_arprot(2 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => interconnect_axifull_1_user_slr1_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => interconnect_axifull_1_user_slr1_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(7 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => interconnect_axifull_1_user_slr1_M00_AXI_AWLOCK,
      M00_AXI_awprot(2 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => interconnect_axifull_1_user_slr1_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => interconnect_axifull_1_user_slr1_M00_AXI_AWVALID,
      M00_AXI_bready => interconnect_axifull_1_user_slr1_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => interconnect_axifull_1_user_slr1_M00_AXI_BVALID,
      M00_AXI_rdata(127 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_RDATA(127 downto 0),
      M00_AXI_rlast => interconnect_axifull_1_user_slr1_M00_AXI_RLAST,
      M00_AXI_rready => interconnect_axifull_1_user_slr1_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => interconnect_axifull_1_user_slr1_M00_AXI_RVALID,
      M00_AXI_wdata(127 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_WDATA(127 downto 0),
      M00_AXI_wlast => interconnect_axifull_1_user_slr1_M00_AXI_WLAST,
      M00_AXI_wready => interconnect_axifull_1_user_slr1_M00_AXI_WREADY,
      M00_AXI_wstrb(15 downto 0) => interconnect_axifull_1_user_slr1_M00_AXI_WSTRB(15 downto 0),
      M00_AXI_wvalid => interconnect_axifull_1_user_slr1_M00_AXI_WVALID,
      S00_ACLK => clkwiz_kernel2_clk_out1,
      S00_ARESETN => reset_controllers_interconnect_aresetn,
      S00_AXI_araddr(31 downto 0) => axi_vip_2_M_AXI_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_vip_2_M_AXI_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_vip_2_M_AXI_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_vip_2_M_AXI_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => axi_vip_2_M_AXI_ARLOCK,
      S00_AXI_arprot(2 downto 0) => axi_vip_2_M_AXI_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => axi_vip_2_M_AXI_ARQOS(3 downto 0),
      S00_AXI_arready => axi_vip_2_M_AXI_ARREADY,
      S00_AXI_arregion(3 downto 0) => axi_vip_2_M_AXI_ARREGION(3 downto 0),
      S00_AXI_arsize(2 downto 0) => axi_vip_2_M_AXI_ARSIZE(2 downto 0),
      S00_AXI_arvalid => axi_vip_2_M_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => axi_vip_2_M_AXI_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_vip_2_M_AXI_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_vip_2_M_AXI_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => axi_vip_2_M_AXI_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => axi_vip_2_M_AXI_AWLOCK,
      S00_AXI_awprot(2 downto 0) => axi_vip_2_M_AXI_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => axi_vip_2_M_AXI_AWQOS(3 downto 0),
      S00_AXI_awready => axi_vip_2_M_AXI_AWREADY,
      S00_AXI_awregion(3 downto 0) => axi_vip_2_M_AXI_AWREGION(3 downto 0),
      S00_AXI_awsize(2 downto 0) => axi_vip_2_M_AXI_AWSIZE(2 downto 0),
      S00_AXI_awvalid => axi_vip_2_M_AXI_AWVALID,
      S00_AXI_bready => axi_vip_2_M_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_vip_2_M_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_vip_2_M_AXI_BVALID,
      S00_AXI_rdata(127 downto 0) => axi_vip_2_M_AXI_RDATA(127 downto 0),
      S00_AXI_rlast => axi_vip_2_M_AXI_RLAST,
      S00_AXI_rready => axi_vip_2_M_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_vip_2_M_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_vip_2_M_AXI_RVALID,
      S00_AXI_wdata(127 downto 0) => axi_vip_2_M_AXI_WDATA(127 downto 0),
      S00_AXI_wlast => axi_vip_2_M_AXI_WLAST,
      S00_AXI_wready => axi_vip_2_M_AXI_WREADY,
      S00_AXI_wstrb(15 downto 0) => axi_vip_2_M_AXI_WSTRB(15 downto 0),
      S00_AXI_wvalid => axi_vip_2_M_AXI_WVALID
    );
interconnect_axifull_2_user_slr1: entity work.pfm_dynamic_interconnect_axifull_2_user_slr1_0
     port map (
      ACLK => '0',
      ARESETN => '0',
      M00_ACLK => clkwiz_kernel2_clk_out1,
      M00_ARESETN => reset_controllers_interconnect_aresetn,
      M00_AXI_araddr(63 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_ARADDR(63 downto 0),
      M00_AXI_arburst(1 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(7 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => interconnect_axifull_2_user_slr1_M00_AXI_ARLOCK,
      M00_AXI_arprot(2 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => interconnect_axifull_2_user_slr1_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => interconnect_axifull_2_user_slr1_M00_AXI_ARVALID,
      M00_AXI_awaddr(63 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_AWADDR(63 downto 0),
      M00_AXI_awburst(1 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(7 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => interconnect_axifull_2_user_slr1_M00_AXI_AWLOCK,
      M00_AXI_awprot(2 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => interconnect_axifull_2_user_slr1_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => interconnect_axifull_2_user_slr1_M00_AXI_AWVALID,
      M00_AXI_bready => interconnect_axifull_2_user_slr1_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => interconnect_axifull_2_user_slr1_M00_AXI_BVALID,
      M00_AXI_rdata(127 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_RDATA(127 downto 0),
      M00_AXI_rlast => interconnect_axifull_2_user_slr1_M00_AXI_RLAST,
      M00_AXI_rready => interconnect_axifull_2_user_slr1_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => interconnect_axifull_2_user_slr1_M00_AXI_RVALID,
      M00_AXI_wdata(127 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_WDATA(127 downto 0),
      M00_AXI_wlast => interconnect_axifull_2_user_slr1_M00_AXI_WLAST,
      M00_AXI_wready => interconnect_axifull_2_user_slr1_M00_AXI_WREADY,
      M00_AXI_wstrb(15 downto 0) => interconnect_axifull_2_user_slr1_M00_AXI_WSTRB(15 downto 0),
      M00_AXI_wvalid => interconnect_axifull_2_user_slr1_M00_AXI_WVALID,
      S00_ACLK => '0',
      S00_ARESETN => '0',
      S00_AXI_araddr(31 downto 0) => axi_vip_3_M_AXI_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_vip_3_M_AXI_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_vip_3_M_AXI_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_vip_3_M_AXI_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => axi_vip_3_M_AXI_ARLOCK,
      S00_AXI_arprot(2 downto 0) => axi_vip_3_M_AXI_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => axi_vip_3_M_AXI_ARQOS(3 downto 0),
      S00_AXI_arready => axi_vip_3_M_AXI_ARREADY,
      S00_AXI_arregion(3 downto 0) => axi_vip_3_M_AXI_ARREGION(3 downto 0),
      S00_AXI_arsize(2 downto 0) => axi_vip_3_M_AXI_ARSIZE(2 downto 0),
      S00_AXI_arvalid => axi_vip_3_M_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => axi_vip_3_M_AXI_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_vip_3_M_AXI_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_vip_3_M_AXI_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => axi_vip_3_M_AXI_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => axi_vip_3_M_AXI_AWLOCK,
      S00_AXI_awprot(2 downto 0) => axi_vip_3_M_AXI_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => axi_vip_3_M_AXI_AWQOS(3 downto 0),
      S00_AXI_awready => axi_vip_3_M_AXI_AWREADY,
      S00_AXI_awregion(3 downto 0) => axi_vip_3_M_AXI_AWREGION(3 downto 0),
      S00_AXI_awsize(2 downto 0) => axi_vip_3_M_AXI_AWSIZE(2 downto 0),
      S00_AXI_awvalid => axi_vip_3_M_AXI_AWVALID,
      S00_AXI_bready => axi_vip_3_M_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_vip_3_M_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_vip_3_M_AXI_BVALID,
      S00_AXI_rdata(127 downto 0) => axi_vip_3_M_AXI_RDATA(127 downto 0),
      S00_AXI_rlast => axi_vip_3_M_AXI_RLAST,
      S00_AXI_rready => axi_vip_3_M_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_vip_3_M_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_vip_3_M_AXI_RVALID,
      S00_AXI_wdata(127 downto 0) => axi_vip_3_M_AXI_WDATA(127 downto 0),
      S00_AXI_wlast => axi_vip_3_M_AXI_WLAST,
      S00_AXI_wready => axi_vip_3_M_AXI_WREADY,
      S00_AXI_wstrb(15 downto 0) => axi_vip_3_M_AXI_WSTRB(15 downto 0),
      S00_AXI_wvalid => axi_vip_3_M_AXI_WVALID,
      S01_ACLK => clkwiz_kernel_clk_out1,
      S01_ARESETN => reset_controllers_peripheral_aresetn,
      S01_AXI_araddr(63 downto 0) => digitcaps_accel_1_m_axi_gmem0_ARADDR(63 downto 0),
      S01_AXI_arburst(1 downto 0) => digitcaps_accel_1_m_axi_gmem0_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => digitcaps_accel_1_m_axi_gmem0_ARCACHE(3 downto 0),
      S01_AXI_arlen(7 downto 0) => digitcaps_accel_1_m_axi_gmem0_ARLEN(7 downto 0),
      S01_AXI_arlock(1) => '0',
      S01_AXI_arlock(0) => digitcaps_accel_1_m_axi_gmem0_ARLOCK(0),
      S01_AXI_arprot(2 downto 0) => digitcaps_accel_1_m_axi_gmem0_ARPROT(2 downto 0),
      S01_AXI_arqos(3 downto 0) => digitcaps_accel_1_m_axi_gmem0_ARQOS(3 downto 0),
      S01_AXI_arready => digitcaps_accel_1_m_axi_gmem0_ARREADY,
      S01_AXI_arregion(3 downto 0) => digitcaps_accel_1_m_axi_gmem0_ARREGION(3 downto 0),
      S01_AXI_arsize(2 downto 0) => digitcaps_accel_1_m_axi_gmem0_ARSIZE(2 downto 0),
      S01_AXI_arvalid => digitcaps_accel_1_m_axi_gmem0_ARVALID,
      S01_AXI_rdata(511 downto 0) => digitcaps_accel_1_m_axi_gmem0_RDATA(511 downto 0),
      S01_AXI_rlast => digitcaps_accel_1_m_axi_gmem0_RLAST,
      S01_AXI_rready => digitcaps_accel_1_m_axi_gmem0_RREADY,
      S01_AXI_rresp(1 downto 0) => digitcaps_accel_1_m_axi_gmem0_RRESP(1 downto 0),
      S01_AXI_rvalid => digitcaps_accel_1_m_axi_gmem0_RVALID,
      S02_ACLK => '0',
      S02_ARESETN => '0',
      S02_AXI_araddr(63 downto 0) => digitcaps_accel_1_m_axi_gmem1_ARADDR(63 downto 0),
      S02_AXI_arburst(1 downto 0) => digitcaps_accel_1_m_axi_gmem1_ARBURST(1 downto 0),
      S02_AXI_arcache(3 downto 0) => digitcaps_accel_1_m_axi_gmem1_ARCACHE(3 downto 0),
      S02_AXI_arlen(7 downto 0) => digitcaps_accel_1_m_axi_gmem1_ARLEN(7 downto 0),
      S02_AXI_arlock(1) => '0',
      S02_AXI_arlock(0) => digitcaps_accel_1_m_axi_gmem1_ARLOCK(0),
      S02_AXI_arprot(2 downto 0) => digitcaps_accel_1_m_axi_gmem1_ARPROT(2 downto 0),
      S02_AXI_arqos(3 downto 0) => digitcaps_accel_1_m_axi_gmem1_ARQOS(3 downto 0),
      S02_AXI_arready => digitcaps_accel_1_m_axi_gmem1_ARREADY,
      S02_AXI_arregion(3 downto 0) => digitcaps_accel_1_m_axi_gmem1_ARREGION(3 downto 0),
      S02_AXI_arsize(2 downto 0) => digitcaps_accel_1_m_axi_gmem1_ARSIZE(2 downto 0),
      S02_AXI_arvalid => digitcaps_accel_1_m_axi_gmem1_ARVALID,
      S02_AXI_rdata(511 downto 0) => digitcaps_accel_1_m_axi_gmem1_RDATA(511 downto 0),
      S02_AXI_rlast => digitcaps_accel_1_m_axi_gmem1_RLAST,
      S02_AXI_rready => digitcaps_accel_1_m_axi_gmem1_RREADY,
      S02_AXI_rresp(1 downto 0) => digitcaps_accel_1_m_axi_gmem1_RRESP(1 downto 0),
      S02_AXI_rvalid => digitcaps_accel_1_m_axi_gmem1_RVALID
    );
interconnect_axilite_user_slr1: entity work.pfm_dynamic_interconnect_axilite_user_slr1_0
     port map (
      ACLK => '0',
      ARESETN => '0',
      M00_ACLK => '0',
      M00_ARESETN => '0',
      M00_AXI_araddr(8 downto 0) => interconnect_axilite_user_M00_AXI_ARADDR(8 downto 0),
      M00_AXI_arready => interconnect_axilite_user_M00_AXI_ARREADY,
      M00_AXI_arvalid => interconnect_axilite_user_M00_AXI_ARVALID,
      M00_AXI_awaddr(8 downto 0) => interconnect_axilite_user_M00_AXI_AWADDR(8 downto 0),
      M00_AXI_awready => interconnect_axilite_user_M00_AXI_AWREADY,
      M00_AXI_awvalid => interconnect_axilite_user_M00_AXI_AWVALID,
      M00_AXI_bready => interconnect_axilite_user_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => interconnect_axilite_user_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => interconnect_axilite_user_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => interconnect_axilite_user_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => interconnect_axilite_user_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => interconnect_axilite_user_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => interconnect_axilite_user_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => interconnect_axilite_user_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => interconnect_axilite_user_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => interconnect_axilite_user_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => interconnect_axilite_user_M00_AXI_WVALID,
      M01_ACLK => clkwiz_kernel_clk_out1,
      M01_ARESETN => reset_controllers_peripheral_aresetn,
      M01_AXI_araddr(5 downto 0) => interconnect_axilite_user_slr1_M01_AXI_ARADDR(5 downto 0),
      M01_AXI_arready => interconnect_axilite_user_slr1_M01_AXI_ARREADY,
      M01_AXI_arvalid => interconnect_axilite_user_slr1_M01_AXI_ARVALID,
      M01_AXI_awaddr(5 downto 0) => interconnect_axilite_user_slr1_M01_AXI_AWADDR(5 downto 0),
      M01_AXI_awready => interconnect_axilite_user_slr1_M01_AXI_AWREADY,
      M01_AXI_awvalid => interconnect_axilite_user_slr1_M01_AXI_AWVALID,
      M01_AXI_bready => interconnect_axilite_user_slr1_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => interconnect_axilite_user_slr1_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => interconnect_axilite_user_slr1_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => interconnect_axilite_user_slr1_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => interconnect_axilite_user_slr1_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => interconnect_axilite_user_slr1_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => interconnect_axilite_user_slr1_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => interconnect_axilite_user_slr1_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => interconnect_axilite_user_slr1_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => interconnect_axilite_user_slr1_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => interconnect_axilite_user_slr1_M01_AXI_WVALID,
      S00_ACLK => clkwiz_sysclks_clk_out2,
      S00_ARESETN => ARESETN_1,
      S00_AXI_araddr(31 downto 0) => axi_vip_ctrl_userpf_M_AXI_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => axi_vip_ctrl_userpf_M_AXI_ARPROT(2 downto 0),
      S00_AXI_arready => axi_vip_ctrl_userpf_M_AXI_ARREADY,
      S00_AXI_arvalid => axi_vip_ctrl_userpf_M_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => axi_vip_ctrl_userpf_M_AXI_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => axi_vip_ctrl_userpf_M_AXI_AWPROT(2 downto 0),
      S00_AXI_awready => axi_vip_ctrl_userpf_M_AXI_AWREADY,
      S00_AXI_awvalid => axi_vip_ctrl_userpf_M_AXI_AWVALID,
      S00_AXI_bready => axi_vip_ctrl_userpf_M_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_vip_ctrl_userpf_M_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_vip_ctrl_userpf_M_AXI_BVALID,
      S00_AXI_rdata(31 downto 0) => axi_vip_ctrl_userpf_M_AXI_RDATA(31 downto 0),
      S00_AXI_rready => axi_vip_ctrl_userpf_M_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_vip_ctrl_userpf_M_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_vip_ctrl_userpf_M_AXI_RVALID,
      S00_AXI_wdata(31 downto 0) => axi_vip_ctrl_userpf_M_AXI_WDATA(31 downto 0),
      S00_AXI_wready => axi_vip_ctrl_userpf_M_AXI_WREADY,
      S00_AXI_wstrb(3 downto 0) => axi_vip_ctrl_userpf_M_AXI_WSTRB(3 downto 0),
      S00_AXI_wvalid => axi_vip_ctrl_userpf_M_AXI_WVALID
    );
interrupt_concat: entity work.pfm_dynamic_interrupt_concat_imp_1SXQM3I
     port map (
      interrupt => digitcaps_accel_1_interrupt,
      xlconcat_interrupt_dout(0) => \^xlconcat_interrupt_dout\(0)
    );
reset_controllers: entity work.pfm_dynamic_reset_controllers_imp_UJLAET
     port map (
      clkwiz_kernel2_clk_out1 => clkwiz_kernel2_clk_out1,
      clkwiz_kernel2_locked => clkwiz_kernel2_locked,
      clkwiz_kernel3_clk_out => clkwiz_kernel3_clk_out,
      clkwiz_kernel4_clk_out => clkwiz_kernel4_clk_out,
      clkwiz_kernel5_clk_out => clkwiz_kernel5_clk_out,
      clkwiz_kernel6_clk_out => clkwiz_kernel6_clk_out,
      clkwiz_kernel_clk_out1 => clkwiz_kernel_clk_out1,
      clkwiz_kernel_locked => clkwiz_kernel_locked,
      clkwiz_sysclks_clk_out2 => clkwiz_sysclks_clk_out2,
      clkwiz_sysclks_locked => clkwiz_sysclks_locked,
      peripheral_aresetn(0) => reset_controllers_peripheral_aresetn,
      pr_reset_n(0) => pr_reset_n(0),
      psreset_gate_pr_control_interconnect_aresetn(0) => ARESETN_1,
      psreset_gate_pr_control_peripheral_aresetn(0) => expanded_resets_interconnect_aresetn1,
      psreset_gate_pr_kernel2_interconnect_aresetn_0(0) => reset_controllers_interconnect_aresetn
    );
end STRUCTURE;
