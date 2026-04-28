// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Apr 27 23:57:50 2026
// Host        : DESKTOP-HJBI5HF running 64-bit major release  (build 9200)
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
LyzwFAPfMg==
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
