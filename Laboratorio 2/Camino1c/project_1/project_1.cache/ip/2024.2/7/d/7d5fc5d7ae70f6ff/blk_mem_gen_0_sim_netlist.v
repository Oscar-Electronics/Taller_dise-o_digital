// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr 28 20:21:31 2026
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
xoFyst9hRg==
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
