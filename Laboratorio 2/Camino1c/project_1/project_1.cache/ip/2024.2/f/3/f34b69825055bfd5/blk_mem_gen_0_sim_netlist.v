// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr 28 22:40:24 2026
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
t/fWI6BIbQ==
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
