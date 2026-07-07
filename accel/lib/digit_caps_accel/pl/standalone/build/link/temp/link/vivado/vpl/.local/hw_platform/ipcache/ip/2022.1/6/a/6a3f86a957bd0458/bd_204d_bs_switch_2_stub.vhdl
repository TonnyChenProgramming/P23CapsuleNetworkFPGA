-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3524922 Thu Apr 14 16:29:35 MDT 2022
-- Date        : Fri Apr 15 17:15:17 2022
-- Host        : 399467ad205a running 64-bit CentOS Linux release 7.4.1708 (Core)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_204d_bs_switch_2_stub.vhdl
-- Design      : bd_204d_bs_switch_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    drck_0 : out STD_LOGIC;
    reset_0 : out STD_LOGIC;
    sel_0 : out STD_LOGIC;
    capture_0 : out STD_LOGIC;
    shift_0 : out STD_LOGIC;
    update_0 : out STD_LOGIC;
    tdi_0 : out STD_LOGIC;
    runtest_0 : out STD_LOGIC;
    tck_0 : out STD_LOGIC;
    tms_0 : out STD_LOGIC;
    bscanid_en_0 : out STD_LOGIC;
    tdo_0 : in STD_LOGIC;
    drck_1 : out STD_LOGIC;
    reset_1 : out STD_LOGIC;
    sel_1 : out STD_LOGIC;
    capture_1 : out STD_LOGIC;
    shift_1 : out STD_LOGIC;
    update_1 : out STD_LOGIC;
    tdi_1 : out STD_LOGIC;
    runtest_1 : out STD_LOGIC;
    tck_1 : out STD_LOGIC;
    tms_1 : out STD_LOGIC;
    bscanid_en_1 : out STD_LOGIC;
    tdo_1 : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "drck_0,reset_0,sel_0,capture_0,shift_0,update_0,tdi_0,runtest_0,tck_0,tms_0,bscanid_en_0,tdo_0,drck_1,reset_1,sel_1,capture_1,shift_1,update_1,tdi_1,runtest_1,tck_1,tms_1,bscanid_en_1,tdo_1";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bs_switch_v1_0_0_bs_switch,Vivado 2022.1";
begin
end;
