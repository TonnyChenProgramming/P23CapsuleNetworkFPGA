// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3524922 Thu Apr 14 16:29:35 MDT 2022
// Date        : Fri Apr 15 17:14:46 2022
// Host        : 399467ad205a running 64-bit CentOS Linux release 7.4.1708 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_ebbe_lut_buffer_0_sim_netlist.v
// Design      : bd_ebbe_lut_buffer_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_ebbe_lut_buffer_0,lut_buffer_v2_0_0_lut_buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "lut_buffer_v2_0_0_lut_buffer,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (tdi_i,
    tms_i,
    tck_i,
    drck_i,
    sel_i,
    shift_i,
    update_i,
    capture_i,
    runtest_i,
    reset_i,
    bscanid_en_i,
    tdo_o,
    tdi_o,
    tms_o,
    tck_o,
    drck_o,
    sel_o,
    shift_o,
    update_o,
    capture_o,
    runtest_o,
    reset_o,
    bscanid_en_o,
    tdo_i);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDI" *) input tdi_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TMS" *) input tms_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TCK" *) input tck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan DRCK" *) input drck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SEL" *) input sel_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SHIFT" *) input shift_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan UPDATE" *) input update_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan CAPTURE" *) input capture_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RUNTEST" *) input runtest_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RESET" *) input reset_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan BSCANID_EN" *) input bscanid_en_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDO" *) output tdo_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDI" *) output tdi_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TMS" *) output tms_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TCK" *) output tck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan DRCK" *) output drck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SEL" *) output sel_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SHIFT" *) output shift_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan UPDATE" *) output update_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE" *) output capture_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST" *) output runtest_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RESET" *) output reset_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan BSCANID_EN" *) output bscanid_en_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDO" *) input tdo_i;

  wire bscanid_en_i;
  wire bscanid_en_o;
  wire capture_i;
  wire capture_o;
  wire drck_i;
  wire drck_o;
  wire reset_i;
  wire reset_o;
  wire runtest_i;
  wire runtest_o;
  wire sel_i;
  wire sel_o;
  wire shift_i;
  wire shift_o;
  wire tck_i;
  wire tck_o;
  wire tdi_i;
  wire tdi_o;
  wire tdo_i;
  wire tdo_o;
  wire tms_i;
  wire tms_o;
  wire update_i;
  wire update_o;
  wire [31:0]NLW_inst_bscanid_o_UNCONNECTED;

  (* C_EN_BSCANID_VEC = "0" *) 
  (* DONT_TOUCH *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lut_buffer_v2_0_0_lut_buffer inst
       (.bscanid_en_i(bscanid_en_i),
        .bscanid_en_o(bscanid_en_o),
        .bscanid_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bscanid_o(NLW_inst_bscanid_o_UNCONNECTED[31:0]),
        .capture_i(capture_i),
        .capture_o(capture_o),
        .drck_i(drck_i),
        .drck_o(drck_o),
        .reset_i(reset_i),
        .reset_o(reset_o),
        .runtest_i(runtest_i),
        .runtest_o(runtest_o),
        .sel_i(sel_i),
        .sel_o(sel_o),
        .shift_i(shift_i),
        .shift_o(shift_o),
        .tck_i(tck_i),
        .tck_o(tck_o),
        .tdi_i(tdi_i),
        .tdi_o(tdi_o),
        .tdo_i(tdo_i),
        .tdo_o(tdo_o),
        .tms_i(tms_i),
        .tms_o(tms_o),
        .update_i(update_i),
        .update_o(update_o));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
JlhOikf6zhU0V7vgvEPyBjLM2Aus40t0mKXF9MIENn/7xcXo9ffyKca2Zh9rf6Bm7N9ihBjfzD0H
3z8uRKFcceE/F7G4qvmekniaxir6UxmzY7V6at8TXgSrQfu7kj5pF7Jbavwf2NHs7kjurpyhotN2
XniGN1gLARaknjPASWc=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SIedKa/1vBYosf/FDoQPXBjcv0zYa2R8tihqBCQNL1y7n9rAyswiMafHS19omtC8HNHAETXk/HNe
JnB+W0hzhhMy3Adi0OsZeMx7zVcp5qlebqRmgQ23oxfbYp9m6aO6D9Vuu2qSOpM62jrA5dUZbHgQ
fc2Ar/KSPfOMaVe4ofEb9ThcHiLiQXvMo66u0tPoDiGhO1d3oAsmUE7/PDvn4gzPb88KyckAadHB
3rGoic3J0S2sI1RlJspiRul6j+xb1QwvtBJkB1mAVomtY+VnRfw/KzcjKRrGa81L7JoJpu9uQGW2
HAuAQ8CDjFpRw/XFApypiycz5+50O+wC4FNV4A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
X8RWCf0ms+Ctp/SdK7KNnaC3fLV25yX76llJKXarHek+9m62CuHBbjZ3pYHHIA3UfgB/0nW3ZCi1
OXJFStAK16fUMpr9zfBgZay+qi8fgf4ZDjUxeTo7Hj/8kOPQkonEBEBK5k0IiFYJQ8R4qDlTL4Zg
q+FBVrZxpGqt9JT7emQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oVXTDPxwnXLKSCh36mZT+S8NGNIxIrDSVIKjGQZ1pZLCaeFWSR4sOPMpE7qCjYqGMNl7g2RZzDRz
JGP3iczsLQQk5xn+l0tKR38K0DfmZO2oHfpbU5zPkQYlREA2xlw/FUSmuo1LyrOI2FjvRXKgT8v1
siP7xKCfCcKPBLrSAUFKVt6sfH8uuEOYVgzpeOBRLB2vlVQl/rSa3Xa68AGxxNyKA7Nnp6Oj5w59
BxOO0PNw/xKJ3JZTlEj3VAzEWgMOIru3ljDjWk4aMvPCnnfjgzyoJsjS3HGK6oPYh6yusRUUBXjo
uFLKwqp5xiYUUVcdD0MVneRgMaPyW4VDDVRdBw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fwq2vc1Ytg0nrOGYXTeCpqMxolwmYF989uYmquhVkBQMXdVn99SkwwBeKKuGQpxuJbFof0JFCnRV
nOCmqMJzImxJjanDtJoswPH6lAZD/J3A1bOx3YStNwWafvnkbrlXbzgPvdYRBT5T31vuBrsSQF3d
RyKWZ5URwXRcpMvg7KSG5pON2muzbFIMBXzaS0vt8yNZv6rVbS5AkE9z6oMKv1mZXIN20OIUmEfz
vKXDVWeWlpZYHFSC6aldfzc6fcDpKZDfLeSYH6OnyBUoT2X8RN0xM8EVzMOs2fRU6it1oekR8kK4
puCLg+uAtEHqGr8uCwd0bLYBxc4Foo/1BHUW5w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jNhLxS2wJVipUHTw3xN17MeN8CEml3rxwaVufbCqG88FQpl3a5ZoCE0Sryhyx+C24Q3fzueH0OJF
WdFD9Cli8zII5rPNwWZBKSkzbDo4QKbt57vwuULex36uAt7Hj2FF0PgOK8t8Na/IrkOVst0m9t5d
lSowKCN81cC4tbB1X7F0zVyaXTCsBbj1N9ka2Lv2ZqhubFgR8+4YQxnxzkcMfvahO3fWRVdPVoZV
+QP03OU0s/aJdcUiXDUpfAIV+b2WUoKoCfYwYFU8Kn5OBQSdWPtOZTcKzbW2dkTFdRc2tMSv8ebf
HPO7jbEzhEtaoGguqGGPSKf9y7r6bBu5zjTzxg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vXsAcX8VLJK6EEhgUQvJOeAedHZ1/dZqXHp0UqrUYgTZHNaFZwPJbiwxvvMiHf6elWPf5WCo8k41
FYmhnunTPSTFmPBxRxW5FUJgTlwqfHBpeK28+b2uRRJ1O2cWyRnoIW2t2UZ7HYG0VBNnPAyfdKEN
66Xqc4SRzUIkB//GJD5vlmRyZGiB0kkjmeT0g40wmpWThhM5c0fh383cAlRUsPhC6AS5t6A1HCXH
diZo8P5TBZlegawpFlHt31MwGnt8A+Lohw4JPyUsjwZwA8X//waad2Munn2fC0KeYYZHzo5axvjJ
QMHU/2FHIL2WM32KJmxrPBwa+l/m8M9d7GVOQQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gPHDAuytSJLfdis/XAtUKelrFZy6oneGxomr46fEyMZ6N8iAlhjz/LitoADPOyll3Wycqa+BQSze
ecnbG6/lNCeQDT6TqNV62q3Elldtb0sSIUPSyVJ//td18cj9prSZ6SqFhsySw0f+lehJ2BiMVGST
nD+E0TmpI1iyGg5whhPfsuJ9Xfn1yoYWZL8hQDgP31k5QbJsmvVlpk0ucEM7TeQavxdey07Lw60v
c4JTKrnaIuBWZeCDBPgMaQdPdVjqaXEwYuMrNRGxEUrVvoZ5gGSX4fq737EiuNDPgOZ0Qd598qAl
JySVc10DasMJvFcNroJS6H417QC4ISg61AFkJfKo6Zt7Ct4+OlufGpzXWtY6YNPMvWQDxmntDpEz
8lKPWw0MQw2pMeGKJhxe8ua4NOMgsfJxg27rP96Cx3Ta6DTwYNL32G1cmxFSOxnshcoo+UIHg/XL
a2zHHIJAiCeeX0qqup/fus8bysd2uB25m7Wf7GCUreuTdEpbfbWCbkDq

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NweYaquVCql+6YhkQF/giGft5INr/lLPHTwqj2TGq7wYww5ipgYtIFYnUek5WU0vQ7qxhZMj+94b
HrTrjQ2W0WKE+HX/da0raQAThxh2L4chTQuwlKaPfAufX4qLTynusCSTTEnXcRfuWj53huAOVeet
R8BhF0ZUIP1KBQjvkzIqUmrMIJ6wZUats3UpEz8v+dgmtKuWxvYRXbHcVaKDrACmQqwwcZ9ML4fU
/EOIhfaHBCCJR7fKAxiJL5XIr3t7jgfFtcd1aV0hsI6TaVdgHuVZwOKU0gJMXgL/Apx6eS6Ad0Ay
K6yZkAVqeGGJABBfM10Xl5/3MZPW4i7fC/JCUw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2960)
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
