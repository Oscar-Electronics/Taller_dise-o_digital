// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr 28 10:57:50 2026
// Host        : ASHG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               {c:/Users/anshr/Proyecto2/RepoTallerDigital/Taller_dise-o_digital/Laboratorio
//               2/Camino1c/project_1/project_1.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v}
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
