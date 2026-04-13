// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Apr 13 10:51:48 2026
// Host        : ASHG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/anshr/Proyecto2a/Microproceador/Microproceador.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27408)
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
