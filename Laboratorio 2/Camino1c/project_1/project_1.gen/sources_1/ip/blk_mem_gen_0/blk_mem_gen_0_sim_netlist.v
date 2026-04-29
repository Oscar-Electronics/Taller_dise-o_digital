// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr 28 22:57:44 2026
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
