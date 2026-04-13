// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Apr 13 10:51:48 2026
// Host        : ASHG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/anshr/Proyecto2a/Microproceador/Microproceador.gen/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
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
  blk_mem_gen_1_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
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
        .wea(wea),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27936)
`pragma protect data_block
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
d5azbFoN
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
