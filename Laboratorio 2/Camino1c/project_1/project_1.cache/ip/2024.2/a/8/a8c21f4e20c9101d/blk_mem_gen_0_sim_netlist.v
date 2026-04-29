// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr 28 18:56:34 2026
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
mfgb+/eAJA==
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
