// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr 28 01:19:16 2026
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
aTrv4VLAeg==
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
