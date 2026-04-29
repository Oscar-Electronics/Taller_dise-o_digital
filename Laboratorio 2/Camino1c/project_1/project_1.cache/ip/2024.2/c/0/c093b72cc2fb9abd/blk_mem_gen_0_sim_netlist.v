// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr 28 20:43:52 2026
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
Xsxn95ubxA==
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
