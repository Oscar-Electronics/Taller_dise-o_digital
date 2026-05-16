// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat May 16 11:42:32 2026
// Host        : ASHG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/anshr/Laboratorio
//               3/Camino1c/project_1/project_1.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v}
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
