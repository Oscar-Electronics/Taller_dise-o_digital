// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Apr 12 16:38:17 2026
// Host        : DESKTOP-HJBI5HF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/raque/Documents/Proyectos_Taller_Digitales/Proyecto2/Proyecto2/Microproceador/Microproceador.gen/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.v
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
LKGOnjpq
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
