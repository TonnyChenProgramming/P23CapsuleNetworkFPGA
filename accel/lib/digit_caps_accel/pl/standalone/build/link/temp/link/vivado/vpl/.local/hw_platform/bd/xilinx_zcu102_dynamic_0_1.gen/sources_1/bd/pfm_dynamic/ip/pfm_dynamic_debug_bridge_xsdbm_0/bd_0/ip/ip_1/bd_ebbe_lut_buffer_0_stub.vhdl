-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3524922 Thu Apr 14 16:29:35 MDT 2022
-- Date        : Fri Apr 15 17:14:47 2022
-- Host        : 399467ad205a running 64-bit CentOS Linux release 7.4.1708 (Core)
-- Command     : write_vhdl -force -mode synth_stub
--               /proj/xbb/xrt-embedded/2022.1/hw/2022.1_0415_0430/Xilinx_Official_Platforms/xilinx_zcu102_base_dfx/hw/build/xilinx_zcu102_dynamic_0_1/xilinx_zcu102_dynamic_0_1.gen/sources_1/bd/pfm_dynamic/ip/pfm_dynamic_debug_bridge_xsdbm_0/bd_0/ip/ip_1/bd_ebbe_lut_buffer_0_stub.vhdl
-- Design      : bd_ebbe_lut_buffer_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_ebbe_lut_buffer_0 is
  Port ( 
    tdi_i : in STD_LOGIC;
    tms_i : in STD_LOGIC;
    tck_i : in STD_LOGIC;
    drck_i : in STD_LOGIC;
    sel_i : in STD_LOGIC;
    shift_i : in STD_LOGIC;
    update_i : in STD_LOGIC;
    capture_i : in STD_LOGIC;
    runtest_i : in STD_LOGIC;
    reset_i : in STD_LOGIC;
    bscanid_en_i : in STD_LOGIC;
    tdo_o : out STD_LOGIC;
    tdi_o : out STD_LOGIC;
    tms_o : out STD_LOGIC;
    tck_o : out STD_LOGIC;
    drck_o : out STD_LOGIC;
    sel_o : out STD_LOGIC;
    shift_o : out STD_LOGIC;
    update_o : out STD_LOGIC;
    capture_o : out STD_LOGIC;
    runtest_o : out STD_LOGIC;
    reset_o : out STD_LOGIC;
    bscanid_en_o : out STD_LOGIC;
    tdo_i : in STD_LOGIC
  );

end bd_ebbe_lut_buffer_0;

architecture stub of bd_ebbe_lut_buffer_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "tdi_i,tms_i,tck_i,drck_i,sel_i,shift_i,update_i,capture_i,runtest_i,reset_i,bscanid_en_i,tdo_o,tdi_o,tms_o,tck_o,drck_o,sel_o,shift_o,update_o,capture_o,runtest_o,reset_o,bscanid_en_o,tdo_i";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "lut_buffer_v2_0_0_lut_buffer,Vivado 2022.1";
begin
end;
