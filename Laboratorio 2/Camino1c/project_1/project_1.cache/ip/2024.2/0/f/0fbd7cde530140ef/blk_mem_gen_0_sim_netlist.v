// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr 28 19:20:36 2026
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
IeTImF3lSg==
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
