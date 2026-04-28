// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr 28 01:19:17 2026
// Host        : DESKTOP-HJBI5HF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/raque/Documents/Proyectos_Taller_Digitales/project_1/project_1.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
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
PmOVqCaQvWjiHOz/H8MYl1LZO8OaLLq/6roODlS/j3LJkgUNYyaj+L6ABHFlnI3GptP7SVZpokTr
emIzwDlhsup2C4GEZudMXMJ3Ly3bNXcdOoaNKUyPBSLI4FRU5YyKHvorERcQZHez6/GeBzn+59MP
AA9epi0CQYR6WwVsgiO2mAK3QwedDSmlt1UtBTPGwZqMmwXHzcUR6TGBK4HtTvilQ2IBCwgQJuw4
UjcoiigtdYgBYgO3T9g8rj/CSgZAgJhyJwjnOosxOkYaUuJplz1Q5AbzeKjAt3gq7j9or4gz4BhY
PW9eECxQ5SiPT+k+17MPWiA72p8jtf4Z+p51s8SJnFwgb8pv3Pd3viapTERDnOyhcDyfv2hOlX3c
WWwVzekZmifF4qBYkt5zdR0lqEGKm/bt1Zqlb4YihU9lkS72R5ERXBDLHOXjsOzLXU++ZeJ3KG2r
7w91XTxfDbodoBcO7x601dMPr3IidMcQA6yxH35pzSo2TEZgNCEcgT76k9jNsW3LSdM5MKKJDd1D
vbvJJgM7tr3OUEUy/vC2I61wHCnRseK7037kBR2NaBGkr6f3isHXyyb7a2JMJCgrSPgoOJZKzPYE
5jGYJEmxrJ8rCMHNkp3Eum4qqFzywpntdcQg43OPbFBZRg9oCyhjdUZbl9aH6xM0exBLANOygkBs
prk/J8fkY48qJLjtgUrMFd3aOSxxmonOF9qYEqwWLw6SYUuU+ea6loscRv25XWXVEJYEaUssONd7
Ae8WtmnbjM6v6hfaPzH1gMsqyT2/kPpPUZGcWJ/4qD8IPTtzMSwQMQikXkhq2N2ZRImxRx1ieSMT
H+qI5SbsCUlyPbc58j598SOMlhbVZkDbbmIu0KVPqqvGO2h482PV5HcVimm2l5eFWBTK1ChAKYz0
Sc7rVlii2SXZqMOK3vIlJDfv7z+f3NdvzaU4B3JuGu1Im07vbEpIyePCnm8ZlFw5b8vTY30uYaN6
iEvq7/QfNOWna8UsR2mnPTFsi6+eeIA93rxljKRXleUmmc5wjs+5ko6G00MzXPA7JN8uBePf6MDY
DzjxC0SmasTpAN80tLqq1T+C9UVFSIE8jXffqV2Rhhw8fVz1lOA8MIAqVDiLDW9NB7Cmt9aGwAaB
7zWBt8yrbYTfQz89K13MObMSq6YGR5GcmajcmVgpSVanxQLj29U0FXJGhS4phEKvezN56mSUJKnU
01sm0/kyCOF9qxvHCVBmYt1lV/YsUGPfrFqBsB2Erbt9UzlZswulLAsq1ypAVMy7FDuF4oZRTOLw
AvnOZX9nZZ5FqtqYkV3p8F8V32oprPZouhLupsUNHfe4jM6ELp6LW3dKmBLGMBK+C2XWlTP2y/pL
8d8yqUNAo4jl79c7B2BvW1U0sFUJJS2L2Fh7IJECBWeqfS/pwvpqH+TIK7tWh2LjnQ/WIoRW/IDD
Rw4r7SE03/UhpX20IGV3IbOxnDOLQHSrzRjdW+jQZEbxfaxi2Fef8wQBZ6eSjKljFfwOSSh72zX4
44HWkN5mImagtpF8IGZnH6rasEaFm+YH3Z1XS07v6VEHlZk3zDzaAduX8WdVlvIoJl/W4zpevqcm
NZk6Wzd27jRfsZ6niiw4t7zc8dfHX/BeX3HlnGU9s4G0zeesnzXSo+PPdiEUiq/KaetGjPEUiffK
O3gw35GCV8Sp4kotQmSKgNKbBGne1aAOGToc+Efpo1zt8bZe/A/6f7ZCSbs8B6ave6usJTTOZo09
sSfw7RFu2xUcO3zmaOWhlDRdsNxuKU4GqT25UlHkTYZYXVXVhKSKnQHzacpD2cBAfIs0e2mWDejg
V+3gmIje1vITiv0uSXxVqznZtA100ugQZekHWecfQvYI0YYPdxaY7YakaZ3mxx6fECXFRSK76lCF
y6T35tnl3rU4ZXmtGS+AaNE4IlwHqN823mwV1lqNakraOQjmGZFdIsjhxC7yPoApfdspW2KltU8Z
F+4tSSb1uzHFKw+9zGdVgJqcPtb0d+nuzrYvQesmEwfW3tCEi4KezuSPdilfQiS7VSVu8kPBAfiB
uWtMzIG+2Gvwqi9sfiErog/f9FTlnHzarT8qOrwnJxMfIgRI73PuX+ebBJnSnBD7hD9fd6GeAVP+
ylSxzulxr68lnndoFQsH/Jq461uzE3H3FOngPIedyXiZ3yPCoFCItR2Fi/OVSTBnBKW7SgjLb1bg
xQpcTvyPFWvYI2eMHmBeooX8BDb+MaLW9N8pJFJTml0kju7Hr9qSnGkstN/Ldm0zPD1isPkJEMOJ
56mdsXbZa5awMcWjZTn8uh3KjRxRQ4mAI3RNKM2FH50u/obWAX+0j3YTAAPWAKlbonRzQ20+C+0j
ANYn5xwdBieAabnaLTBQfr9vCeGGCpabGmpawUZP3qQ7OQvYxM2jpKsSOnkKXiu54Tgs837rGF6d
On5i3kUmuCmtDz9o531DQf7HZpY7H7YQIbG0/YEOYoFpmwSXAO4Yj/EJzY61359qOQQprrNw0mAe
/Dacad195gcjIEB0TDZSjK5LvI1688VM9NZuLO3BGYvTbqt5wpe8ceahdDqai8w/bMiUMWg/KRhh
NU1BiYpDK6r6Quxn8z8gkyEmIkW2MrMS4+qSa0XXYmc7kiwLrwt70EVg3hWWiCGA4t0TaLc/8evO
mWzr4aBWhtL3U5XO4RPy5pjIX8muL1Gioz82mYQqWluLTi0IA9Wrw+HjJnwA3s1PjStu0t2kTq4e
rt8QRRmtutNARVNrvrvbnVOCtvIgvoA/Hyu5lgz7GM14m8Lkqj9NoM2yXb+GPE4bJZr/KT+xs8Om
B/ImaO/zqsUXLPD3T9Jd/DO+d+bomLCuUFk0qGrkH8CJh9ncGvFKTEPBEFINk9OmaqqZ5SL/DGe9
lRunj8+27wzl3v1Y/Gu6TkovyY9FGztiEai0/RHa17ExqlIp9dVqJIIeuXvSxbIuixuLNH1ww9UU
6q7MHQgnZ0MrGI8RV+90tlfJ3pivbl2UcIzEy+0Wf7eyJm5iWWoS0JhDiYgQYs3TC0SNrZWVqOtn
pPaCRDIW0KVqynbQ9/3sAfLu+prWGR9rXXQDVmc5vSq/gBnjLep5Em4N6lHY+sc1cg6NRHbAirOp
MnIq/3YBkh+NpHp45HYOSiIijRFGNmG5aqYvOf9UvNYASGR5E3fh7Dq55om3HOf+c+5Hz/lO2NFw
nw2ZHTPkcASee1/53jjrLYLjv6kYwKWlqrvAy4RZ8VarxK+mE5AOn6Lx7ln1k8NHb0ct58IvbOcO
1IAQCt0yAyKsZKaaaP/egqFrtjlUtMNmIPlt9SZkcphe3SlTSi0I1Ff0JgPNXFO94YZf4dkHjwhX
Ku3oTjOgf3NkD/CbuCpFy07AMjLS4Pm1JyyhPGB2inUEO/c/VgqhjAF2rhr9+GJ9rb6Dcp8OeohA
iZpZr72M6ShfHPPl2TnHhr3qQVTT+OSuaa73TfI47YXxZ//+5JF1gXozRLGSuwnria3SnzDEZjWW
AbkQGh3Aueaa+7qR8D1mDBtHphtAEiNyai3c3LWrUitpvTDXIz6lYoix8JiLcKzyMzvY2n42y1bM
6BE47XYQ0Npxn6tfqzlmJsfcs2QUWd5XT5k/5wx98KZQ7kyMahEVE9kIbHmBD1GBWNjhqawrjt8g
xQsp+4sLP3L82LPl2Iiqxh5plj5FWY2gAfAeh3xvjwR2bogwueeKUqglcHMjkxbp+KOBXGy8/N2l
Mcd8SsiQszWln0bT92ulGiIzEwIa3Ehi+md5J1cZT7m1REVCvyVH8NRsMFTZKj5+2dCQKeGdgqsW
C1EqOqtLcszFU6yJ+98c+eYcNwj4Ams2DK/8kmhvo80yA5MW8IThA98xk7PkCHE7WN0pb4SDeUIS
z1pYMKFEvjR4KrzC/I1pkTpKEaeQYlYlXB9etFkgvMG76xjNGOw4XE/MQXGPXWDFVXc0nzDvF5ys
6VPEqfTnv7TyHdi9RDJmPOIrFLF6qjD91SYb2WiVqJJGc+MDZk9WMlPudkMJO1wtsHW99dBf1TI5
8CxCQyMpWJTQiyWLf2qYRO7a2kAnFECc5KmthbqQs+rztetvFzYhHAvPfxgiu+aQzXJDh1l8QSqA
iwMJENlcUtk/sSzZ73efOrQ1bBQ7/lX1ei6iSPuSFEZjfNe1JwWAazCwflE4Sxk8RBPJb2GIZiWT
S6G9KU5ddeN5ynxHWsy9dnI7o9fmgxnmjl0rT7um3weavdZQGFWI6LUBzE9wxW/Dh6CPIpwPsAZB
GezZts0rSz3/pBiZnERH2z980km8FZMi5hyYwnzX/n0FHV6zwJZi3R7EWSCQk0UsiYSuhmFhN7/h
lDkbO/6Q4TBBmnoJqrazk03cvwIO5uoZ4J1sGwUMOqLglSPEgFBi0k+AczTyi7Vk9kFLBgXujj4u
iX9nl5WLWhC6BmgH2lP44zmoATD3pSClASN0c41eDqIcE+UYMTa0+3gZ6+JI6+VyjNKzaDBQD45D
7fKaa5KlmrlSucgHCSD8DxaG+KRDn6Hj6rB/QPPU9EY3V1N/Bbxr+q/JncwHQdc1cWtNOPWdBeGT
/H7zDhXl5s1+I/UxF4Fue6shmgI71PtyF/Blr63ogVm7PtLJNfUNyMk1DqR/sogoGXSn6/KHc6lN
oXoxoXnJ0p11VFZ3jzXEhLrUOstQvBVDTdZYTk+QyHtnFJky3bm1E8RP7Hh1ldTTq7T6Jq7jXbsR
6FbNzuhkOhMa4XFIdZPidaD0043aMHYCrpXbWGGY8Txlin2JMVdgHIHAmYfJ0exccRkqgohfXMtE
0agpmTTh7RLIsl9JBSplqz3cy+AWkk1UXfpOiaakjIFMhDHI94GZCEGRj7VYnJ+3/4a0p9Q3G4t4
869VM1S7w/H9k5PLpWqVuaUvlscHco9VTLs/OP8iDPF1R9FtI7817YLr2ICHv9k0bbfAiCFYpjql
Nk3XU9F+qY6zNNTSqNCCONX7xEGiZlxq5sCtZQpfFmgOVQQrt01FJJ/8BmuKyZSvXwchYKpila+U
JbZDI3ztH6jWAboxeD2BjDq81BqPjstF++ahLPxgOZFser16fv7DWErDUxvPitkKI42zkWnvaMId
qH0djNfJ3HcM9uRw9Akxz2MzRKPPWSe1UqveS4FiXcAgAcAZ8ZUB01oYEMMZRBjIJRvNHhj0jfer
X6OqDxgbEA/IjCdAMQ3pHdDzdTbdkt4kQYH4eH/kEBvkl30T++plp/kigAOsEWvdjXmk5ieCShiU
CD+GRuwu9c52lJj3YJ/jTIsUSCIhuXAKnC00waWRlCZhrlel8BPuUhCK2Chv5xOwAn+0MZshk1CR
OvTerfmiglvLF5ntm9TFN2pnJ+afKcgK2rD44HK2NJ05hu7lD1uel1LDQSJf1g8BvLVGsO50bVd/
NxgTqhsqLDTM1xzs5Lo4xPGLOnyTg6f8CxbT7rZNe7pizlfW6S4PQNWWHFNdvpL+zks9tvtg987d
ObMM4PCEmiGwXqhyjlhstxAMs8Wh8hWLoLHrgBWTWp6AsvOPPCqYQBM6StVZXA215W6XBymqgA3f
ptn53h+4QA1RA186BPTGDHF7lHOfvHhAJXtlnG+HS7d0YAuJP/H/Rw9qYrI4H5/2D4oJbfXXlMv2
59tAmUhzaHlYzCVft3zLT0IHsYH4Yy0ocKDQQIxYcPBDP3/sjA2iGAUrdDlCxyRwjbDyl+iCfVn3
wH5Z6ctM2KCKahkdl8l1EfHGoZZFFxq778xKz+PbM84DDAEwVg59GDl6lreNOYO/5VDbfy40ZjLS
sclca3xSaL+n/ATrKyq/QtRoRfpXIiXqMbIwZdKZmYgGkmRwYWuX2T4VclRsDDgm3Lb8u2KFdtU3
ZaoTa4rRbZ2IJQY1vmIEiZOB2QRKxTDTvUN18hh3y38951ggg2IGRmOgr8lrspgHSeAwIJcMDdFv
/mVl1AiiBywZTJcqQX7LZ2sI7VMyNIsmymFXm2hCCGWNAsSxIqzrMM/Tm10dPtSqgSoZ1pM2d1+R
Iq3UILnLV2MndCTFMWgR9d/ReaW/q3LWSA/ZZ9hdUF/hyYZ3BjzXG0vJJO1fSl9ADoSIJGcBhRba
AfGbzrGIXYbIqi+Z1NCCB0/T8nTzIyU13SKvQwWKSFJbRSABh8DMAdugXRefrGUw+pj1TNb3l+Pw
2ID+6RrNBSrswb0lrNNTIq6+gjxdmBfLqiGN/bxUuo2TwLcpFO5cSrr9pNqxcqwqIBhTBuP1tYmb
jnh5WdikET5XB1HJ7VySm/B3b2ORhVI5hrOpZPRV02XusCbFR3fDI60KFkx0RjZvaVFwfj/VlyBG
AvUcWNT20HEkoGF4a5aye0XnpkmqtgftJrqMkU4uLBKXYKfzh9FoYt5VXGWALxlfKDEM5ov159aC
dAF3+pWHNmTnCxHxD5muy5cWJYhfpRHxEyhdL7aNZw2f0phfqbFI+KHCn9KuSViBzmXzWIV8RWNH
JFFgzVPaBXFdf6IT7E253ggyR9G9/x9w71YyPcPhepo5hfpi+V6TcYwzJe9a5O/vEhTKbGUincKA
HgQKc3BGNHNSrg9TkYrVkBX1Ez1MCYCIXRwu6LErlaxefgetKlNyLwONCpiRNwtftnsjKIoi2jS+
7tv7Eislg7f2CFta+xsfkMB+XLmJCrrPOKeTwS0fR55Q0P6w1kBVBAupkqZWpOcRs8IhISrpifXF
NwcAvUN30iwtDs5imC/8ibm+AFeiqdyMN/lzpbIdJWyJ5wl+OYcIA+YtW85tkJusIvBFvYCDgUIq
s/nyn8NkV9QpC72y9KXRT1EUErLdeCqYvu84yBpnA9sdH9xAgxebWdT3qd7RpjOPCpI8i9GDgB6N
B+ANtuqumR9ns3q5Q0noxuVH5O34Cyfn6wyc8P7Gx1ywK8NelWpZCjnLEDQPFZq59jfGOdTSyn3a
CFnSAwZg8LmYeHpLmiToPSqwxKfqr0XKhpDfmccv0r49VgrTWRXzFb/oVrf12LoOkkdFfTZOIfOH
ynm02iDITeWnjzgOmPaz40+s7JQIpLy0aoC0cm8Q/wCtY7MFzvFfNKN/lyoBwkbX1vzaLxQ7zFdR
e1H+zSQH5UFLdZ0JBjw2zqh/zl8TYERKRxmousjLsf1P47lXWcFMHy3Tx7k+heHLZ4DBUTCNCjug
fjvX/T9gxEtUpr1LKvhBuqZG2rCAN6YalYp+MS6yh+h6BCRh7yQZw7t7XydeVj9+9sn00PgJZLg0
iqavSjygRmv26DqvMus2qY8NZlwha8zph1lF6AZPZ7AMo6bFgoZTke16TwuUnmXyFmXXEFZ+2odN
xWkitVaDXTKx1YlZ+oyFdcBG5rYwXCBBUE8nfp3oVofplDwQM6OIGAB27CZSgII4d0AufQqIAy7y
r8reKYgR/WhQMxHTjBU/qQpZzdhVwyPalxiOCqYph+6yEjsGtSefalzd5GQ5B8OiiE1ugeG9gydJ
FS0xtAFeq1+j7fBJlK8KC+4YO1+mUSwMT6CQRlMBAhLoJGNL25boJRBAoO2d0GFRAXShjn7FEuCF
lZYjMRWS6VntLtRyoFVAdpeq7TB/0Pp77l4Nl6JYaf/pz7ESqVq17DvDtTqh6QsMkhxFTsMxp+yW
1DtvHgaYS70Kw4OojX2qQmbapAHH1opDOBKkZ5hv/ulh68nae6Kfd+YfcPO54/WZgTJpa/AqqbgZ
gUJRDmiqPRx0auIwrADXTIXwBaEuUE6BciPNvSzQyumto0LMkiAJ7ZOKrifNxqDcIRhricTlOc5C
TbGs5qS5fOmr5ycZ5VHv1LfHGpBiNjly9Y+ZUTL6m50vKeJ7jFoIO6mXvU6KAZGHoSZiIh84Qe3p
atODpU4lAQEDck4c8X579Ij3F2oLzKA1llx+g7o9SExy3EuXoZSCNfFZiK63CGl1nUU3XIoGuxhY
wc/C2g/yfuqhYki3rHRQ+GBkNOtZz9pVTTKAPPH1bW/y5PZbZPe/Nq66nyjGHzIesHCABtOQZOGF
2lDLPsDqNSIFJ0sWdaFzEWHCUNYAcEE8ORkd/uyBgh65xxhx2AdNFWkJ+LFdFxlXTUdQ/YEBQ3ai
yxU+9dokuco5Ag1IsFY4cyYtsu8QOUiMK4GZI3bqQKMTdBfOJ1KQU+UsgvLDAtQCDrBjrkYeitTd
axudES2IswVn02KZMaskeXeUBR3KsUu8JObBn58Mr35lHo8pvQuKzBkl37umI5BuDnWRiXwiUsl3
SDl1jUsZBCZj1bx+ACxAI1CLmYmfg0AC/o4ziN3ITuOk5DXfxkQfbaN0AfjL6x3DORis/u7tvUqQ
Dk/Noawtv2GD4t+zUToEKNu2YJbXU0E1bXd2r7djuIHV6zgpAVVMipbfJ6vxzvHt2IJiR/aHd996
CJCZlY5qzd+fS1mpFfyi7by7+/Ey0lsk3D/yrRWVPPT2qtlr1ZKvDI8bCKLSrh2Il+ozsGuD2UQR
agA432NgW8w9hWdSbmPj9Z82w/Rc3seBS5NLDRFbHw0Ljv9vReKp65uyAShTKnShPMV7tYIz2XdF
8oCw4OwNfTAQrhLdC3eoHVP95fB8EXaQTmQ2EYaN9EGG3NcYrhLZUFDaxSwSAqYQn6Xbz1TjJI+V
5xhsoamrdbHrb6+Ht/lUJSGBXvoN9apw2drc878x/Yj1gK614ktxgY75Qp02KrxSRPam4db9/6hi
FwxkDfb66ftA9kbjON3m51FsceX8pIjh7H1kml3cqyHxgG896YXaSLoRZVuRDc3a6/LZJK432bRW
GjyX/LkETtdiD/hLPRAW8ju7WnVmfPPfmYOnLkAzcB3EfQcO+4JDm+FzBNm4J4u3MdWttg6SW10x
qFcDQVHeFnmsBT6l7LfOXSHPmmFxKni+04adVvbHuhg629O7Zwb7qQKlk2EZdbZaJAarspbK1h/H
CkoRBbQuSoIsnsHxAIBYiRkU8/49KL7d0AwCiiEbZh97AVefA3L4+VScD28RGFJxy7Ipb9QGIJ7g
gBKZujEK2YFgLUfUoyI6xDA0YZbINNZMSK51QQ/+GhlQxvvd6oDFFKFv2lSWMuiF2SnMynCoCdCw
qicV1Anvr2Mo2oB7KmwcC+zYPlNu4G2wQTKjk4R9rUqxws10uBAK1mLmGXZaDswiX0a55F81rKkb
yrdonfpgkVGBEVw4vY2bUhRJ2ak3UrnHKDanFwDHhnwHimktGTs7rz46J3wb11ka5r4lgpQDPuGa
2ixE+RsRcN8MI/gVlTvWGtZddjPJ+lI0LQ5dvuz1SA/eCPaUPfBAWAJxukS7EN9CnHv3OMOwsReG
O7M/6apTooftSWrQqKn4BXQGmD6UOrXKb/ouPgslwPGLTKyAEd7UFOah6S4W10T7TSvB81RcbXvR
thWOu2+2mzobcz1unvtAAC39/xxVnVV7OzAncboAB8Tx34MrerYiFSEXy9/RUv4obzBOlzkeTLtj
/r7SqItE93L6H8DWiiyX/iBt/tCZPbX6Ltw3CBNruBFs1qa60T+UcT3NKsUzrlgEg5cl0KRmUx6S
gZsFCslQktxozU+475lIi0LOyA05f0ZH8x/tsjUTCP5KyN9cK61owzBGvE+rvsOpsMeJ3hQoBlst
SghuPVLQhgvarBPrfJcSEDBjKuSya80z+UukE8kQXqMktjP9p+Z649Vmnnqpwt51uBKZQz/FjGmy
A2pdetcpRnm5Id4tSYFMcogVfsZz4AWGMk/QmQEgqsHQpmvXrsfpoC23X/Wfjjmq0xjFVADbR2F8
KZ2kLWQDIryuc0U0VMzls+MtaP7r84y9eWfmGHbOLFBJ/aRjbwArURTfRoy/cM7+7zq0VokJPLsQ
A+vubTJ2RVIi1oPDHWLRP69Idg15zKQIQhW7PHylZ23zWMwFGqRd8H8KgU7uuUtHhUqfpcmekzER
HlnC3eH8Q31Cuk/Nz0ppkugK1wq9lNPa5XSUBOd0DjxJY1/C9fe58+u2vwR1o4nKBIAbinnI594E
Szl8Q6frH5CBE023XwGvT7QoE/lBVqAknGZf+vHUtBlnhgqpugLQhVUa+malG9d9u9hSi+05L9/L
0Sdm8+LsSoIX8SeWOrvRYXKvNC8YLFo0Ba7JHEUXv5gbsj5HR+nuSp71JR4bSN87wu7KL19M5vNG
QjzcdRiBfTtWVmSKSNkzhNmuHR+1R9WhdJD3w0ehFLD6rHu7cmPSBviW9GBf6QbXdpdQOqMZ9qzi
FpPJ39oLlnZaxsn7lBQ5ulWVtmW0r4ZFdh0w7uM/jj7fmMN/rJucCGMd1LYVJwkQHybJYGxbgtSt
VfXmXGnabXR9R2Lcden7CA5fc2WLwYwQF++hq3U2M5vzpKnMKBhWtLTkwylGRNVZpDAAfOM4GfMo
TNajxcMfllZQgkYL6zrPAJB7dizVBINspvIB1G9Xd98cYS/dVGygAddtMP4oakxwiFy8EwCVjgy8
InBx2FNF7yJanztY9qL61amQKwPlffrBF2LvJ8h15vK0RfO32ybzPSG8A/gKM6xRMm9XxHkDUXvA
DYc1ChtZDqwa74CYgLZyGe8KzZ71+SrfIUFzYYhGteJWtgFaqF2yflWYbqvIiyoyefoYBQrSrpsu
oedw1O9hIlIjJj4CqJbzuiNFQvZvxpiHe/obvBy570XXHOvIB/FT5ntkOuo3z/u72GMjSJgPQcfA
trP/A3dwwT3JhXDIWzgXiEjvtzuzuTVPQgNnf1zCmNg7WhxfmevUeX6m/AQqzMOyiaQnPxsWeQHk
VJ01Q72SH77gzNs/0G5ZXz+WCiYFzoM3bTKs6JLCHh9SsuWhyzA/OAgqreB7X2k/CO7bT9KTV62o
qYyaqZzdnnLbxdy7J8MWChdciAA7jykGaACz5BhEwP7W6GvrxMpOz96PVuJu0e0zcC1Ai/1qQEOz
SJ0wlC609SuPZbLftIRm/nDE7TmDivItQ6ItlnJLY9VVKPjlckIQniUT2bD3dWqE5vOvwqUWBM4X
1kL+uCtBZApgLA+q0zik6VIJtprCxs85mhGMHt0Z097Ga0Krm71CN2ARIF8zHkC8zC6B8ZddAEnd
7iNyH92icCKrGIeVmxuN/zcLGkme9G5OaPWqt5AXPqXmBRJUXQovyDsxT4MkkTOGlOfwwl+NDbe6
sD6+52H4VgWBQFmmVru+QmdpxgVTulLxzGZQD8q+2PCVIBsNsYyRnyRPrZWdSMB1xMcliMF3bL7g
BB6DC8j4HuV8ZzP/iuIbgP2smBSH78d4zSxAe0ZEhRr3CC4FXVLhsuAC3cXrLotZgflg3c12lAKg
VFLiA7pdKD3dhiXwzPe62KnyE0nzGzyWZ9Sre/39Ia/v8yaKExBace3hKAJzzpffGdDDQK4zYHV8
KlYwEdKFCnN2KVRTkxBuvNj7W0E17IWxw73zwl6WNdeul+JOcDBrai5rkM/sGAthwhCbolp5K3ti
sZBGgB5xxLUi2/WEw6huq93/RqOJ/zTsxRaebgOIpEdFAfm16lB9tzVF9vPwnL5M04dUvATJAlMp
2qZT/M5C/AzgMHPK/t/Znt5hu7T0Nx1ccayJ61C7cauhnspzzsk7ugZwXWkGEPvQTO9onBMpKURa
P0zVCIE/ceX2apw+ltgKKQU4XH8BS2vKxul2+BTaRcjo/ub9sZ9ze1yhE7ZUgHYXkHRp+fwuWMeV
YBX/eoO/6yD5ugraHjsaSu25Ile3YL01I4LM6svbEN331GrG3Cu+/7OjsGZISpd4anA7xnId/Ykm
SVtV1p8HcYEES0YBvOaooxOTR1sQEcj4fMhYrQ4xXSl0BGtdJN2ZLHEmVG5NJTCoSB96H704WfhH
79Ffwu5qv0NRbxc3n0jThxTEoMSxBbJGJaZZXbnZ3Oh+c3bLUG6fobkK1+Ko8wt60PSlSZ4eWnmR
WlKzmNfHvDv/9Z/CJ1dtMF/m0JctkDPz2Cp9Y89HNUajQS7Fu5piEqohgKaepGekMuDdzDviv0x4
8+/EZXU6F/muU8HZrXNjTa8CUqjzsfj2ba4fxL6Izt+4iRFAB+Xi5xHcnzwzUQdPS4PvenFu9eg4
YQNrMTXBQHPBOtJscP8aSIISEG50HTlQKCAEMdyqlOq2WJFZFmeteW0edIuxgrAMf0X/cOqsVofi
3bDCFWHugVcey2JhfOqin6SJgp/Y1c7Oag5lppyB+g4c3fBF719vh/tIbAMyF7q5uGg6Oh2zQH/i
JVLxj6nv/2qTKopIv0IB4GQREtkJL6mbSZ3T649yQqOF1EnCq/KpYIr2GYEKsV/pSfkgOwQzN7Ry
bc5AvEbdw3r44v6enR8AFsZUTnCWYI+HxEkaGgt8EdbqqTiGvREiED4uD60jLSEb30kwNZl7mFAE
q9hLyv73F+un3RA6FBtBGcjhigb6+0fl37eh8l7jaY8c9NaC/IX4NEiwRHM7n1kQoIHdQLgYZPcH
SdyY6gNtI//nn7W7OugyXaNps+bP/QG7ZGuuNERfF/cq0ouezYsoxQ9v+FRqgBblpdGYMDbyi1ow
8F5YiYf9+aAvZzUDXAMUujnmSyz5f/hA0489DXS5YqxlApr7hd4XbNYuK4djuxa34q9OZQ5sVjFw
mpdplceieTo8Ne7tJIXxRl1VRBt2926c0yg8RupVvQSbiZKpzMEmdGJHVvFaibUbTd/QF5w4PJ3C
Imr//B56lMtzEJxE12h46HPy8I2su8rCCXk8gkHvbf/w7JAhyJNhaPifPDAPcbJQ00SVuI9wJcOt
tpYo6azM/ycw2ui7azDjl7rYeimnc0rxhls4EcRT9kJNSGVO1JXsq+SaXkPn5djhmNJcsv03lJGP
gUgl+rBXB7eUHnSGnljwmCOS/3ho6hn2DtFbbHo8b8YbjPaSZBRJWggp1SpG1flbMkVcImzTHcQo
KZZEX9wNrfF9fu5fw4n2J7am6F2w0b7fGckRVNMbQGHgUM3XCt6prmTHcY1wqZLdKw6f78kUEltr
qvj9pAI8wffmBzdEW5OGu9LpfZqKyWBkdzYIXIPPvfpGFgGEpNqvqwcaE8Us2pzltOQNnASAqb3E
PAmbvDpMkj3ikI3QCDO4W3tXotVHeyZ7D1lqQL6aDk/sIndymPNzqf+Stav1dvtNtKMqx/l06d1g
xZbq5Cd47HGzdNEX2WEVy+lmamiQRppdVCvVfDKzewyhkCohr2kCVdiIwaiylSo2MvlhHSle3vC3
HGvf7KzIasHv8bDeQEQXddDa9ONqZwTL1haz8llhZEzHCjsv1GNLWohNJwMz/1Qb4BgtDRrg5vMW
n0t8uyWaRcFBULCabu7M3xkurvvDRPV9iL0QBPQ/8bmOfqodb0yoTdmTpdoWxPeOlT2+BUavZhiP
0T0k9/UQ/+IXIcYOBR3lHPuYvnDXO+WqwIRg8YgTVoRcS5wXtNandwUiUJA4Ik+MZb0gq2+zXDlP
C1h0eTmHEWp/XEl/kwZA/Pn68tmvpRHetTiGLYWNXILaSXdIjPnWQjVFJdlLAciEkg6qP4WwOPJr
vKUfTpxOr422YA3svf44sraRVX5Ov4DLSPcHxOtCZQ3Pc2lPw7NNRB1JBsvUCDXFV+LAk8VqBids
TGZjvBY/IisFwx+tUKf+jH8hW6sGQyUwQKXTXACttbaRGU9S9HAAMZ+kLJlzkGzIA7O/BCEqKyU9
9gKQ+bmyhP3l2jVP7RD/OGz7nRN42kWXQQnm4sagJQOXnwuNlylKQLehA818fwl7hbUmOyxrvGRm
VbjVA+AfPynS0c0ab4wAfsvip0gKFW76n1m0LSbRCdBUxqCegq0vuRQTWxP3T77eiCGGGZ8EuSem
kSfENaBC4+51fpA9NDjoM6iZUA6oKM/co2n1iS2MQONvwxNjzgeDnV7xQG7s5fHKJB/pR49lQnwk
ZEL27rMhGJqNxuld59p+IBmlD30GCe08LA75nQfvkIMR5z1up3xf7+fJ5+K45CzvleRIvTHPXmnO
0DSzy79nrvIt9XzszXt2Pwey+WxPwT7GmCxXp1N75+6RN2tXuKjzMlGDMbF5JF5JCDNlakttgG5X
oTI2c6WQQUoP+AZNfyJbucJ9tchVfQ6CtNg+SdMhHCLGQ707gwiKhSn7l9F5G5oGxz9iXE79MzK+
FfPf/44dkXMhzUJgXxAA7xaXVYxP8mgHOhqElBTlsM4F4M44FXMjxHvyNx7Hpexv7HbdvmlRxriO
WQty18ZYvXfJ7LV3mpuA0q580fycr3opN1+APjYvu0EuZDMOfMlvh5v3fRWuk5TPvInOTEVB5xnG
fsRJGKQ1WGGMZqKmusNkDBFPszneZ+EMAaDN3EfOEtN+iFRzj3+tyvwbAurFE3qwXv1sVFohUhFE
A6Gc0QKthMMp3bqBgXSWonWKY5wOnkDftQQzq0Q/GXOqZ/8x+Z8jTJGmuEizlV9oEXzUwmKsu8Iq
A+Y20sxy4JSqURWK5x7tcz+bkOAX1qrLsRKUnDgGY2FVpi/tPbUjJaebfV0HUYNq+azLAX+gnVFE
VvE25I1wdwgUFSvUrYLW/pXCwmK6f7mzO5N4Xak1peH7WVOQoY2yoNORUcXrN1VvCss8KqiNGObi
74UpnsxX5pu9ooWuOnPOg40ZhxDVOEx45+Z+zeOKPVSv/CQxtx/VTbydLyx+q1L3BPCJyp+HbiMN
4+ZDb0vPmpXsHDpp7vGE3XXDjC2RqevFcMi7KWfn9MjGuTm/QeIUqB8xSZa8qdjBWvvfFjF0Re+3
yt5xtMNbCSmA98kQcuhJLbo1K7BjKgF+Mia+ojTXQgkLq6JSCoGT7V5+i4Wav7pBWRRvxAqf6X6J
5/WtB8s3if/bUmVwGfFZAVJKaAKx86ECVucRMlbFyiuYLxcsjdMKgKL06N0fytILrnWYT/KsvuZc
e9pFFqt5lL+HgOsBpPMTUA1j//mq/3JAGFh2sgHQ5b0/fdvigwzYTqTNQPwee973EW/iKw6T7Gxt
dIv/YhMcINch13Lm3q+SYdJO2aIfccc1S+7AgndP/1Xy3PDKI5z9dzMbH+nFoLeYiixqfDIg8HF1
5S9B5T9CG6LQdGrpHuyfXIxIVztv0ddVXSMIYZZ/vAuJkeMx5xxu9TYeTnyNoii/1dCXHeCMKmK6
5DKvIVStOYgW848NoLExJKR/Dy6JhMl5qbePVcLTP54yvtJZAf3ZFvDxYc0IW+ERXpTaw5Y+8lAt
1x7fybHnjsuKlVBiFq9aQn9SGV2IysbkOwFmlyBV0tVcxjL4BR9CI+FVmc4LILaNkrOph5uR7e16
eoDZWn3kdH61I+4EW+xZ1LCri6wP8bKH/QjBqJhs8fc/8Xpd8A36E5K7iwjv/Q20c6sWgYrFjLsF
9iOsPPiuS9kztTn78J93xb1X9/imCHJuRfnmT8+sjs6hgmrI6PHJZHEcLsEXAtervEK5Iid4ue7s
Ej4MJ/Qt77BNt1cwwmMXcMYw8OpUXuzVcItOC3zpAYbEpZr5eddKY9i6Yk4X37e6r4XqYW4MPir4
AZNryxRPasE2n5WOTQSHEKMktwvk5yXOT50ivGAtzdbXwepLn2jcno50bxZ3MBdaTEMSV/cJ28E0
VivyNwq4hZBTOI2F6pqKZCZ3VbiImaLvCuv5SopT4GqycHSpxFZ+kHJ3GBMhDoaYDYJWzUgTW2mb
Yw1BadDsl7Jj1zIq0moOXLNi5vSwny7G3/oz3FhJUU6orDrhCPlhMI1ojSnP0B5GOzv8oGdxyXHM
nup0XtFhBohI33QZsmLXoOP9QG57KHq038XemXwPmTkyDqdtEkkaopvqc0iPmWMPm1+uEYrbQiHD
yO9F+LQdBplt3m1qcWd0GHNxCNUHRmnb7P9oRQYrMqR0i8E+WVUz+hJmoHuY+Ge0h0AIQI9sT8Jf
NeQxN9XGo0ptzBBfb0Osjw8keYt7bmcRhQ1nafPTfT0bCyX2xWUrZwzco9Hjzr+0DGnXlj6RK2uM
QimGj4r+RGBJcBHudmFntkibPVjn81KADuy/8cDr3Tfpf+PiSNFnjtyz2Gx/U4if1mgozMAGjj66
LCttkB2ads0MwbuiVmdq48d8+32zVeNMeXibQPCh7gkqDWT34Ru4wqu1b2Y2JWu7IYkz4yQIPr9W
dw6tr8IA5CziMcEHuna9lOhpGCxVMfuLKMPwRamLHUVqA7Oq9z/cNObLld4sWmYl/OPmaNRd2XWi
LvWoZHkzD+PrZ6F9/yLm2OHD3yRewjVR4lb4KRlUJteXoQNNBnB62LAyjgsPadiuP77nF/dsA1HW
wQywzZFnIyyU+w7IirLgCJJVHCq32mkyMPCHbrzjkQwgaPGKKWz+BVuS4dTUBDh55Q4b5VeW9zzy
PI9oVPyjD3RbPUl3Sf1K7xzIR90B0j7Gl3POGDthGfkljZ0zMm1c0BJQlGgJ3KN5SuyJxfdGWWtX
q5RbwCCpx2c8LCKPsoOk5U3nLLNpU4Sdqd+sp9t+QZBU70Sw+CLyPWkzz0vXP9KPDnU398j3+YvN
ifx+2auIyvcknbhyJ4uBpyphV0p248zMKdEcbRyoS8WZzc3uDIGa3J3YcIM5UumW0iA+yLcLZMbQ
XYnJuSrnCgRisd1tldHYcwjPlscQnxCEqKlSG7vnqn1jEE5oOL72rExEzMdpe8n/jEu9d3AiPNPg
G3H+Duhib67MR0pwrFKHeEMdnZwkUZdl+0euBgkWkuDXy7KkdszTW3G1adltrC8hnr/mnn32nspR
hhYUHCeuteixgq67OHx6zd6GyYqDJD+0WqLeuQJTasX06LRSC353OQxo8XjZvoqlI9KRydhY4ayw
VHzr7ufy1fRPzomF5s2rJiHati9Pw+VWTvk+Qxn/OYBuoRXJWuxfxCgtQwU1D298PX4WipM6juWa
Q3+8pPUr4j2fZ8qshg7iSWpp3E5LKw2PVlW+JJQB1ZXnT8XssY0E8KZN80TZay5a7InmWQBUsTEx
rLBWoj4Q6rdLevqT0zuQg+MPiCAi58t0irh7ABBTgHt09v69Jc+BNSf1Mq/emTBV3qw8zBuUCxPu
10kgSuQnzqMZtk0vv1AaDYy1KrzpFrkhW5HY7ROI5MWl6nHDaiQ1UiBUj+TNmfAFchOGiHTki9EK
YKBNZ+xZX3Nw2BnWD+7ckew+7JYyVR/aS3gZEC2bweU3e0NnI84Rz3Kr5QS+RwYg+2+ZoDJvLdqW
zgvg6fqfHib3fmKBIZ1QNUT2pYccue/Gjm9wnN2fnFLkVryPapwJWT2156Xah6PcDTROFhSrOsvQ
PijobCrkQnC8y8ZaLXpe5IcfU5mb0TSo0PzGnMEypwsFLrbTm3QRhOKPn53BC8HLSytbR3fBetP9
de2YeHs5nwmJilmEXAm/ocaEbT5bajdkvwmdbcq8WHZPJycwkMsnJoioaVllcOLuhUY5S5KdP8Wd
smZJJ9WDO9Al0ZPtwG8x07syERrtoTBR5qO6iQ0rluZ34NTmGR0Ppql7+M4PM86i8LjEE5KajMYa
HJeHSNDKJVhs5J1EYW/fMgGCyAuhUPDL5vFXh7JiGyz6btXtb2wSlwTH2Pp4xEqyaGuJxFc5ohUn
Y1DoLSb0Z4lblmPmcFj0adLzPdvP98tAhYMgjbmUXvT3J/ej1whTNfwf+KoUr4bjPHcjqJD9Jl1Z
CHUG0/GX1uUk5DAHc/9S1B2qAAL9hrILhp9XwL8H93NJGQPhcwSQusn5iwDAuM2fIo5aqORhxrEp
3gvschoy45yxxfIFRkBSyk1jKU5gODewdh0N8nRX6VQJP4notU5PbtbRjKF3aaCq0XWmlh/B/Va0
0KvXkCK//2PUY+YjXtn2J4kkVQuYKV94dKKzmja7VKXYHUwJFL/Rxzw3AghBbDQmMBsoTAZNkEAF
Ey3zzNuJInNa9FwXCv1tlv51XDtXnucgWcfsnd0D46t1ns34GGzgxGhGfmQ6Y/Ywnry5aqWLtkZ7
baTknfwK2BMJozA/Z5S4d3LJwSzlprsF0kQsUspTixuPdqG4FRdrEbDYNR3rolIb/5iBwsWWrFGF
oJVXV3YyAHStZviGcjCsH+Lpmb2nguXKDtOmRy1+B+ui7QgxQE5Gw30n9N76jlYsxYqAc8C/lhkH
gYaW6c6WTtpu1iFq2zmXKcA+SbHg1xAUNYC+Dz4oUkL7nFD9yRdfgD1qURZ4pO+bRTWL/YjIiOyz
jqmlsFSH/pa26LxMTf2rJiyhLSIheW1IYEM+fZ174eLqYCQT7dj1G4/QihHXb9S4yoiSrwktloDn
YRL3DGLVxYKeNBcE6cn/qSnxG+/9Hld2C3guJ8iixthXw2by6eCnBT/Lwx9k9Wb3Q0EgmITdzgBY
XiZ5y3xO6SaeJOhxx0ZGyipTkk7PfyAO8uZImvuPJKYG6TVj7ttjDdcRQ8Wx9HFldWeWw3beyjYR
yw2SyFWJYuDMy8UQQ1uthPd7Ewc23MZBjElKS45cMq/EutKMeEZm8ouPrJRSg7eux2VNjhJf4V/I
ZMfwi4x8qkZ2Mr97eJElfGADp9KbuwP2QyN8F6HQyvLkseXqiJNRfpXp2/ZcWizXZzof2iKnasAp
ZIAzgvuKO/vAYkS0CZgcAuILMq0bvRX6nTG1BWo7Tg6bf5jaK/upT1vmCUJ9gom5a/7L1JKx5IQn
UOHvKkWRl9UQcWpdAhY+ejxX+w0l2L8fo3ALOHTNcGKKyzTJfOBty0+h8QBhhMr8RfDYnqXh9GJg
M23MSgU3RKHJzLmipps6eucKmqtWEJ0K/21ul6pkscr+95/AlC2UORw6Vky50Z8Ct+dOY6gjWe43
IxWRqX5LwOlo6cTLmKiPChoQRFRORATZJF0PdF3Aipbb4F4CNk6SoYz4yi+FkaRjrcdtnIjDirQH
GQJH6DveEMUL5Pk6b/dyT+BWo0z3OQ/122+REYHhnMMwJHLhV7OJq5AcvBfRGQmZIcppnxbD4YGe
ldXDGM65uy124ZnuycwDLFcZw8ypGTCwduRS7sRa4KMEl9JfNMH5uJkErHbDbL0V0RxIZDdaBPIH
efCSv+GSN8e8OjOGzhPs5aMr4Sra8jOhbLidYfM+l4c9dQDL3YStEtgQQn89RNZacc4FKDokQuJ+
AmcwZHf1KP2DPKOZPGbioGopue3BLVz/1r4sM87Mrw76sSP0h9NQ7y6KZjjL/CTo8p9BB0ITVCJI
BCYy/vVnYKhehQjk+0j8GBKLfpFee6qrzkytSm+w28UxVedaXJ38gSw8nijrQ94YKUtgsYk6mqYz
KOq9jQ/L05EsC5IrMwVf8Kjc6/kHtTYWZKFTa1XPk/M1xibOvG+7yIRBin4rD2Bb5DWkqL5EsVtN
6XMRfpSZ80IBwOMKfEFls97WwqxBXQkLFkyDKxQr8qot2zkjljGxo2ubD64FXastf6Y46iNRgR0P
qAIClFO/ADE7Ov42qql0iG79kvXZbnjZ8eP+AxR83pWhbsPrVpskn2Ul5hMmmCrrp+crem+SUs+m
B0mKj28UVj0bJs+4hDu4Y08pzXRiuoqhMhaIxNgZpNUcjZlzOEdBSS6e0wUzk2IqkC/oWZ/4qdLe
EgQwSRgFPq5Es4rKsOAZKc4O/pxcknjkRdDmCIMMvBh4dFvWbhX+VhPWbn//il7Wmgl7l4NMYx+X
InoiJlrXkDiA5fZ2b+/9+Y4LvpZ2XXXTBbkoJR1gFr3Poq2m9IZowo1AY3V3qMuPp4IoXvojWgTu
fDeGh3GfYrEKmNcmvvIAUROj76Az1CtkE9ZKCyrRaHq2MvkT8ujD24qc2NgRlJIEcosJXOMz6xN5
olg5dYtPFvsV3oPcgBBgSLSF1aNO06gJCaYd7nqKtcZLdFVBH/Shsrl/hTC6qqCKobvRVZO08eFR
jMfIohLxi3/gNujChrAU0u9hTQN/IMSwjpBxYFQYdGN+MoCJfM99WP6s60z7C82CwS0tNvW76fvl
i5Fry5CCrkFiPDqtek9uuyKC4AvUxkHXlTF1qPQ9CIvSNvxHtOzv9UzpAiHNSXuUqMbTXqX4G48/
irenjZtT5GYfLO6W2aLT207eZNvEVz9xxuDlOb+IrIHSoTa5oZbR1zxrAk/O/oau5KTLomxjY3hK
3631tkojU/YdVEwgR/EygDygZH/AoAvlcPBgdX52Tb7EUDY4uSsJlAAVCEgJPFvIx+qD725uJ80L
s+Y/ICuT6uUfPeVRJxhzdKWx4TqpcUkhtglJHQQm4zTL1Idm8YpDY1Fw7ZNgf5CW0JpAMfns+UPa
3UKhJHgEFDCSS51n5KA3wi8EjJx4OOkg3cmVIBhdIGAuThyVM1SmKfTAlfmzDNpSCVrlsbGaF+8K
+MfRsb2GH7+gQhSXy7rC6UiXoeaXtfI70/2rs6O5Vr3q9FrcKp6kL5KUnpKO5TLEHhA1250YPaCy
If2uA8VipjIYDVqVioK8JJjIp+fGS6hv3XCqDxQaenva60h5AEtMD3RjNfRJoN7qze+ISOlE/F08
VXXWwxYrvOrSOEinWYowvTEM6I5F/JrVsbVK22/Zo5K3IGCYF6n0jAg2c92YneCyfP/FLav6xXbZ
dnSrFCbn6pDgoFHDqcF8yiMyi4BHHgykJjtN3i07ET6s/Gfq28knUEMpM13yoV7TpqsaNQFT3ldL
XAV+CD49T/UYPpYmQoTXF/dLx/3X3c2v3GTBvJ9T+MsvmahQgaSrUQc4oOI1FCBYz64vr11lwAmo
E9Vc1ZizMwr3wov0zeeyKD/rs0M/+a6QP6SO91m8eUBhs1/ioxALsNrIr3ICaHLA1xYeykKKP6iM
0X7F/ZPFyk65SbLL6P8CCviROYnOpWIJbaA4HOQVinlhXfpoRRwGJuFIy1vPiz21wt5sxghl4mI6
+evg6EpzX/WvPVwyuaULvDXZGnU2QdWby3as3mXmi6pubH20aecx9U3CcyeMM8m1Jftz9lwwjJVf
daIy/KmmfCG5MxiSgq6Jw7V6JaiKLUgac3Md4fheH8mGOWMTBcg4Mwc1iNPneuPWAcmoDhWPDPwI
4XCnpcty4WxX5IAvLk31nhEhnNUF8BFHvCOsuD8HV29nTOt6Rzaz/+ehW/nTEM7oagYMNticSyvu
RHeYD0ZXaJ60I0Xo0xFm3EQEZuGqB/4wDOBf+H/lwZ/3+TBfdVfndHSJX4rxl/K4StaCRIfkXx56
k0RHVZ+U4r3QvlBQZtzTIQVVruRnL2lwDj1p1lU8FxZd7QRVJOZTK22zCYLHsAumwY/LV9DVSMJO
0HZMY4pOTVv45AlS2cs/boi1Edo1r2Kr7hlNkYGyUyiB8rDglHmecoJZfoRllPJWjzX6HoAnL00i
3r7h3CX/3F70R188/vF1mE64tsr+t7JqZGRPqosvRm8h3Ef1so6YDvUAZUwKp2D+HkRGBn19e845
Dc3leVF6SYcvhCaw0Y0pNmcicQUByaL2+EFs9piIgWPUVJhJmS1yBBQ7LnBnGoeearu1UlrUtbrr
rT9S6qF+LaFcOLPKy/LxB3Y4draz5LniyTEEOQy0QhO8PEdHx5LyFJCN4YByVUOkiNm6UwnDBsIQ
diTxYsA/pURXsTG03SyDtEbW81zf1ZXM0+ytB2ML+E+g/ChjMFmdO5IRn8WIceheiQrxBruRhMwL
QTUwYTFnaGc3BjMY7TCMrzeaHB/RMpAZaLc7Tdvr8cv5+WBW3XTAlOjG/Lz8JWematygWa9GIKfb
PCfkXc3UgjAfJItdT1g9ZUk8WlZtwPP6Av731wXZfdhl6iZFJ+UIP5p9vQO79Q/oMAFPQt5PoFGj
RzwLjRXUEByz8zZgAZwCaxffJtTrOl/qZ6nf0a/C9LpUAWLplbfBxZP7VtdizbAtEO6KeOcqJaqW
mHu1qxZ7M9xJxd7nzzMq4Q2rHfJPU1B3Oh4g3+3JBYPPrSFJ+Fz1fM+Qjcwpl/TeeVPC5UE5SVk6
295Eq7C0njBZfkh7EvgFtv+3G+pAs69vUD04BirnG7ex/k+C1yUgMkEYRZtVfmVQz3cv1I9gz/GC
AGgUG3si4M3ofUq/PV47BEIVUA5VjVqn9yVw1j+BheYRrbWWFCFBc8JpYW2JBDUli8C3RyflmpYg
/VGCmdfd62UHeJjej1bU6tIpNMAecE2k24sOBucZNpxfMSyR6b6qy+EQ8PF4v2zcDs3RYqrWPzkw
KlqEbhNcYdeGry1SH1xJWiCXr9TN715UOs2Ho5FSd+LE2PDZqTWBlH609buVR6a2VIiLB6Ri8TdE
4XnHJ1R3BxTiREZ1tESkOIxhH9FSRVg9Vlmf4ms3eP/1WSdWgnrByNFJyS8vGgr+s+wer9eKsXhf
xq/Q+1/9YvGUIb2+dLjiw7PaHjqKekTct4zPSce6/xOI6P5Uv92eqSu0wXbjBIp8SYoaRK0STVI8
cWFrjfSDXWu2dnJDpGQfr/I4f3ZYgLF8MMPuvGY0HAct/zW38LIO/sn4dE3G/0CG0AzSrmIe3VGW
XWHYjDheImussx5xDaWVEsjY2Z7v4mxDW1zXxUwP8wkAqFwYp2716Ges5w8gcOARQ4ANuWBJArG7
fPUT2JvWSKz/TeckzhYTJElJ0Lwfqk0/z5EReiLrl+pugXBYq2QJZh5afzoKrzW387E8KpiN8dxd
yF4WcKRLFUEPx2lNbUNpvge8GpVQWqaI9cjR8ptifqI4a3yjv+w0jnA67QpYg240WNPig6065Ke5
t2++w8dCad2um+OKVIP7dbed3QadOVMARN9OkBh6usxhdzLZSnGMcnsWKJVFsJDC9TRclygZr8Oz
RL1XoT1irxizP4qEXJJrcW8X0sNFGFj47ovp3VqDt9EZfhAS1xBiog4TotKJ0oPB8/WnPFegMQjf
GMNByXh6csY3O41u0qNoMgQ+xFkTKYmadJdkY6Dj7RfL6VEp2tsk2Z/gce+S8bPmXBYp+a0yz5eu
tf1IIfmI1FvqjqH3Lahog3GWt7xKE+CQutBOOvV0PjG9rxdsK4GEia1CnaEceiUCp/7Pej4g62tc
+n9LQzI/K+5TUkMsxrHwiBECJIFonPdtxkngKde5fRN1ftRxwD0RAvUqMnWSADO0OighCoaOYhXX
cn/u+eZnlz3R4HwEpWT+9nWVGrKn2qAT1K5H2Ekc02aGHlDKlqdE3iiJ/bQi3poJ9+maIQoeVK2R
aNC8clUezVUgWch12LR8TXrj0CaNfKD7IjPBW037KByrLhIzW/Bakp2CAGkYmRR5X9iFSoAKRUey
VCAJObfVIiCmbvCHLmyq9+NIJq8bpGkXFZzJWGTC1LSSNXTZW5Dvu8XhQWYycyoUWi4DnmidPDtb
Y6QLcy45oz7YMS/bzSD329bR4TLeubpxP+u5F32tR7VZ5Uxl9V3z1i0SNV58rx/SM+vSBn98d4gE
vbzdU6jA2PVtyRMXUuV3LOkfp39g5fPh/NuT0eftaXKRzS3ZFHsV2ReMg/P95wr41uqGuvFtiqNQ
oLPDj/gDQUFnD3nZiTCJkVjPGBblRznyu8BXDnVgHN0e1kE1b+ZzIAhlv+CphYQAWywhdkuYZ4Tp
SfC8TSv7QxJeC4i6HpcikPIVi/q+R1oZi9Z5briuLz+Td/cH5cOsyBZrm2NiZbGVtbgMWpUdkIan
DMWJgpfh2Z7y4A0EeM0tQYIHKdiWP5ZDM+t//TEu2CjmUO+tv+w3HAzq8haz3qPpW/n5CIuArAMB
S/O+pEAd0tknZ/jsWZiJrnz1YqvDdadnhVTAX7KAfJgPGJ7CTmt7Pr3rpwVy18ryzB5nfnD9r0bG
PqMLWjGaGTrOQRwADyFg+P7ZngFxPrEQtYcswxDq890Sun3ZmBJ/ysOEbZIr05ssM094POuiq5dV
za3413Qo/pkkSAXt8qsdDv8JM+9Pp3ETRqwmIihJ9/9mOr12dSh5N13VzEwM4D6QGe1bYSkDhhkO
PXu7gYrP1spFkfCunlHQkrA/4E+XCzIJaoXtv785OZq5fVParsQJ9Us0RghbGzEix/zVIjT2ueai
1DjO3eUqb1hddCumEi3WFzFbcKz/WfI6UzEj7C97q/PgkInVYLuPEMAkIfMS/vBB10v8pUU9uI+j
2OrNFS2nIbtHpwlMhqh/y848vDH6rENYs6xQxI9W4PsR1sQ8zGCAn4VqXBluOMUYvzLymHhZeEVU
6PkpBGE+bIqm+1OS1w4RB5F1SDSIhGW6daXGG1YYbGW8v8FCmDJVlTwNUezVIO7tPEw8E6jRSsly
FHR3JZvnSpOD7nfWqvkkKvPUHV2cxifA0F3f4vPKVKvs2HVH7SYrycMYaQm5rJpVxIUXN/9kQhWs
O/6o7EmGz9/hVKVHBT3di92LMW+A7Tmg3mk4mbAg3DhHXQ5vGCvpidWCZcd5rMNpbGIXsGIZWSva
Et6ybhjK5NB0i01HKD8AmNFnef3IpcpHa2PlatKYrRdf8DMCHi83ryJSlwsq/8IXHuSxLJPycM0Y
NzM/JBlneH1J7dYJQUdtg0o8jigmCIKnd/1WrteIJ5CrsaqO4O7hUrYbws0OxJh9SB3Ors+30na/
eQx5n/mCelqpi6uCuIZLkgCY4uQuLaOltYENQqVW2OfzLHsRRgeKTQnfSTg5QqLUVqTIJDBkTcSh
bTnle4W5w78Ub3HYzRt8hLmJQxwzgHH3Vec0R5a1xIjm3mSklB5Lsu87VrdGGDeHmElJ6z/Q4oge
Vi6r263uFrIYk02hm2JQKAUdfxi2QY06v/IaFVYtLrzkTfQcD0x5e7Y8POohViRvyOaNJS4eCksF
qNfr3HlLBvEoH4SuBhbyBT/oNbGkf9otshWouYDvQu18FTkseWopfDUzPS8SwpaAL7Ez/LOaUKnw
U9AS4cCLuBZh7GHGA+hBfa/OEpkpt9BgDi9s5PRUyAt8DxunvMGyF3SHVkOgeaBxfOI/sctZ5Lwd
VIPaHjCu0IC/U92sS0i6075QSUPyNCQy7fAFZ9eg+dp9u8oGbxjSinbkP15GBUahazDLjLUSessT
dwYJmhJqa9dY3SW6TVpe2tMnlC1GKIIoEzLiq76T+YmlLfaaQLdSoez9fJZ8mDSiXBhTgJegYGoE
pLqyySXIf+nTy6++82R3ZxkwjkXCwWMVGK6OjCOITxWnYZXU6yON0nw7B/xfL4CwFGbh4BBgHhY2
xUCFQ9FsfPMggRKBSuLZH677BX4VA5b6g3LWti4LKOuyROSPt/E0WFpeDz1POR7q1z/2QWl8Gzue
FJKQJR/1FXNKOpwj5w+t+v6fuyC28ICS7P107n5d9Qh9ToNDFmeXcMtaqEQJ4SplIThxep+3kwAP
gs1X5H23vNkl2vV6GBWJl2x88EwLv+G0aJUodW63Bhkg5Om/RUCRJbdbCF7b9C4CN1rc7jZVHVkM
J3OWf26QZ5ezCr62Xe1aOBE88e8obr81XE73VOvRB9aYfRqa5Rl4dm0bXBnJdZko0hTUJATwPk8i
GpK8pQ7x0IwKOb18C+yUQmgl2O+tCkag6uX6KsOnU57Q5lzvBCBy+qD4ysR7L9DVmLOQeDV8htRN
SPjwHN064G78aadGXabHptuMRzvHw95eXfkoZawA7PCf5MIr8c6w9LPzyQ2GIU4+sb0aFw0T9DR8
8lMXD7MtJPyRg9lfUP8RRzJ29PpmjVqzj8t0wZL6ppkkLBwJS4Dqk0CTmcKF1sRRkdGKsirfNPro
y2Jyl87A7X+h0ZIJf6HrUWVunCeNYlQthoU9XqyodVicpRBfJjvRn2eDLeZMwdc/M0cB7Fb8KmQe
LIkyaBynKlf0xEJrIj2Nr1b3oBXqaa7QfMsGGsjdINzeM/P48/aAj1vQDsDCwY8CXBH2qzdtkpMN
gkFdGTw2RORKRCTo/JAEwRdEAXXT1N6GEAlIWmk8OPFoBvsWqFkIptmvoKZxQ//JEIteM0Swr/Rr
gmvNvIaUxQFK5nAD15zWjHPcTkdyQn5d8eotb0f1o0uYFZ5F79ixn/3qpxbuSKvM03bAMN19qrNx
vkmoh4RX4ptG1f4d119T0YhC/hiTiekj61K9qX3z0D9fDszRPS8Ka5YKgCIIU0c/PmKxb8UB7liU
iugNsKOjsmwLbySzo/PifzeNKuuULs7TMCUJp0cuZN26FMQcjw4hS+lXgLTr0TDZ7MO+ZX3dO75G
LfCf+sHl69FSHl+Rem1JZjgOy+qMQ1Et8If7w2e8MT8/XSIvjTDbmIA3zmR+J6zwnSfAhotBTlBK
5H1TN87A786PB+QDT+yRQkIsJ+Xga3ly2RrUlfW7oSVmLHmEzVc5+n88Inzd0Ld23yF46iyfa4nj
2xR6GPrcNwzJ94NVfniXH9P6fWP0GvcfaZQzclfZjB0/7f9NwU0CRiNPOwoXjraRGvlDJPaj+7ue
XbDMer6OQHuLXPBLPTCx1HRBggdVq4j4jEMa3xWrO8VXqsSZ7Y6ETwph2GFjSbJhFrY4ipl8Iv7b
ihAtLkUi0Yj3lOH/L/Cq3LzUyUKkxMgfJDmrh0/UkMxbIN1KXS01tSboO9+6xlJgMqfhbjLgHt5b
U0l3ESnNl4gOUElSKIKtLOaL/DyleV6Vs3zzcUkrfCMbxYhduTerMyhP3uwneoD5wWyOTbNC698M
0URs63seaYdt1FjoMKxdfZRDkc4filu+wgR+2PHwxo/wa66/RYRCUWFGNCgifNZG9jn5zm/4dCzq
CsOsyZYyTp2T2ATbYU5YntAveswGUqaUDOrlO3FXdZ1Fq0xuXx3VcjkMLu4vMh/jtPVZCHOkNgBO
vSdDFwbJj8gFCuvRa9RNCHJv8Qc9gyPHuZUMhzZwWIUv5+nUGnRzKWwumErBgzZCU3Yl6I/+5Otx
TFi4jy4RzOq/av6IrAUbyS/MzxAPZL8Gb/3RYlG4ZjFM8oF3XNENOwu1zVCqV63TOYbQEE17j95O
npnSfgFEX38iTBgHgcNIqHdWxwWBo7jspNXK6zqRYOjLScK926Y9nuzavENrI8WGl9zkaKgrkv1v
JYF7LJyl1S5kozSXexkP34OsHb9oJXGdJqLBoxOSgapIwaDl3HplmEkf3RrX8eroMSu4h0YPYtym
sttXIvHS0MIotgsMkEiihrO7WNej/ekyRB/7b54KtrtGASQj3pSoi+k0USOV05a9dWJo3N9pJP4P
UXl0eGSAWtCxU0dkfHq4kri88B2I06xdCSAV4AKIE7TPeVt9f523DOGl4vl6YkFiUNIe4WAUChNn
An0XJGdPXqLgPDg72MhuyJxJoVzAT5B/yeR9eqby8Q2SvNa+9KmISt6osWalsu0KvVYI849JjlKi
i7TAyx6tjeUOUo7ZP9+9dj6QAMUN69yB04zE5ztpZC/RctJPIYfwf3ZoGp+Vozls3g15VxvyrdFF
Vcyoj+xUuSS5/REImmhIZPWE1AqLZY5hsbLnm2h/KF8gwCopv1rynq1e6pSFQiZlbFwsKNKuV8Y+
4ON89nwlViDm7HwVcZlqgNWUMD45fz8sedtIEPP+6+a0GNSi1SktBPGiNIeCjnVTXkIVlZii6NCS
tKKgv9o5q3Gf9uog/IoHNGahTEma6TFm16mT95lP6y5FNF/e+1CMIXGn6/81d/tkCBiIhgl2WHMV
nQsnQUO/Y7rx2j8+XtNpGe9XKH/2rzcAZWEYNA7yHCAS+3I3xvGUqhTAhWujiPHmd/1v3CPSk2Eg
5rrP930iAXZqY3OBo+MaobWWD4Xtt209RuHTSsfp+mly1WyzhRy/JPedLvssdnq7KODBPHzNlLko
F8JkTaF//8KkQk2cxbjCTPGYhd9qcsykj1Gb9PFHuo3xlyw6W7uduVktdbXjUgI24y12u4dqGDyY
eoZtzU2mBPP1SM/iLr6RlbdyJ2VLmu5ZyYSVq9aA09+Y9NfIQzR0er3/OTYH9lcRYI4SFClJQFK4
3wbgubq9vXU3udLMRygjQIOcrlTIe3q6eIFgjvFq5FP48l8V95yQzNUrJc0s/4oW5oZlBf6YMq4w
6X2/lQY6jykcjvmtspo9C7cZY0cscGfMqraUhhnMGXGmbZ1LlAekAObqBr7qsnQYUMCAN2jZF4H1
3dYtPTmfaiqO9KB+7P2U+Ti5tHmbUTMbn2qZtV68amQ7YpzS+v3ioKHEyyvqj6X7+676NGyCz8rs
TuRLXaP+LtWeXfX6tas9/WqBanQxR5/aIrJyhTaON/hYCq1t1VWR/R+sU5ZdIHOFTR0HtGI0Y98O
r4xTUIhCHURZJV4vq2ciKpjeb949RPKFce17ZqkHF3xNfBiwyPf/Z1MLtrigEtq/NlmRwEpwgg1R
JCx/fAtJ0p3+yIfGJKZnz203Lsi2k1onGRmVxu+j5yTopQfaxiLkRexP6bzcXUIc942S5+PVHiWw
gso4w1VTxEvL6WjeX0RwueyL1iSQRI/L/9GY2f5wMDYqWovCoHJT7qpjiSmYWMy6/SO84JTtADQQ
l8gUbMvXJHh8IgAuhyqnH934YFsGx7aifOBGw0WwDqwsnLrXwDPKVnXat9PxCQwqO6EULI+ZGLSP
Sa4gPe8YA74y9W/nkHDmehxP/mstWgVRCKUai+lSUQdSKUkIEnyFZt9GuzRYVQ4I2MWPIM1iK/hT
/B9QAkzJu6hPZ1rWouyklnF7QbJbhq7z8B6VqGg8qYB56+DJQCXOM11k5QSmZzElF8mtSL4m4L03
HDoBy00U+6VccqiuttClSd42IBCNkUOr66m3/2qS2wPerA15Op6Efz26kU0WuGOPQa8nUTOODe7v
nGW5z9cla+Olvh9llyoagUrXnURF0Esu9+KycV76ThPnw27d3g9ilBD7k+q/Lx+1XvKkNAquBFml
sg5uyl7o8sZhod9AajmmotTQ/5yoOALOhQy3LS8KmIvnQZ0lZyP/YOP8juiT6UX+9B9IoeCKcxq4
DhaFmmcTm0Xh9WXiUFGmDLCfXL6IivMZrZW8OMS/X8Uo7sTbL02gScOlc80satByRicrjEMdtoqE
8a+Nont/XR0yXT8KJPRF4Fq5YXIhFmr6G0RN74XrUgJTkzRT3Fs7up7+p7tjYAgW2TsN0f3A5UUm
hJnROEbETKykXrQ1tlk79goHBsVd6Yz2qTgyuJbcp6KvFzZdzEKzj4QMMlsFZgNk/j0ED8jWu9bt
KAejY5OSlknEikI32uQLXOFqggS1RBL+t/7r3pPhixWyuXDuwhtufHjqgLkt+q7joaioYIiciUZN
BxpQGQRxLMKGHJMOJ1R+HbMVP2Cd3GdMcQcnOF0Pn3NYngS9gRe4S2mg2ymsUmPVJT9vTbLUXHU3
0/GDyDPZdD9H4WjYoTDdE/ijviOD+2Eq2XZ3zT/opJw+ODlwjJM7dU65y9i2RiH1d8aAdw1D/TSi
L3T4ovjk8dvUMX9002I4pB8aCNzOBevUywc3I0ZVEahJ8XrszYjtuO7Q7+6paYjyURx+Oo1Kl0zB
fOPKRJx+gMaTyJdyMVttSRh9PKgxcRcIJpYLVH+FtzoDCBhMdGXsnmHuxSpkRe+s19imrK+2UmIt
3IGjhOKLvaVFDG4pA1xZieGZxJvL8j0hx9kqW3Amq8lkiJC0UjRpiQddaEtwbbpMVWWCtrzFRKPH
fJKN/uX2Nq6D1jucBB05EdSmRDonDVrEh3e2d2Ra2OFjtTSvbhsb3ekx2I7Kt2GfMTfrc7xc32/0
e5Vj7Hx6lsSrQeB7QcKGrhFbgSjqERZdtq6MUf0yjjUUb9N+RudxkLHVsBCnyPmi0kXbHaMic+Vl
W5Q4a9vo3fiW/3SNe7lgOQa7yRfmnGR7crS9cQoVpxejPwGk9+nH02Wj7Lx+xU2W8JUkyWxqvUEU
IFx5p1kg1B9clWUcX539nDBYlAlGbcDzUGh6Fd/LhTdBd0gDsEYIWSDPLi1CkFNgA4OrfGO+15/B
WOTyfIHbcGoVOtmUCLwd8tLhTeDRw2YqsqCwaWJ8XR9AwGvBs63Albmyl5G7gLD81LdsxCBDYOEJ
mvY+IIdjz7WX9hDm1306GwdOS5zcnJWSg+qdQxb9QCpOSl4RH+fXjJCbN5O8iP60GCY+O54n1YOZ
xO25113bxKIT91JeQrye4w06jSZlOOc04nEhwlCoOtQWgzPjL6v8ZdleMB/eoeQRZKltK14lyN/b
4NjIQ1yaXcrIjbue12INNH03sXfAqFD/QURs1Fqenh9H3yynClBB1+uSqhOKhIIUBZWo0hZelm2J
FVrVqnO+IjVDX/wvGXIpuX95dCJ9fCI9vc9V+MCD1u42lAlqj27LfZPct3LsxLKMsfxFIeqSggH3
Y1k1wxqlMKfkOds0RNtuhuOlmZe+96LfwZwScu/cJC/gTFV8No39J1AZw7uMBqJUq1Mys8rZhZS0
gaI85K4A5XfcrHCtp1MsnOyZDTYQ77CXNrX3uhc7a3A7CxRBBBIf+yxZOB873X+VBZOGfwlZozt3
wg8b36q9QugWOgKksXAUo/HzlqpB3TQtrfsf0CfwMfSydh9wjfZuMdt62hyf0XYaaHEt+FpHhqzp
/+xeta9DWHkaQgtoVqpzQ4FmT+FcNU4DWYsieLFkBkXRpNgVQpj+9AaDoxgapEdZRvDHBVM+yu8k
vC1gOvx988AgsKN6RsjDcDUabDpvooP8T0ajicjjTblvsvwuMqSlE8/JBwlP1AGQVCjtZCpu9IIQ
7anntFwuWcnKzN7+lbcBc1eQJC+O6ErWvpWJOLUboFFsh2hczDFKV0wmBBRPAygcuQvy4ysw4qE2
f0H3oD43+IK+W5w8wzxRfHKmZqUQ3leuoicRG2KYgg0vljVGdiIs05qA+oaBkzJ4Ea7kIi7HRItf
6825GmdcAoZBfnZJ35W6WMNyn2likBxi/9zuH+bC3TlkQDiaQ01ml3uzDqn1TsQu7xgdEVYN0/G+
97gmGd6Oa02Kix7CT3nenRpuT3slT3H0GwUmAnUixq2DE+hoLiseFsAfIs+fMC9ROajaI4DMHZCN
p7sUYOuKlzPFTUsTQkgK3TH9RzuGq/OR3QtM7GEi3NiH5JHM2kw4MAjBy2fuSdxyyCim8exzKLrP
VQ1qFGQFcV6nnNtwVaiqqMUnF/B2mHeqqoHSnqzBvNY/BKlG+Hi8epgFiK7wbCBmRdqs52n2vWic
Mc7bDPw1xwlwYWwm9eAtm/47jeDBXLDIgSJVPKyoRXui504ClB/qfxHV3Lkf/PjZADBn8eF1GAyD
E5v6kDjH2RTqSsP07fp/gXG10K9l4WgbxZCSG7pUetuupEtr7t6iamqcviiBHHMAzj9aKhxdSTpI
usHKExkaGEWhQdNTI1QI7shMIohJfAN9GPqjv73cs8HMX8bN6zd4yr7/ZIq4SZ45UmGti7rXU1TJ
1sNPJcl7RVjahMad8ooJRPpSLt5/q4j+N6H9kgzYlL0ok01YQRFXAH2GEtF7SsHFb5X5EgYAx6nm
r9yZokTHUHMPF1LYe7gFj+evosEkG8q6bXkul32EKsb+dyAqzj2znu/rKERc+UpkGHqBVI6nGxWU
KPzqTDcskqWriydzd9/VMt05P9SnS2U1vzoLgsUHp2KD961pAPnJ+P1Uwnkb3krYLxk8aXarwsjk
/voi/TO5w3+z+SBeK+LBzhYX56rzdu41R9w5hytiuZ0oQFfOZ/qZILssmgQsHrf+gb0nM7FLNLd0
cZl6B1usorxVuvqgjo/O9p5W7+QZtPAnLKRKUmtv4X3sCxEi90QXBCm8BAKUZvasmicRQ67OosJl
Xnp388P6JWey/WAOZRoOEIosq2gkbc/eikN9ii+zdfqCbvndZNf2OtFCHfyVNHEmy0JW7CKqkgOh
4OW+KJGmXjtRP/zEBxu+os6JtV2ShD/c2Q99y1K1uc8BXJVb7IEwIeg0Ij/xtM+H4Xt6DmtpjPdS
6xJHYnj87XNwfF1oo0ILcE7fYrEpoyyzdbPUlkG+dOhJr2+uOqz6u1T+TnMtVxRWOKc2kEwrxzeK
jeJ526Qy31OsE3BOXLEwHDXDIVu999DqCN7Mc4EqgdW3hDInaPPyieYKNrQE5aPA0SiiwVW2ITRf
/4Lac2iRebRAVkergESjCUi8wT1T4xsU7KIAOYyJ6UKGUTwmAQyQXyyfgtHuM/hUhxjL+sABTODv
vCz8mesL2QUhZJttZUDBkso/B6CbnUysMpYTKFUbvaN2HS/uCe360lNGRksy5OMQu1AGVw6tx7Jk
KG1xUCaxN41iL7652R9EhkB/AeAOvUN3siJ3HPHRRPvmh49qD93LQhrBWfekqqcSUNOGvtxreiSn
WjqeM8c9XhlxLx+IZHwLacK5ftbbFz+Xt8P2CyPK0vJDPdFE1dLLXUucDV0wodEfhLpO628Wgrba
9dfdLpDRpWyNT/rcUapBBgwuKqADbJ1JUBmsXh0Vnp03GaslAcBC1IIz1ealuqz2cA32npJjV1aN
eAv5ooQjZiP7Zt6azzqP+QsPsJQmBubYjB++8OFk8K45lwKzLLfemF8UH/OJ0FxspvsMhHsOnu0y
hNs/2G+lGT4+Qa+R4S6rZBWMtE0ENCGvq5SfyJoYAlyPk7wdJJBc+zjeoo9B/Q0PBZ6O8MVZ84IY
elXpdVgVTLnra/tfYWnMXvUuDnlWRA7+axbWh7HgjpKTDJ6pilAcBB5MdbCC++H/NPwRA+UpuUt8
2gZ1KW7BiT6ZVoozs6Z1EKL6PO/vP47qmF385rPJ3xXwQOFpDcFKNIFyJ1x/Nnqqn7UEkjFTBC59
oLVUVG4c0tYaXxY0mWjoGQ77/XF+F20OHPlXF3lk3Xc1pVAEJnonRdqEjnHHv1UZdJSrYW+I9n4G
5XXjiryll/kLfDH3uain0NmuqmgN8DMWwao5yGQNUmMS1IFd94CwwHoirBq9t7xZ8yKRrvpIxpf+
nEgMk3a5QSqnIW6oeWwqZh8Aa7NxLRN+JmyDPfjsMLaQdj/kq5mlA4kjlwFkRvoYdaRogyFcnCsE
UUDroTQqnDouqPLHPHLcHEoBF2ElCIxL2+UZv9kdS4q+GoD0eDjjGxQ2TlojdUgNC3duCGwyTUt0
/hIs5YFsTHmcr2o8XGEyJm03c/Rn3CqyrveS0aojiTpcQLAVriqEfSLxNo4YO4fD7R7NzAkSfRFc
osTY8On3pHA9Hzf35aYLiwvyhgTQrSvSfMUk50D3EfWMSII0lEYO6PgvKhoXKTYH8Gob2X7/qx7k
EjoHYPAVa7OcW1kiTxu1y4mR0RxXnP0A/TAD8J+KZl2Ro6RfMj5jdt31KCgLNNV+K+p5PsSaDRUB
vsiFaLnDxeI0MEA3giviTSosinkjNAAkdXW7tc6C5pRQlubLbKSbqTu1vGUt8nIGNkRfApOvPY6K
70FEkI4JhTX6x11FMWEr5sr3x9KqEZD538DiTdAUPFpq080XThzqr+gSuwHHBxyZC2xm9Kq9Lz6d
OjYOzyMWSNNcF4PJ7YgkcASaYJ0nuCGAbrnOUTTtdXcEIktkhlQn54FvPsr+Uo1BIZPy1te2Wdh8
CmJruNxRf4YT9qQaqPSVk7vgN4MhNaqa7C53TPfEgSsdKGPfAgM4U1kCtlgowVcf9PG0mstjTvIc
BxGsxC/i2sPjcN8SD3d9NOeTulzt1NQP1egAead4bM+fGhgGn05n3C/4lhMc+GLfx/TT/cvFfa/r
qoFbYHhZNK9OEvb3EQuWuB5bvkfRbyr30ubTM5ZruwkhUqsxiCMNVkIn9yQMfmVKW9HSz+Etolld
i0rtaY/j13He6ysnrBmohjILmmE1i8SkSahsnBYlSonXD9OVzAkXeG3nfOcdLU2Va73NjDwHoWP0
yzblsBCqs4VGlv6q2UjgaapPnEG9TJ+SvPQZDKLek6JjRAMrGcSZukNh0FioIhpYNWYy+TUfhz+d
7J74u3HJSvWM1LtMEWC7160jmt3Ps1fN4rWTpFrzfJSXsNwb7AZSEiLIPjMKD4xcnqv2B/IhV113
B828HBfpIPzWKyNYviTiPUfDBfpg971SRzEl1MV210ek3NaKjdxjwawqnaw35E9GgRhq89iCA/pM
fRhQGuoqtPul/ebDKvX2PmIISHNY/GsOeAHMGZsF8mdYIyaShDsazggtECN7k34t2FAVIHlWALPs
VpnM92JuhhGNPfy5HKVYAY9dQOFDed5ABkFLOSOtKtxJgehKSUGop7Dq0Gc37m9e64mPhA9cgvu0
vwrhSOgTClQ0LXWZj41u4vtUgFTycPENwhNq32d+wHGNf67SYL0+pIvkKeDBGh7MgqnJh2GBo1Ws
l4ywYyXE+pwCiJuIqahjBJ5jZc4JKZsitdFC1URtb1+ulEutkCG+P3W26yXWprVt/YCeL2TmDR7+
4hSm+qu4UCfZmYwVSHnHs25GrstGX9n8kn+8XFKuymsZtwmV+IEi6p4e8lAOEXlqIg+3uL3ZLgF6
94Ood+XL5/tnnfzAKPSiWssLRfwINMsdd2aKq0Tk1r0GGiz4TiuJAtph6AYLclOezbT2SaR4jep4
ggUYRwEXvU7ZUn8gCUGbNvzsxIAa7S2hMV2Hnfa35rY/2N7zgWRVRMDhBRKtjH8alvut4cT/+nxc
Q1prc30c4ThILds5e3vntHQV54zFuwRpgufeEZblRAeqj+7zn/RHDX/b9j0AFXAC9+ajDP5X3c8g
jTu/WLwWgW0120ckQf7p2XtVTZmKZ2fwBoNYPAs0WzhVj0PdoI0lUTe0QXfQSASPKb3fZzV66LdV
NHQWvN/xtx7lR+Rd04kDg8Sn/NBsCxTN3Fbmr65Xrv4LP1JXjO/lNIaKApJ637kYbc3+1YfB5zYK
kwK2XIoSpNI1zx9W7ZhUkI6XaqUqlBBMbaHChCPTS9OY7cOotC+Lb8IQmFa1osh0g2xYMM29f2YN
MUy+ySvUO/SMa+gqittzuGyg4+OUtb/VTY3aQ8rfzfYcmqvV6MuGyb8oZF00lW02IwVaEqUs2Zca
kf/hIdeNydw35PLobu8u358iHqIqJRdP8Xqof603rOUDjLvEhOiVWgAHMgTFk4l7Q6qI7c14Kmzv
l+EdkAT1nLTG42aztU0RHj+icZ//mAsVMc/019J0q4IpQHfnVlX56dn2AHqpSuiRxytU/I90zv0y
WE0StipiqZcO5GNWHHzXAD5PQXhL52QQ6tS5c9Hu6yQ/DbbAEl1yfV4hX8ux37WYe9+4UcAYFO+0
LpdNgXUJRFl4kwsoKX4nElV+ugd6AGKD903aWgAbZFulVDdPIfSkzuYIjhapt4FfeiNbXtbWNOWH
UF5hZO1bRFWtpyAPgHiyiRbn8ncWVGk1STy/i4crJCLigSqplfaqt3OXOCZ6NNTTUTLi7YhR+h8O
scASYC3WQKPd1y2DNp0kHlM0dhD47GObbbAUrKdzKrvMYfosRlDV2vhzJmi2dEqCOjGvYinlfwvR
H39LCTfy8tUILaNSzYvwdiNfCx+I3/h5uCjBIT7IS5Y3DwOwT0LxKY+4oYyKvOb2hKP+IV9lnXwC
wh3eQ3wnNfDPvQEvCDri9C5Zj9FEXI9tn8/TolRZkRzM2GPjoT92mp96rUd5bKEnMPss7XzCQtEJ
IJ7zearlg0UiEcCHUoAHnTZTCVxjK87lUSsccpYbOZJJGoQ2u9wte/SuJ/aNri6oaQk3lsNSgcxo
/RZ5Iasx02UxYGcPFll4p2+FWCNJgJ5qAZ3eo+ms2dqG1Znq3z4E/GB9sg5/e6qElJou7PHiOCQz
vK/D8xvQE+2wlXSLDRuQjdxwBl86VO3i5Tkz6OUAzOElgAFsmQhbvA8buP/UhvevGPexg2RWi3eJ
VgYPtja62N7Roi/EOqyb6JyhIXcAoTUQ05EqAmfRyVrCqrW/O61m4cznXohWWu+h13yWDVYc44Yr
38hJSIPCPWSH+5Xnho0WHYHWV1IWuxJma6Rpy1Pa9zYWa607r+zDeSULXGbJQwU8VtWq23RWqTNw
uYdixYP5AvL39Uyk2aEUE1MV1avV6RfH1Jdb0h/wSkudbBbDTT5kSAPWZoMwYyPupiUNnerlWdk/
68EQehCliJvvUtntsD2P1HRW4FaZOPsFv23jWnT6nlAMddnZvKAfTzMaihAWqMcod2GriTdffHhj
NUJhmZBeb08FCg4niacc4bg8zjPAfK1iGwK5d/wLnZ7z0RtbpGnD/lSSJee0gkC4rwafqUnjcmV6
Qb0sV5lzQSQBkuqnDwzwrcYFk5msSaPKBOlrzg4ybf5WqzGevLVHWH4TiSGnlXGONE0gP3jPAItu
ftFJDdHdOP0OEbfzW1EJrr7NPjRbifdMjH/K+aV1zsHirbyunH6mO4yDoOJrlWLQZhWY9ARjnINA
VC/If1sTnbHc50MbQvT99hrwr5odQjc4U7Q/VfoRJ6mbk0KJ1LpCjKJY8Aspe6oiy2zDQer47+Ik
CktImd1wuEIIYfiGp64REeGXTdzazFsQqk8ovW9cxU3JhP5mtSAv3aml/goWBsL/yVAoBv04B6Ao
Ggif6qOPfX8hkOoW+ApWbPJUNDVxuK2vEGSIklWpHUhO/m++gy92cvKdLC5YQACB65avarqrpc+v
PVoEGmcJ92be6UjDIhfhIGAqYE+qiK3l9NaOExk/T1yr3ZfF/Yk7Hk+PYt8kNwB/b/k6rTgSxStF
xatfd/eIlzHhbBVTnIP2jbY3h6i28r2xmmDx81zVXYj8gDeU4qGHDSsibcT44w1QZmlckEpzPbzD
9nV0QGpns655dbd8PDcE+QQ6WZ6BzAcbQQe8a9DnvsJNsz29czSJh6EdxG0oBG6Z
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
