// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3524922 Thu Apr 14 16:29:35 MDT 2022
// Date        : Fri Apr 15 17:14:47 2022
// Host        : 399467ad205a running 64-bit CentOS Linux release 7.4.1708 (Core)
// Command     : write_verilog -force -mode funcsim
//               /proj/xbb/xrt-embedded/2022.1/hw/2022.1_0415_0430/Xilinx_Official_Platforms/xilinx_zcu102_base_dfx/hw/build/xilinx_zcu102_dynamic_0_1/xilinx_zcu102_dynamic_0_1.gen/sources_1/bd/pfm_dynamic/ip/pfm_dynamic_debug_bridge_xsdbm_0/bd_0/ip/ip_1/bd_ebbe_lut_buffer_0_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2992)
`pragma protect data_block
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
oCNK0qb8yIzVgx9ucVBloYy0YTAYEPIYCqCPMA==
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
