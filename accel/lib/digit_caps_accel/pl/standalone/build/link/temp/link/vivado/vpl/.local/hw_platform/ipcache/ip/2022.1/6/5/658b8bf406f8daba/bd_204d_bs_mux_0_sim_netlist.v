// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3524922 Thu Apr 14 16:29:35 MDT 2022
// Date        : Fri Apr 15 17:15:07 2022
// Host        : 399467ad205a running 64-bit CentOS Linux release 7.4.1708 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_204d_bs_mux_0_sim_netlist.v
// Design      : bd_204d_bs_mux_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_204d_bs_mux_0,bs_mux_v1_0_0_bs_mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bs_mux_v1_0_0_bs_mux,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (mux_ctrl_update,
    mux_ctrl_capture,
    mux_ctrl_reset,
    mux_ctrl_runtest,
    mux_ctrl_tck,
    mux_ctrl_tms,
    mux_ctrl_tdi,
    mux_ctrl_sel,
    mux_ctrl_shift,
    mux_ctrl_drck,
    mux_ctrl_bscanid_en,
    mux_ctrl_tdo,
    prim_update,
    prim_capture,
    prim_reset,
    prim_runtest,
    prim_tck,
    prim_tms,
    prim_tdi,
    prim_sel,
    prim_shift,
    prim_drck,
    prim_bscanid_en,
    prim_tdo,
    soft_update,
    soft_capture,
    soft_reset,
    soft_runtest,
    soft_tck,
    soft_tms,
    soft_tdi,
    soft_sel,
    soft_shift,
    soft_drck,
    soft_bscanid_en,
    soft_tdo,
    update,
    capture,
    reset,
    runtest,
    tck,
    tms,
    tdi,
    sel,
    shift,
    drck,
    bscanid_en,
    tdo,
    mux);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 mux_ctrl_bs UPDATE" *) input mux_ctrl_update;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 mux_ctrl_bs CAPTURE" *) input mux_ctrl_capture;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 mux_ctrl_bs RESET" *) input mux_ctrl_reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 mux_ctrl_bs RUNTEST" *) input mux_ctrl_runtest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 mux_ctrl_bs TCK" *) input mux_ctrl_tck;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 mux_ctrl_bs TMS" *) input mux_ctrl_tms;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 mux_ctrl_bs TDI" *) input mux_ctrl_tdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 mux_ctrl_bs SEL" *) input mux_ctrl_sel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 mux_ctrl_bs SHIFT" *) input mux_ctrl_shift;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 mux_ctrl_bs DRCK" *) input mux_ctrl_drck;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 mux_ctrl_bs BSCANID_EN" *) input mux_ctrl_bscanid_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 mux_ctrl_bs TDO" *) output mux_ctrl_tdo;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 prim_bscan UPDATE" *) input prim_update;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 prim_bscan CAPTURE" *) input prim_capture;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 prim_bscan RESET" *) input prim_reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 prim_bscan RUNTEST" *) input prim_runtest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 prim_bscan TCK" *) input prim_tck;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 prim_bscan TMS" *) input prim_tms;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 prim_bscan TDI" *) input prim_tdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 prim_bscan SEL" *) input prim_sel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 prim_bscan SHIFT" *) input prim_shift;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 prim_bscan DRCK" *) input prim_drck;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 prim_bscan BSCANID_EN" *) input prim_bscanid_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 prim_bscan TDO" *) output prim_tdo;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 soft_bscan UPDATE" *) input soft_update;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 soft_bscan CAPTURE" *) input soft_capture;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 soft_bscan RESET" *) input soft_reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 soft_bscan RUNTEST" *) input soft_runtest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 soft_bscan TCK" *) input soft_tck;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 soft_bscan TMS" *) input soft_tms;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 soft_bscan TDI" *) input soft_tdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 soft_bscan SEL" *) input soft_sel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 soft_bscan SHIFT" *) input soft_shift;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 soft_bscan DRCK" *) input soft_drck;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 soft_bscan BSCANID_EN" *) input soft_bscanid_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 soft_bscan TDO" *) output soft_tdo;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan UPDATE" *) output update;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE" *) output capture;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RESET" *) output reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST" *) output runtest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TCK" *) output tck;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TMS" *) output tms;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDI" *) output tdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SEL" *) output sel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SHIFT" *) output shift;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan DRCK" *) output drck;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan BSCANID_en" *) output bscanid_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDO" *) input tdo;
  output mux;

  wire bscanid_en;
  wire capture;
  wire drck;
  wire mux;
  wire mux_ctrl_bscanid_en;
  wire mux_ctrl_capture;
  wire mux_ctrl_drck;
  wire mux_ctrl_reset;
  wire mux_ctrl_runtest;
  wire mux_ctrl_sel;
  wire mux_ctrl_shift;
  wire mux_ctrl_tck;
  wire mux_ctrl_tdi;
  wire mux_ctrl_tdo;
  wire mux_ctrl_tms;
  wire mux_ctrl_update;
  wire prim_bscanid_en;
  wire prim_capture;
  wire prim_drck;
  wire prim_reset;
  wire prim_runtest;
  wire prim_sel;
  wire prim_shift;
  wire prim_tck;
  wire prim_tdi;
  wire prim_tdo;
  wire prim_tms;
  wire prim_update;
  wire reset;
  wire runtest;
  wire sel;
  wire shift;
  wire soft_bscanid_en;
  wire soft_capture;
  wire soft_drck;
  wire soft_reset;
  wire soft_runtest;
  wire soft_sel;
  wire soft_shift;
  wire soft_tck;
  wire soft_tdi;
  wire soft_tdo;
  wire soft_tms;
  wire soft_update;
  wire tck;
  wire tdi;
  wire tdo;
  wire tms;
  wire update;

  (* C_BSCANID = "76547072" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bs_mux_v1_0_0_bs_mux inst
       (.bscanid_en(bscanid_en),
        .capture(capture),
        .drck(drck),
        .mux(mux),
        .mux_ctrl_bscanid_en(mux_ctrl_bscanid_en),
        .mux_ctrl_capture(mux_ctrl_capture),
        .mux_ctrl_drck(mux_ctrl_drck),
        .mux_ctrl_reset(mux_ctrl_reset),
        .mux_ctrl_runtest(mux_ctrl_runtest),
        .mux_ctrl_sel(mux_ctrl_sel),
        .mux_ctrl_shift(mux_ctrl_shift),
        .mux_ctrl_tck(mux_ctrl_tck),
        .mux_ctrl_tdi(mux_ctrl_tdi),
        .mux_ctrl_tdo(mux_ctrl_tdo),
        .mux_ctrl_tms(mux_ctrl_tms),
        .mux_ctrl_update(mux_ctrl_update),
        .prim_bscanid_en(prim_bscanid_en),
        .prim_capture(prim_capture),
        .prim_drck(prim_drck),
        .prim_reset(prim_reset),
        .prim_runtest(prim_runtest),
        .prim_sel(prim_sel),
        .prim_shift(prim_shift),
        .prim_tck(prim_tck),
        .prim_tdi(prim_tdi),
        .prim_tdo(prim_tdo),
        .prim_tms(prim_tms),
        .prim_update(prim_update),
        .reset(reset),
        .runtest(runtest),
        .sel(sel),
        .shift(shift),
        .soft_bscanid_en(soft_bscanid_en),
        .soft_capture(soft_capture),
        .soft_drck(soft_drck),
        .soft_reset(soft_reset),
        .soft_runtest(soft_runtest),
        .soft_sel(soft_sel),
        .soft_shift(soft_shift),
        .soft_tck(soft_tck),
        .soft_tdi(soft_tdi),
        .soft_tdo(soft_tdo),
        .soft_tms(soft_tms),
        .soft_update(soft_update),
        .tck(tck),
        .tdi(tdi),
        .tdo(tdo),
        .tms(tms),
        .update(update));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
dj3myi2P4Zq377NWgb8RooE3OsX52AxV0CBtRRtjXEyVa01m6jaHmayBapgy7qjl0ZWoSUYlGmeM
j+r6dPHdIoOEOM7PdYb4tdXXl4itc+PW6quJfJdSNS2N1xSJWizD4Mcd/3r/KdCCc2QkdoLYMw6X
6unea++qI7vSjln//Tc=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1SS3kPnT3/ZxncKaI++xWCayVQaNOot4RgQALGnBGXcdDDBefi0heg2kcj7PFwJUYCyTQ3Y926ce
D0nLarihbOvzC8cTXWBJFYV2Ae9HAoykviWqdNrC2AG+B1ZxsCsuannz8BzTAGfmDdyuGudtdR1Y
itI3Ox48rNYbowVsdPajA4P1Gf5N9wMTOX2+RRYzCRr6zgPLyw7TXDNJ87vObDLB1mHEJFZuBFwc
AVP65uMTLTUKNbyhDSjVON0k71JKuOfOrHSInpjt92hp8W6DwWEIXa1xALHClQvifl4rdHs6xtYC
/FBL8XkPzo6kab1LMrFYENYPlPiPLXdgfWkbrg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
dWWig1ZVbdTWtMibuZFhw/59RhYEZtoWILkJv25WhDZR5qhicT0pjzwcwEkslhYWYLhYYAab4H5W
qNrMQk5EO7IbF41WhJslvDXkyyzVr9O1GJaf4YDoX6gcR3R8ZvjWjEuvnu1MpWgenEJ/CKgVmWbe
9vPeSnO8pcmhqTwjLrM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eKWmhekL88PD5Sdj/J/KJeLTfcsPiPdBObns9NOG746lrlOAcLi32clP2Z+viqkELA/T81dxMDBi
KMVVOqoj6S6321yBQfjGBAy3cY/Bv7QEZRnA/3nu9Th5rXtfgH4T+/6eCvWyEb4+yztBlY2lO2Ae
GoR/ebXiT1xofqgUwNlbh0kekYmWoCvThVXzqDmGVv461QlkeTzy+9lq53QjeH9Y1a6JzETTxU5b
Ho/XZktli3wbzycWk3fWwK53eDGh4YvICHNXNPz3zASjaoTKmJw/TmFHQECq6FnO9nvHZvcPGD3I
w39R97xfP9/IbNkGVl+fbFRmEoSPlNsoziEOOw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
4YqJrwHiOoMXESylxxjTrgHF2UJJalaSKzFoo3RVjb8gLFwp6CU8x9okvdxq/c6t7FdO+OxRCaqZ
wXKX0v9iQUyg7Ku7cR5Bp4qBJEXcGdRbzBBaiI4eiK8glgtDWYYSmKHvEqUyfHZ4AwdoFAYFbMd0
ayMssSnmp+WhA2QEpy7BEmlPehRXA4gQqElZfbQzI9/tCg2hIh3/ftu8Rg6uw72yqEeNZfgiK3PE
zH6CoeNk+7/LKYIaq9ecCGKtnw4FyQYBcbW3a10ktAeoj1w/3Cq0tOO5Qaxydtay+Zmcur0h0Rpo
UB2sOXJi4YRGydSFvkfqFXw2sEIoymAaSxPwTg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
k6dyf1VXfjvB2kToDuz19JT0nKgXn5Dckd8UewwCR0x0G0zBVMC1gkWyT9t//YViHlO2L4kUQR2Y
1CmvBhyWhULug+1Ili/HqCI0mpQOymBlpeCSa/y+/RyKQKhTJEslDD+v6snBbjMAW2g6icXMSq+Z
oGWdhWizTgNFgExC17jque3GiElnGYcoB3+vZrhkSXgKtAtCo6p5oirLerL7wIY1RWQ9rUvBzSXo
X16jm1hmkCO8jbr3igAZsfkZsJOIxizkZ0h1Fo+zkUXbcziIF+doM5+30n9RAAGA2bFN1Wccd1Vi
SxNK9cQx5845mPpKK85+0whcGZZxCPsJuWU0Xw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
au0AerYyFPyhjjOVPgCaORxLmd6oRWH59Wjyo9n2rsrL8j6BFhPRzh+2ROgEzULUAcvlqSIVct3e
dJl2PWfQDxXO/xPQR4QRluCEM1sMsJwYE4Mc7Gy/d9o+RVfL8S2sC+53aaPWf6TuVZdJkGSKSqVg
UyGhRiQY3hnbcKvq+BzYakQkrSbAAgQ60AfTzzPsv3clEBJAgRjf/I77vArENtfAX6OTyf+oJaUd
EMxOs+1K5ldRA6kDeoNuEF+y2CrIq3rlcz+6zcny8j6aYTY6m+PKa/Ral3AVktU6GJ6XBWZ1SdMN
+mMa+YZV27tIunUqdg8mDqkBnXT4SIsshxWs7A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
sdqiXdE3hT1pvaX917qXrOpNQHbxsFxb4xWZybu5nQDe2UEHbRnK4CapRvsBxtkAffbtgYN6k0r4
VoiSrrhI4j1UL9ySQUNMYcSdLn8G6AdMIp1BRkIARaktxa7qjtR/pJjWvBR6K9bV5EPSVj5L/19N
0/7yfL+Nuz36o82y/Aszs7S6ozMwQNllciItlkIVgUvwslY+/NOK7a9YLxM84cgDsEaH57cF9ZeT
ZP6S8B+uygx6VXFV54DpzRiUypfOQR8ZjUOYKZ6FtoZmN1qL9yxiVpctV/TzdY3AHBF++UqzVaiS
savb5J7hWJjHNDrTCOX/UogD9XvMlr1jC4YQZUhEFTGN6WNmxewFOyVEZXuJRieHVRvGQ5GrCGPf
0N/s9kFPmROQUR+Y9Li8UVwRuYGXJV3jj5zBFstgGxykLqboj1yusZEkE5snb1gJuYFI1dUavhCA
/OEUTOo6ZFe/KGKqtH6pQOzgmaS7Kgf68VpaWh9ry0dox3cKascrigDc

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PmZoMCEzEGSe1AO+dmsoztessB9pnXn9DkkucB1HH7q0MKxbYynWiNJD37L6Uj9QPEByy1oxWGZb
+y9UU9i6N4Zb8pdbpSMv3jF1XGNQ6PkNKC68Ffz5WmKwQr/qXnBpWBTXVlgTZ8yC190033Q2+zqC
QFkXH2qVtC3QZ316RGWvUapV/zyIaw+BY0WmfoSg46dYSQjB1V6D4+PvH8fo5ixCbSgar6RKCpeU
5Rcpdi3k3fTuAuVtHYQllHMsY0JoMvZh9MxcX46XdX03ZbnNz+h8iGkj8Iu/KYhn4GxGWKJJ58EU
licYdHQs0TnN66ECfBp0iADG/pWBWSdBq2DGtA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21584)
`pragma protect data_block
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
`pragma protect end_protected
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
