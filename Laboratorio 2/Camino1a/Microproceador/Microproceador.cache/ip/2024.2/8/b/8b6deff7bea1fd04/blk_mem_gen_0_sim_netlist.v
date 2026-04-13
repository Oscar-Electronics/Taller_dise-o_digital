// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Apr 13 10:51:47 2026
// Host        : ASHG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.622 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27424)
`pragma protect data_block
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
rz8h+9dVRQ==
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
