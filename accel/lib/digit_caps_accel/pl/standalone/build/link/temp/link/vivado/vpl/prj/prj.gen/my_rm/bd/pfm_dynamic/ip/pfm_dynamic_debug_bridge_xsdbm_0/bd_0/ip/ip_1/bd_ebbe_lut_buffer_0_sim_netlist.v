// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3524922 Thu Apr 14 16:29:35 MDT 2022
// Date        : Fri Apr 15 17:14:46 2022
// Host        : 399467ad205a running 64-bit CentOS Linux release 7.4.1708 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top bd_ebbe_lut_buffer_0 -prefix
//               bd_ebbe_lut_buffer_0_ bd_ebbe_lut_buffer_0_sim_netlist.v
// Design      : bd_ebbe_lut_buffer_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_ebbe_lut_buffer_0,lut_buffer_v2_0_0_lut_buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "lut_buffer_v2_0_0_lut_buffer,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module bd_ebbe_lut_buffer_0
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
  bd_ebbe_lut_buffer_0_lut_buffer_v2_0_0_lut_buffer inst
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2944)
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
