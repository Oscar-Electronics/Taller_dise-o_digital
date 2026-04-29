// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr 28 22:57:42 2026
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
rMYpWrqKXw==
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
