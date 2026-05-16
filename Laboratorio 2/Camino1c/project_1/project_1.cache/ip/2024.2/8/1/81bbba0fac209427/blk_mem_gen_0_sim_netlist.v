// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr 28 10:57:49 2026
// Host        : ASHG running 64-bit major release  (build 9200)
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
0E1shbDr3A==
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
