// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr 28 19:58:28 2026
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
5PfTPB4qTQ==
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
