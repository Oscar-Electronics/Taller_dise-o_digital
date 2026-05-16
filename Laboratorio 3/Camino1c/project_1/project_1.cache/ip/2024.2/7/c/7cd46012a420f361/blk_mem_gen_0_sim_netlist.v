// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat May 16 11:42:31 2026
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
plm0OUno5taEVjJpffWMjv2WXTn7WV9iM5MjMIhhRXU4oK8orOkfy1e/bLkb+PehZR7XJsdEQg+P
ezub2RgvlHXcicUZrMF1SvOYAi9Y1JX26nABMaRVwDfAwTMPAB92we+iwNJYtETrWVKC2lkI6fxB
cEtj3ztLIezH1Bbk7DA1tOP837I89D3pG3AJy71MtT5KYMfuhZdV8sjJ/IRhTDPPw5v08xbKqRvc
1OzTJr/uL/YZ8QPCAlGrZXHRr6lqOW1E0nIkQt5t+3x8P55srBWJ1rJxvjc5Ol7S1tXMOaG6ggT8
Pz6bcNZqd2KLsNiWdeLhDsx0aRLC8mMi9lu3ExMblcvePFOuY1ifplTBp/4lk+Y/n3t+N3U9UojN
dUFg4DDdKwy0xIUfLWXQ93VnoKNHgJ+DXJ6EewGVQJ6fN72lNDc9gJLcPS1JrmPUltmxLYqePI1Q
QDKBpsehh2LyfU7MzRpFobKX0GdXy3SPvDHoKoiDcHeQmnmfQ+crLILugf7ty5emH6XSV7xuZ+0p
napTq149xcFXxCQoY2OSa69gJFxL0TNuH3u3fZIo/Pt50LPZeFe/EZJBGdvU7enAw9KX6LThzNuO
1lNeqfqEYk/WEi/z2kXWsx4xcS6TV9kyTNemGcFXDPHcYBxo/CRcWFVwP1nIB1nA9qXKIwiJ7hoJ
KMxZCUKndqc6xnSz56q9yS4efhnwcSx9j82wHoYzkIOtOng8gczdj9jtVlpE+TanvhtDvrpEACba
ipr7qKelqVp8wkZaqlqdj/r+XNmW6PG3p71BcGpqbxpStkufYWNY8XBiYI+h6HLmr/q+WCFORhe7
BLLu9QN+PYLWHECzhrlqyvrg8Z54/GTp/98/ZrItHH2o3jAbLVKdmVi4rpKhFksENBfAGWJmVyTp
pD8oW+RrxpGVB8qDC8PIUNJWlF6cynetmJgWUQAVgSgzm53i2XQXHbUTIgyyesH/JUG6SiLRUF4T
R1Tx5Gu9QVrS3+Zz9+2NXKp8EqzN84MHOsYdMfmvw3duV00aL3VtQdznuuNMz0gNhFJ2c9oTqITc
DEVEnV+UBwGJEdPwgQnEY6s+MUsD5j1u025WN6sK4LEBH+rJR2+SD20xIiSISipY6ZCNwSQEBrKd
QIUZ0ds/eJpMJurskGPyFtnbqF1yM40pOkrLU6HLdJmnhMoAqMi4+j2Ckci1LI4RCl0+eAqXyChe
j1eF8xIT4EnGibkhpSKCYZskDKvAOOBNkqEq0YGj9zVmoGGrxXow5RXQcOkLS1i7yrGXnomUNSTL
a2SB7792c/wi+aT1fI6GGUhrMYDGFtxMxFIueS+Hq04f4a88bY73p/Mgr07TFanGTDT4lA8P7EKH
+BHIxUaDVBWH1KH3WGzDf/BPqPv8ELcwOVI59s7064LpijhwzJsIHjqt+iivHc3x2G5ffrhoZZyZ
974Fh3zYU85WToB1fwSw1FMFIUOyXjIdlTe2TUpUH9s3uOCPprMrXXpsOwXmT5+fKMUqtiA/EqpB
kjBxBRd6fld9KnyyT34HH5CzohVM2KtEcc8wHygO3MBu9zhmGwAl91BSCz6s2oLHcnZJnYC8Tkqk
tQQko3he6PbQ1ojPSSL/TmUhMgPmdrLlCtpbDefg66AUaYnJKwPBjHRUJOUn6Ug7pNrR9q40f5/c
apRt5MwIaKNjP0LJ0KXAY5nYFggxcZl7fp3HoiVGEvwE8xaX4WxDBWZ6MEmFoPqdEt6UQDpSLAsC
OrKXIMd5CN9nWrW29n6SZ6BCuCWHmhFUiK6haNuxKvhvLZXgNSoQ1OM/ZVaaeRuuCcJsrLAhavLd
iFsmeSLSq9q8KUU/tGGCTaeG5VOzEDuVuexGmo4RMWr0P+8AwT8x9UzuQ/Myb8hUPpuHGHpQkqeg
79gHWbJC8lvvRjTeEdLGF2wc7Nqo9NvkTRFRnFF7UoXnLogZfGXkIbU2RFsQ33um9qAItl2dbVJU
MgflFtihP+FE9rSKy4DCt0+gaCsgSz7AJYRRo0LUtz9GyM2YqvBvRRXQUGW5PFUSbEIrUMg+ZsNt
Q8eP/8SiqMods9zD2i6L8OTussC/SaLM2oI+NjUVGkdDKp7H2bvlF18fklv/y0+08Dfm2Ro3G7bC
tnMlfaDAtTTq8zS3EKRuz39FjyHf8ae4DJznFkCJEuRio1w1asHNlZtSq9On+HxrInnuZA2n6OjX
DMPxJOBo+kJvgGn1TLY6B7AGIC81rZo2XAUcA7qRe4EgO1XxjlPIt4wIi8ylMwemO8du2WOOeSHz
5tFailBgof2QQDd552ZtTkqA1TjBVA4D4/WwhA2EgZXqlw/2Cw+AUlWs1LwUTPO737pmm79JT0IO
17jombfUDIEObEwqywR34Xr/YSQmF9v3Zzlb9VObve8igCsbxnzqRynlcWmQ6FRCCl3jQDDhGCC9
8440Kbv/eJt8u5DrCpH/HGcIrgWp3yAKuVlAuux2YxZyJCwqC+w2qYdM3KFAZhKtVMSWRoOAkX+z
RThTjwaf5oRCX0NwDZrzwhH4t4cpCMJ3EkmZiCbm/OibzEhqfRmqn83xLUzjhF0NUKhyate1IGFq
oYg6prK+xUB8e1RUg2Kq0SUSj7c6GU5JEwekSbT2hBbWuEGealWkYZXkRLvyQPLuyupk63Q46zBf
MG/trMkOG+wyOKfFdv37JGwDgo0/H9zr9L4nkPch8lWxEUifliPJPCuwSDX1xLo6AHnCf0t+h05x
e0C5madER+Zm7LWZlIEgCImYtq5DgUgONMQPNQp81Wsz9sgO5lGW+gw0urySg5EO209RahcTnOsK
2YqUc90ohS4+WzRbCkd3XBp4gR+9abqHAASueZa+r2L9waA7AkUTtO1J8ohdgScH6FLUIaqdmojo
kSy+1WJdJDW0Rabe8LKOoMOKUQ9bAHGBeHjiKm3Jj+8Gy1exMIfEocE8hSQH74ykgCdC10I05B0g
jiMf2VpFzRkEqD8OYmm5XYfi9RRXie6LD3fYwDtmBVw3gwep4PGP0sRys6LnOjG1ErV7bKQEuNeO
EtaS8F43M5B4vIH9kmZzhxhiNLQ7x5E4H9SvNeU3WdAWvFGgqLKF8wcst7epEn1zEyhLYHFxQJow
+W8Lwd/SThRxBzM5QhcqArYpIfytD+opFD2uNh8ZW2h9XGDgWRkSIAp08Jb3jkrWFZxFwiwLBnUD
is8m7RdcFyqVPtgeSJNkraMr1hA82pRYHpDCxcAy8yeXQPn7oeZFtAKuraN9Dsuf/AoYxX3ngdSC
z9Qm27TNGunx6m0hQVDdmurxHFkXWj5xSf1N3SnaFKr44mPvrODFMEzGzn+tY2oaLW/C0tNIVJWJ
QeZ1hHvgMgMO/M+QUPA/NIbkjVZ3ZLX8TsDcp08SFVWPE7ftWFuQiGtXBpi14Fk8IK30YXccZ8vZ
1qHGsqX80nxpNk+JrPu7WHXOWlU2ByM7yQJHRI0LrvxysrVLHr8Yf+5MtsZ65a4W3e2p0laWIQfo
wBiM1900Yvk4J0WfapcD2uGg5CbW/CrDdHrwvkElPJ8JvstQ7BoLN/r2lSOCP/9KZocWdCfrFCkH
a+laasjV9HDsranLdbhsw0eH2skSwE7ajA+3oazXh5VFo8dxDOIxVnzvXNkTmKTZ13qCrMudNdNY
y8//rpmBIhbPQ1GJgSXlNS1jNt/zBnC04BIv0ByQz/RhLy4oisYKoEkmuem6Ywm2hVZL9wlSX06C
HoROVU8InPzJ3ESSVAhhms4O3jR/du4CBcPedA0aSZ2aO25J/O7Svzz6MxHtvVJl/r3LeGHj5mSE
CxiL7yoqEy5jf/6RiTK1pQLDZkmNN9JrX0yY3Ft3gy4+23py6z6yC1AeXfZZKj+i4jRztksBxKBZ
HIfCUsgCrnYqvfZPy5cSuKqt149yXUzPXd4k99K2ERuLCAszHTalrSwAgCRWgBev/cOsu2ah7RKF
c5IDYFyHybVWlrjk+oMVneWa9wfOCVRCZTVgcNhnzTD8+jcivF+B0xu7ZbOujpHzjn7/hKOiEutE
kxomRvqIkJ0X/ZKidTO+hJegfNjdcvY+WfPWABpWtl8ZKX603daDRGRMUV93fr3p/YbOvRIl5upn
69h03tSejMuZ+G4HCrN/tOW4c/fx/QdJycaj7ce83c8LYvGpbOPLLf4bRf5iiPPW54qytXmnwSFC
DfG+FgksO3jYtNu1dJdLIMUXeMS2jZOW819frLqWVENN4DlVRKpepkCGV6W8Dct3dHiuE5YlRMlQ
FUpjWTXjm0A3ngESAYrM+IOAQnOocxniaEw9UjJcvi/q37fMyxoLRZu6xs7+XecJOETtwjxiOtli
yUGNsFB8s3tnChyjSsu67ZZW30V2JSKTXVTOcRZnNv0eONBK0cFXSuEO2xxRQjxNMjuas5LVOe36
BXSHvEGl1C2Iw9vsdWVvrUPUEUIyHRR/ctCyTlfpELwYndsbkoznEaGG6/Qt6SbO8/4tNa0dndJa
RQj5cm1csDsmSWDDis2q9YhyVhwB0reCyfKQ0l6kCkbXuo+dy4NjKHa2jcNHPep6MHEls7iD5j0x
NFklmTIeaaEcAndSjhKQlFlhWQzvCurnqHd04gS+IJjvgfBPJCGHhaNzEM49U4vZLVgE/v1/bngz
L2trqI10j4PiBfoUgRab8ruKfcWDtMZYSiF8g4fOOBxwteIwB15FFci/1nrUZtN2DHBDCBV0u3zc
aQeI9T9oGv3PoR0DsZobc3e98uXevmx0XbePRN64ZxgwqHuZzslbfd8Z4r7H7+VZWkIyIOH6KJmH
E+xLv9cWhKTcCIEUIHe9MUALKLccKpZdA4jC7DfksHheSA9WC9dx5cqsLXWbbOISNDvhZNcXJ1iu
ke80wd3LssvM6POADW9pR9H5hChUISc2nD7iLM9vbcQkTwscZKUS0zpijmoirwmlb+98EAyPG8sE
P5pTnIcQYt6903sGW+viFzxjslo7+wJ4Af5ZJUNnHFX5rguUDbd8H1NPsRuI71cuZ/x5ytg0niU/
6E8XP71KoX+VuGTXBvuEBcAx893Hg9jfe4zxLGgkGj+qTt00Bq7yOBKuHKig0gVTM8kEwT4kFhlH
OSqmRPIGW5/DWOArJi3R0d+RyJ3OKKZisW+3iM2h8AXUdv00syci0uihb31XsYrl7nzU+32xc8Z6
mWKoMO6u41gDwloH9hi64iprFTh7slEKOx0eUX1kMcKvutoY71AcApH7tNjFFgtlrA1xRxDAKj9v
ZADfXKyhz5lVxrcb/c5P1yfCuiVi4Atan6MvZcn6PPaAIC3YrYVcofw2bN961Ba7UmoHiuQHRP3u
KuI4nV3/1zrZxqpC8Ll0iaugLsYpBhFlatsrapzz9+0zapXOuRyYKCjYbRuNwcQbz3bddgWG737X
VrrUEzhDjYfRP/pM5yqFq3EgDi67AL6tGhRHKihwBvMusGBK8HL0OTdm78h2gdgVokL4qiUqFYzx
4bf/Q2W2ccHQN/LnzWOaFSxmaG9+TK+c/nBiwrwcIzPSnS3jbasrYmbM0m1LTd4FFtDhP+vFsNdv
qmvu4TEaiCmzDohYn3CyHxpt6zq3+wqENep9iz0cev4/XVGdtRXPsEQqVPJr6uLtQj+fw6uChuC/
bNMyFAjGgLB3TGlo2Wqn6s2qDuGc+41TbT8viOqi30U+V022jMuj3Pvm8T2eIknUUYjeVqS2zgPh
JkcWP3LRaIXvr2iwoGvCilspfSyHEcDdyzLmMswDxVqXXHF2xiT2ZZ8zTeHo6u0Ns6exdrULwkJQ
TZPX1/ppKIQYxOHapvPRJY0GhlSgisY0AC2F3lcjUZ7LeuBRwaZeg5+fVfmyJpj3nihHhMzqcX2X
tke/EOVcdcpTuM9XNHXi7+1CG3qefUPzk0mGENOKtww2cs/Gaaor8Xwdcr5UZ8xvAbMt69Wuulfe
BGo6Hj3ld/H6aTnwjYH7Y+SfJqHe+zmzUinEdyRHTgsWF9Femp3F9OBVUd+rsfzPhFmChbI3Z6mq
dV9rP88hmazqJYYoBnjDCapM3RPkhrjZw494ydL9Gv/lg+Ksi9+Hp0ybQHRa1fVK+WAWd7Ez4svL
C1/MMWShRRO2xXBamUMllq6jf/hHewEodh0oU5Wab2xGbbddaVcAOEAdn73RHIj9VO4lwH+bm1vI
CZ6e12WKETEphkZp5DaJ3NcibXrbeNf/67o0Ldjh8hyy+2KofJUrl6LpZMV60PBMa5yPWfZa4af1
OYTO5GG4vYTZfWKQHw/rgbBPpcBooJkxkvRjiSMDQUSSOz2KyBOfoGdMmeaDJHfWz3d5hgYOHCbm
Myniji4uIPsjXbhya81Kvf3ilY8HtvTT90grN2I2Pr2pmVShR4hUWcGtM22ZV64CrOgxtuhjHjvR
V3mDaavEJr4ZJb8ZMqz2JRVwvjItL1YLLqZ4gkDctsnmA57cpfsNC8xSJvaOwqnlZx20bSx+fLvV
4G4Pbig4KoqM56ZlcBi9pU4Zwa/IguCQUmUJMYq5C11Nzy9EAT/LHqXHz0nO0shQ8pRSRTk7aR5W
FwlR1Z6SApbDB56Dh+Bzc5ZAMghcLZ+PBQttIy8wgn1xkfhZMG7NDgjUIsvhfClgxrYwyH5fhB5O
p2PjDKwwQRbsId2DNuoiXQwpei9Ukwf9pfOwzeJFApA2+nJSZvIC+YFag9X1llecLehS8YcDl2Ii
spuTRDnu+by798v1Pfc4jdhoHVb/IYotxcix8vAmxnyDq0gjs5P/TXjFeC3gEQCmUh6ewEdeaIiU
YnO55Jms8iB7SHwzfQavUOAYMCm2tYCKoPMi48DuUklMvVs8Fx1jTogn5+DLtXcE605tXu9V2Ii3
wlJGRrxDNuzQ1VuhQE1fnAAt7uUhmyGWezKLCoW+gutVkVCUYxATYu4Y3UuYAVwujB+Y+hItQeLH
aj7BQCT8rMltPHDiuUqrSS5Fpx5mjNIg0QYZSq5ESRh+JgdWYPQqtqz+d6C51mI0MGhR1Ozgq4+f
zKhpWIPb8mZtH6kqEcqAnM+IljYlUlrTo+6WWhNA8tr/irm9iuO9EM/a/c1UvRTFZIx6uMIpGJsW
YkmxpPw3mS0lQtzk9sHnpOBvG4bqFXkg09m3N1dNWjjTnJvsNhsKT5EsFrRpl2vcWJCsM0Tdk2JU
ik7F3tNVe8TMhVzOBI2U/dnxyjcu41l/VxtpoHfFCWYadsB3Nw+YMH3ozQgxxDAHAqFaJ9b+HaLT
/HNxhmt8ABWRNth3appaU101zxhZGcVCeKi8THzlpXxpSzwP8lwCSeWiRL94O+mpVVqq/u/AS1l3
WFfp70iwPCG3Z8uN9dKyJmYDEHyY56E101c9pEhaH3WI+LJCDsKEuj7Cs3a+3HGFZpbfqLn/QIay
NFYmrkzzBSee6ICzB4U7LfJJXqSTpN3AYarh7NLKs5owMnz6Bri43saVf6upGesX6VjrjosvxrtP
Ec3r9NnUekGoHWaFJHB3ayI3LwT8ediYXiKkrRBnQnPtaV8QeInCUYAPy+tHblh4HGO/wB/CGLpP
JcmOjtLdOI2tK86B9SgKYREaDxCNWVQtyfWRwXRGlD0qbhpKgqyeXk6yXJtQaV4igQwt/0U91wdA
OfqJ5invIfbJcJuUGIfkPWhABTnm9hrJ7dZkOCL1KwDE8oeIlJSmgjgJRNHIZOg/EU89L2hEstb4
/c3YeWPleCsUUv5oFhCdc/jFBPPuD0IOe/YJf9nuYNSjiHGzDAizZXyaS4xCac95E17jZqFX729I
oD4/szuRnuEvGO2d/CFkCWlsIcJZDjidgF3IfxXFsYFWx4K71+Yu7dNq1o2q6U3P9k0Qo37IWwb6
+xVVB1OWeS4AZw8Q7Ph3I0Ad6vwF8OIKCF4Fath3AtzNit+PAcOXuB01mrIZQhzinjtMAcDXf4cn
5X68PfgBOGEg5zmDSld/C1F//VO+RxoNPl+0fvFMFxCQ0JoJgTIiDw65lHtOBCCrgQXHGfOsWyiV
bLIzsUhswmA2q55UAHfBrLi5sXSsdkTXPpojeF5XHv8qTZ+MvpAhJSV8Fu62QHQtLHWA7z/NrDxc
XO2AZsgCe65tFbafs5bFJL1yWSHEXr+GSJpblHwVmX4m31aQf2X18TV4nitXwa1zF5p9YBKSzKCs
TyDwpndpX5LC1S05PuMfMT7v0WmaoUC5nJigO9ZMg657Sm679td7r/z8L52s28kTfwvUjlXgjKif
2JITvBjPsxwySGp+YBqkrBaKorsw8kzUio2l0zmmQiLFDRwpPYEFLZVjtHuPYIa5MTAGGCb4tmbQ
q+7a6uRlS5exM/Exsp/+3tf+DCjpF3/bEjC/SVgzroavG/FUnp5KEOSMHLE+hotXn2Cg75ki9KR9
80FZrzAvqNJJlls0b57hzrcYDaUudkvO601QQ2Zz1EXni8EGxj9qiEMl28QuEkCvjwNT6x4FyL8+
JWUn9vChtP5wIzVLct9tDclFDUSBRaSR7CeXOH50bo+FJWJxo0bhG3dBEbZfsEfFfhh7XszdPK9N
yMXFGlDCG9+FbczU5WvI76GmSc5VsDh0wg7x8eqBzVW9mB6vkfXjl5ROI86x3sElJk2D7Bk+xlf7
kJQi+r6LjJhgUHjoFvv8yu8o2VbFWaBzCrLwwOrZrb1q7oUyXOvVHV03916TBqUkpf+AGu5hoOGx
n/VjFK7cVPbb9w0IK5oRiBQJKkuO1LTfXD4gnPUwiZqzM1S7kkJ+vEcxR4GLHr0oyj4i6YZQ7Pf2
lccIFNb2LeU+1Z9g6AchXTquXQf99M1poWwb/HrOrdgWcS7wEbfelm08xA0RfNghZXSrMCvOoVC9
wL1EV13ItU6Li1CvAULNK4VRHFFTV/nuNtDwA/q0Gk76HFCG8BUYzj8wYDIm0FfebgLUQ5AhBdpO
DR0nsqpZiVJVY/4K7P/UTEljuyR4M0EL2CQ49AhAHjkECwS6NxAcLnKMk+wNTQCdN1daPrLe/6AL
fGQ7GCdkFikDlkTbqDpTskyfanKaGZhwe6lyV+dXO2IvnAGYvdxK92Gs/oKko/Qrpj1AaBF/8y+x
pr0BVkvFrNl98eL4lUGsHV867j6pBoic88R/OAHWkmivl91FOEavfs7uyl9s8rMTX1uywRI5dwn0
SKclMOJPh7i5mtCxN3LHVwKEUWB6o0S+3x78HODzTjB6u+je8WhoXPkKhJBrise8aUt+EwbM7sN8
UZQFZRLgOwNBS03li1dW/Xf1HYxeqJ4QiH37SJY8bpRdJ7xYYigEJn1gK+i+PUvpUcMFejAM3+td
l6p1ESY4NqKKtZ3jk4jVyuQUEZEuPDPV4/ZruI0aXNpYAICLGypQdCCSDrmDtWqpeyNICIqDkR/o
bvyD0vujS56V1ESsOMo1Sbcvit5T5Tes+gyP9po2lhT/mZMhjyQu38ylup9544z2jQDhRr9LW//G
fqI42TEBTdMF65+FtPJ3EW0KuxOl2mElTQ7OJZdO60pCstxnCm33LWP7H4Ri8Euk7R38XueC3Siu
VMm9N68kbFyawXmD9H+Pey6Qhu6Ez0NlRIRdKnXaX0ucXZeMWVTeCR3vnezFkWAvO+/+xTjZYIHK
zg38RW5W4vWwpTNLglrgF64yW/2S4MbDQBpGuuP0PFH5NgcVT5NlwvEktKeZqg9cUI3YveIm+Lee
rrMeSGT41kqNgwKwaYiChzuKeByduep8wU542yGMDscyAIY7HJf69Teq6qpvA3TFd1JMVvEtkIkk
UIeznJgG6vWFAb2hwDjPoAZ3e+wV4cvvk33dGxDIeNr1l1ckZdsWyAFEuwnNoZ3/+M9zJFZ7jb3C
y0UX9TwVZuYGRlsIewHv1DlElUjK3MS45WKGZzl31kwEMqSyNcP8doKOXp3DOt0fs8Xz/DpgiUFL
U+dvxxhsarbYVJD4YvYBFsWsTw+7/VDdOAGa9PEzZ+PRuibp6rsV4aBV1trAC4XOR+MjShcYiCm5
uhCv0N1ExSjP9wDzz0ILyR5q15NVdZMO6F0kZ1tEAAzPyodQlCdnH4geI88zHIUgsh3fTu7RvLaD
fes595mJQ/HehVZFVk32WGurZYRo6w+f6hYj4fxQbHQVf2qsVtD5Nc+jSAlC5BRYJT/OSel7lU5W
IyTXA6jZN8OYhXkc1ES68d6fGO5+bm/iLQhENAVvS+YKofYeo4TSrxZB97c6lZl642+BW6QGN8Iv
XMdXHMYTmxUeaYBV8ZM3ndeWon5+hqGgHe7jRYt432C6p775eakV92MQPs3pw/8iraHPsOFtUV5O
NWYTXWjNnykxW6F7jtoNvg/fh+8L60f9nMeUUnBW8Yrr6sciSwHc6VOx/E1JBbLB32XQhXMYVOp3
6+Oztl9m+ZCZ8JeBAvkvc9drpcjsxicB8UpP8O3CWWBZLiax5LAr7ZSFlC8ucDLmEY/+t71y9gkR
GwkerwGv8Qel+9gFm8CPZphgtBw+jko4y8lf4Gd4GiY/VZRx9DDCwsKHIjoqeZquCdcEscfXvSQ7
HM8AIgtODbSp1uv/MeDOnxdfTtg80rtWSNVPn/NHdUIrali6JgfYZ39QDB4cxmCw3FF/t5tgnScw
zcb9VFEaefCs7L8gTLOjrA5MsZhW3JL4musf4VW/ZThxCI/n8tFgZZpDPNmNR62Nhkk6c/YustLD
VG0yT3sDJ6sfJisFRYBxyhuBJSCaN+xc9eAmhceXrsSdbwDN0xsfuOWLq89O5rX8hBQ5sJk3VQ9J
Coy+rgSvPNwmn3+YdSXtGaY3J7fS3FzTiGfZcxWhUOaf7pwQ22seqSe9RzmZMYnGYhd4g+zlJm9Y
Oa+2+eSpn0SxgyH/kHHLnEXwZjvmTfY2hzaUJZcNB5Bwvaqs57ktM7E+y2oETLHq33CYeFoIpvv2
Vf8WOBKXG0oDopV7dWYwGmvSTyOZDI02uLnDyc1Hd8tQJEBpLZdTMtJbvYa9vkuWIKpzazKWRFG8
pQAaQmcgKzWRbBUa3SDEg0hiZJy2uoNbil647N3BP4eWcIU2O+iJYo4E5h2vnkFGbpQxAfo6kMAS
hDOTpkSWvl/qMxw1dk0e1QjsQtehj4jS7ttEyZ5sYtTPa8Ta3tBz+wKc70zf8ZJr6uVYpastU/D4
tEMPslh7yM+qOWIstHfWQDRC3Nhgp7i9x/rJk9qUKdds246tWsqAhLfSccOl6PtdI0M0xMo+NGtP
5XKWd2hGq0EPruUUgPhCqAD2e9WFOLhh3/SEa0QUwP+5xrs8qpopJcq5t0wG2x1brqwtwxjKpNW4
wP9d6x5ADcBN3/Y8ADAzwTRn1bdrHI7pU2/CT6II8irQ8t9HTnduHc3z2ChbPHp6PftiSqNHviNJ
+fITSjd18xSfnt7dno9SdshDvLeVDgkUAIgzbsMi4jeEYSy4NcKdHgdhuWWqPLYAEwf16VLCT/G5
0PLg/atR/8IHPQY4JJ1iwd9JDDxKIqQhfdFoh4FuC4HCCoUznQXQAof1/TH0vyTGeoZLLDBcRqTQ
4QqQ6VtoKWHuagQ6rckSHlczegLEt1P7l0ug3C8jUVKbULTtxFvWcBVI5FKrdBX4QYyeRMmgZk+h
+ghVPvDFvbnKnj38Hh7rngoE/TqkGnN77zfm6ADh1/dM5J4uOCJnNqwFf/18NZ/eeay8hNYSjwXy
afCF/OJKuQg7LbuPz35QD+kqCFG1BxuhiUVwwFqcZ9iP/sN74QOmFdSZqeIUpebFTRudCwhvV8br
yWMmWEi1bq/Twb9jUGpoLbI+wmrl7hoXKR7kvtBpyRczCHr26DQgqoMxR8ZtUPxkQ1ArRYIMHop4
HoCSiVmGpnzI3RTFSKE/N/c831KAqvVO/7Ar2hiTQUZFbZlkkSq6JBqPIuGZefNL47KYp0MCaK0n
IOJwqzKL0hN3O18xYCUG5CElfe2Ag/zAoB901uCEqkra/TmYJ3P5rItS2z9hicEXYo6Xq0cOuX8L
JJS34/G1WTcuQSRNU2083U7lLxn8BT7P+w+uiMRcZlXXntUSpnmdMSHN84gstKsUvV/RurSFVtWR
7o+B/PtD9CK8aw3aP0GnppBhubHXDkzBLU89EVU4P+ZuxG7Hqb+C4k+DtpR3SdcUMAI8j00U85Cb
9bhBNqxcFeLys8za/hX+ZKXtQkWmOQC5gRbU9j+8FNDgtA5/MpQU7YI+lebTfJws60raTAksI75R
rVvkU5jwZYbzjMP1WQhhzjBf9wETaBQhHX3ca4TQBm6AVN1g6k+mJzcgtoxGU+5oYomkHdfUWZpx
NUbwwdzVYyy4PcITOnFPoFLihNYqn0CEvIE519e9EdqeoFe9UAa0kJWh75FsQWh1B62YBQwfUT1z
b003u4Qtge8fXZGR6MjZxmsS/w4GXgG9AGPztdimf38P946flMyU51nLiIR49h3VfXmPVFi7kJ0P
O5SQFW5StvqoL9ICSzkbyLEkeWJ2h48ws3KJOHEq4M+JpVr515TfNRQd/PFDUi+Xgs3eRRrezLyW
Qlj5PHWGqBQ+NXdUYESSjUU2KeKIVNH2tNmVddUxnU+zF2J8wdhdwLHWeTIDgg2Es644GMwq79vP
W48hlyuQqw2tS8inEMqPYqEvr1OKWIxHy9fD9ytUHnuxxebcKW5H6xmMzL13Zdxam8182B7lgDcT
OvtAvUDPhyBksnpffKhl2N0UxIdYr6DPs6pZzQWXh0EhxR0QDc+aoURbB+kqn6HVDrj/tZ4mKsz1
qJ+0U6QT4CuO3/wtEpT6CIGaIGH0maQ8Pz0EPjO3Ux1RV1mFFRHNvD/lGxEQiOZhcCfrNtmdcYDW
pMy+QWVBLQ/l9hdR8Zmr5l/P9kyBcXVBV6FqmkfGi1yO14Oa+Rao5WeMH+HUNkSd5+fqDe/IhAnr
bqsosRn0j8LottPOnMGeKRAUDa8/SIDNdB1Nnp/AOMMORZ6WBPexdpVa5JJ+gZ88jirQkNaS+jn+
wq1BDJERWf12ISBwOOS56t6jT+wQhHkibTTGOs0W+U+fqb/owzJJlN8pWlQkzXId3bHce6ISTxX9
tT8VCkWQADPy8cKS8i+Andy7QolnmLUBOnr8HKZZLCVTy3QtLzIvsFS0tSp/xWzUHHPboGS+BS5M
qeZzVhDwTLX/iCW9LlloK0mNk1/mOnDEWEI5RNlRN2kHJclsuX293rQ2506sjnkZEAl5YoXs1Yfp
Lwi2DwdaaSIGROwHQU7WvQEBSaVGheHpK9unbG+r0aVvs2LVV48JsAs87V7RGFDx3ki6YFaeKHa5
UsYV4rmratlS4P7M+AxDTMLlhKjuqESEX3HqJi84scWkvsTJxD5cblgO3mgMcxVf6RF05QK2z9l8
f7SVnrUYoOpyP1/B3hVBiRg27rAA+91O83MbxhYEF8TUNHlF6R6HRED/p8L6gPYmHvVEAWY9u7az
evrVtpzvyo7o/lmbQqrEmqBONy37zBWsm6ZNlH8ZcTSE4Mp245kPnevzub71XbWit5y3i/EQDmR7
HHh0RUpOCcEaBPTLMZQJswCpkhz6p2b6+8OwzLRFQklYulm7Gs5gSKsrAlJuT0iysDtlLQAcsSvZ
eOkTV08SyuA3yGra/6cWHxYtVTbyGzXkbMwOQecpnrD750ebap6lbO6P3KHGuWZIjvtJKYZuNSNX
00jGKjIEFwg+9HI4gK+C9RB0Xm9Byx/Ncdxdd1UPlcTcd6EyrEkJozoW0/R/PbCvlxcbWiAqQ8/9
c/7dg0JzrQqTcGSwYvARxqoznCJhmHg6mDutQDzPWjNiiEL7IdK+GEsWFgBv/CdfmYtR5JlFDQeF
q9h0CHBIszwS+j8Olz6BN5rOHxG6x8cuQwCN6t4BB1alsUsA7Oz3M/msg6L9yhNVHbHryBs6DANV
BOjjtZXmKU3sSccyri6Kvs6GMT65LLr3oC1tWxijfwcOhVblGV8ExiLrvyGZA2PF7f+33SXCR3q6
Fmd7rScOlJiCr1cEETGbVL3oSSKeu1Od8qaVl92K+TAtbaAwtwO+NXzqTnbLvcMjSWcweheindb6
rbJ5gi7SCVkgXRJYlyhGQ/4WeLOI1uR/VCoEmQ2P/4srwG+Wm2FXJsF2TKlu33TtRLY/Z0LxrkYC
Vnv7ILvoPcavpo7DJTQADuoDqecAfwzGY0FV6pvsU88L+xwa4Ew6v5hLTywJmBeYmPrmqigro467
FSP7FfYF0aF/Yl9GsvFJrcp78/uG/ZSqqWAKqQBvUNDjCKe+fjXWkhy8ID3XYe2sliA/HYSlHcib
m4ayZk2Qkc0vU9Of1d3Bam7t+X2P5w1o/oV9iVxtwW8xO5wVdUFR1pLm804TNvoowN13v6IDh0K7
Ya3FuLrMYITFko4saj2V16YSBlinEkuSbqLCR170kEWJs//UiLoB9CoUffqllqwmnUbdz+5tRBkx
0imK9eirx0RhwfdF2jhMsnzuRJuwOSFAhOIv1giFoQU5EwzGffEJA1qjaDDHkgvaX0v5h50XVBOn
VGI4L5OdVR245VlnMxNdFmC65e4fFAFKSmTN646Ls3J4uehlY+UXuoYx/tuJtg55thNFZJ3yo83t
PPjJFPe2pgSRi+AOYahyExjHMeNjI1+DE3JnK11SKiKzCvDyrIFTCPJNZohqZJ7yoWzofVRNwxZx
zmN3BDV2pyueoCYY4YX/EkEBPEoM/4P8MCFNSb3iDFaHMnVT+UN/V7w9dzW+C+MWfhg2LSwE8NO0
/wr/q6jtBwAjzu9eE1Z5owpnYp3E3LEHwUQpyByWZk4+FA/lDqBjp4Gc/CeIWJ1qna+16fku0hsv
PnO6iUfoGIEKwCYqFcLlOyHLaTxAfoLl16Ss1dY/QXRMoPJZIQGxUtb9V1buuz24Qlxa4UvDpwBu
ujXdcq3k3b54vSiaIgGUmTDZ5nmTR5NaOkVa3h+RZ/NVxgX1raLEkF6AywxcynXj1iLCB/n3Z8XB
zf4T0KtrA4IS3dLm1qt8o+c1TGLjC/EMBiVT5lfml4+BHt9BMl/TVXvd15dWeeBw1ZBqJj/DerhJ
QS6vvs4Rwrz34eWTmMjKcw2tHwrPFSI+d4keJn6KcYHji+7e/i6W+OvxOSEWlf3ZZCX7BiNCNger
nhBvoAcNQ+RC+w2cw5PQ2DGD58iGGPdejmj713Y8EPSZbyHbMboMuSlBjFzXr1lvSyZ9JVJ8BKQ9
SNAM5HYLkuqztakPVPMzsKCLVp6YP9+23akkMfBiPNGIt8qK7sslj7YhqOplN5tMJE7EXW/J4Zzt
fRDbkt9ijXrjM77G0T4K+smkvsDf1SRvfxU7Lh3zkz1BhAb7R13McxkJdpzPaWgUZppjNzOykVrl
87XhnOg2SJqJHou1ndvwGpl6FuHTNnEUs3yQCzJxzZks1sdqLDNPkrAXYkyQJ/C2mqxfbknY9YV8
UPab83BqUaAZSDLtNrKgW6yM97/TQWqrEFXvN+EwEIO5ADi8xxxYLBz4/w4rpgDt/Ad2Uhkk5Osu
k5Vr/Yqh9OLeAWk3IGvLhsuG1OLxlcXY/8hU/LQW9gxuT6u03V8xefD6HQD0B8b+J7efsjROlCkJ
VV0xa37m4XXgh4Qm+8qEsOyJAi9mctDZpFCVn2qLvhjOnwGATdHJkJzCealhTnvV+YnO5kbsyJNS
3o82mRMx4vHDu/AXq8+0oHCHlNDyd3T9AU062WVmI1f8TKDNbns1TtY5T7mNJ9Qhf1YHdQ/4DMDK
drok0ueYgqhVfuW9WTrWtjCs/dH8drt2BW9JvbYMNnLxJiYTJecTcYvKktADFKO1CEWFAB/j5psG
XFIlen3AFHfNSyWhPl5KtvtzPWaT5orFJICvz6h8KqzWPnn51ZbB5671yjm6aRefHTztR+tQais/
3WTPL2dQykleZ5JGQZTiz7DHlZvjWu178q78vejF++4z7MJ637ToADxPyLFzSk9AYp7UNowRT6Q7
BrtzdLqx6XDlTRT4Z5Gf1zy8oTpK+095/f0qNPwCb9XzoW2/oaa1HCXMlF7nmiQjJqYwYsrxV6eP
OwryztWz6ac4NZ08XpsPJ9TpTmJ5L0sqGn50sDKKg3yDKERMqKICBD/F4tZcjYHKr3dth1txSKf2
k7vGrzAePSqNI2QIzhACQEmN9WrxgMMO97dCOAN/koCkO950gRtNZVJSktCiweWcIp3hLdp3H9J1
FSgLCTWJlC1WZvIZC9E1vds7BfABrMyvkbMROHigW7vu3bNVx5IB4d1FnZ3UvwV+r97p0Gdg7ecD
LtBnw9361s8c5vi7UHe+xcsjgN0JS5m6pKYnq4KejF+y03z28xW5rG3TdNiopAqgtVWFkZWcQeRs
wIlTek7NBvq4PzdN5r7/Q2NZFYr9N3vlPKG2oWZs/ErKkeVOrpGyt386hx8NRA/A4oJ14C6dfUxD
xMua5SxViXEHEnbtBZNpprBopl6XNLYL1gcpJAZ/GR19XibNzpToYjeeBZJ3CzsS60LiCagiQu4L
ptgq3m3XoecDuMOkr4srFzCT2l2lx1whbSXBwbdiVgrY6I6LSbBUqilyQgvkRX/c5tE+DurwUvuU
j3AzgYQ6sVpeTcYg9bPMb/LD2AtHToHzDTIzgga/pnVfX5/ZNKQsYagyqQ0p2ikQFxmMxycoyoTG
QnGR3JkSDQea/UAloAKBehFYFauL/33T3HRvwyQ8m4TavrSR/Bh7c0wZzPDQlV9FaymuuqhQoP4G
59xABMDjn5mbnT2sn/5c6Dv0UHy72LBaE39QlKtEvvDbq9Y0fg1L2OnmEBiDjtR7eDLJkL0ck2sX
C5YeQtA0A4Xttc0oNNf+jYukrVZRn3rxsyxvXAS+AhXwYMSZw7D83z0PZPeSBFTW8AwLshZflZtM
fnvvoHTmw5WLdgD4E1oIIWSN4mm1CSqO8Ted9TB3rqaEPzopCK6Gt5xZmP2LKnlHbNXBOxtOC5U7
Pym4J2oDypL53jlSWf0fPYwMM7D37Rg/NcM+b7D+EHPlQqMasyFdlmER0T4SNynb4lojPHWIJZ13
miV/1io4d6GYWMlLk79LB8YYFgnGQR2h1J41N5DiKT08jTq+1NH8Qy6udViHUXJr4eBfvNWF9rAo
NsfnGZs1xLjy78WXVJVmK8lGZLyiKE8ncXzvjD2CENhim3DU29LmGMQD1U+B/dSLk4HVQgGKd3tH
mapOg9ACAnQWsAqQSAclqweU+zpl1Jk5+BYHAKNTPTE8UNwRNS59DQI+wHE7OGQ5W7mFRgNJcArF
T/6kxd51c0oloVE8ii0pIwnRa+ETclV6xypKRGW/qWkaj6bGCeP6GHS5RfEiV9ZNau3Yq8p91o6k
UIAnXm0VaY5PGhRQurGwcKBDBsjWSGbZEKqpyYvP1x2XIOOUE6bTAQ798V93y8IQwfxvQ4B33bHP
RvLNK/uC9eWy5DDpplZ2FcOuyUEsuA29FbjrIgVssdxv4SY+ksmJP6Kbb1WBrA+K+5YyaFrwtQqx
NyNlcfelnvnyzWiaBQWyNXdo+WeLP7kaDQ7tTqyF2DDuje7uBWvQVPbwYFv91yh/FHZgWCUBPDGP
haWVhCujzztemu8gUIR9b27o1Q7+HswN8EepvWu/zPEUEALQ8SJgierbd462lYY/cIC31idP+cgt
ngkJQnvk/ks49VZhBo1TWx6ePjX+vd4M3dwM7Qka3a5ZjYJX6wgr95LswTQSsZtoZpPFIRhFloSr
ciV4ff3txwec3rPm8W2V4+t0weI4aAG+NvMmCfYpJtbh2HggYNwNOzTQtN1iRXgzPAe/a4VlJ9Ce
qbBbfHdnT8RISxknbOJ5DSZcVEXfX8/QeoLkLn1RYLYJKjCgeeSCw5VXcErv0YDwKJPgAjXbFj3C
+9GGu38pITjm+c7Jl0ir9h/I/9y8ZFdssD8UYxAoi3KbHuqt4t+bLPzyPG6BgJS6cp5h1Y78G0gO
7+PjPp1kUnCrwAWNjp1mQ7WB/0VIHjruD23Ajpdt+q5dtVE4Rl69KuL0FEsZ+usCYLnCrpvuSVoI
GSu1QnnQnsrCeN/14QdQJAgH3xGIO/zvmJkpmgVA5hDYGIZ3+cQBPwDpsndFHKLhoU4fsDYMIH1l
Igpyz/d9A8f/CSm2iHlSboBscYrZbA6eCqS+zRsmsSTmIfV1NbKMPHT2NMe8/Lf0T0WLle4qAsLq
EBKCPRA9AKnPJrcQF/ui0RHQ8XmsXpJ08QB/oab2I5knHce0bLjEu9vEqYusucgj7viqzat784g0
VFpIS0sJtZe3Yqs0I5x0gDI+wb+qIRhm8K1DXFFym9vjiJxMfisGBKdAxkg6q1lwo1I0ymEiSLKc
tKj0n8ouxp0UnJ7hu8XEE0GDlXOCJoDMNCPyh2FQQ6IU56+/3I0lq15kXd4FTWucVlThCZa1Bukr
FNn0yJtr/Vk9RjYjObLZSernv2jOyfiTOr0NU8u+rOcIQhzjnyPpFHGTscfE/CJSL4CT8KDlFidt
48hRtI+zH3FYX3mJQsdpmXqtz1sRDcKvZaFoDkd3NpwXSiYM4btL+PrleDZ+MkDzNYfIQJnGNqX2
z6f+NcT4Fax0Ft8nQL8rnpROuVGK0RZVqLZ15Mk1PNR4pYQUDSSTxDtsVgL1P8e03++30PGEzb16
hU6KAx7abiXZtibAFfydVQX/IrBiayl4yi2LOs8fp7goOkeauw70z1yCs43TVql3wIWLmLahlA9V
iUwtBf7E3HvB16QtqpD9GskctOhr77UGjwH+1bSfJ4Z08jurxLUU88ZBFdzk9j306oS7si66bTwo
qjJBpWoOIhhN6qPSdKZOJBHa+LKbvkFRm1XzzK+I/NfMlKTfR0yHXz54aoAmlfANiFTSMjDPSx1c
I2NE42PpVwHt++0JqWNT/HFBKu2tDubl4xu+XgMXsqfDf7JtmRZXYYiE9Z5M7b1uHl9ipInFFh7F
lk7kWjiQxN54fc/RT8Z/HJe7fIaoMBgjzFWnQ4NDFgc6QUQ3QXn11ZlGO3NchfxOWmE6nx6M9XP6
f637Hu18/JOKdnhFDFNh33iL/3k4vIIAWSZFoY8ZtB47chnioCgYAMOeXMHPxHQGNMNQZts/FFl0
ab9hGIN4N3iHjUfZFZ9ZlCTKl5BCoQRK5P4ObUGM1tEn0Ams9Ki0nsyl85SX2OIBqHfOWHTiZ3Tg
zc56GyVYtc0wxrZAI2lcz9Pew3v7cy5xjML6OpzXyrjrx5XFPGxNaOH6TRUXNmHJn1wMsldgSTQS
Ha+XY6WnvIRso78PVtomZUsePBYGXbqqfX4xvgZrhKouXtxGOunzBU3U4FPzx0sZeuQWMtQPrHQR
IWNevBwH0+FjlmysBWpMbKsxzflS9TGQn5O4dPr8Furz9TNrbaTBpLfMYmjGd1kvoKFYijtbWfFX
dRQUxxbOLFXrkfgpqqj+DT/RnPqOs0vwoWolZUAJhYFgel8Hq91d8lxG89GYpFgA2BSWABECUxBc
p/LYroLSytFVlhzIr2+u9dtJQv0nqG41S+nl4PHMExWH4999YTsMADIiwXCB9NbnnV7VL4xCRuYq
lF4uvC+CEYkWs7NHj6L6DIYsb63tweawse3DK6ZmlEJNQ4BS9aeevY9A7SRW+yHyt4YD0X6PxkyS
fBsFV/Ouh0TQ83lyHiE9S85aX7dtn7nY+pK9deZuPEKVivGV+ZfY0zSfV9V+D0WfA1nK8dx4VXzo
Gmypf01Q6lud1L7tZJAUfrmx8tQ/6lVIQnZZvWTIYwgDgKSVKwklWhR++SZjUH+BugG/U0qpsFg7
aLTOoCIGG5hX1lVFw6ICgiEp+nBmfALMiipy1nqjQbH1booF4JsmMRDq039R42ZsQe0/ToyS8I4c
RTpMz+1lZk8Zbt2j63oEtZiNA7ooRPPKriHXcJvp+KqQReBmbSgYOanCOW+yaUxscyWM43mao+wy
3fboJeLcnsGTZF8EKwSDltglPM0tG0vgoiuQ7HaU0b8BthYTZeibe2j4bsmJwU7PamhJMfs+6MX/
lUNQDdycW8dCyR5S5icPTQzvE1cs6LHT5SFtlSkhTIiF6AKniaFwovb+6D+iwP4MST9I7qfvtnmJ
uMdn5/qwmZHtgZyFcXEyzIhgLzdTLd1gjBIXQT0m8HUSwZQi2Xvk2Ux0K8ugDI4mJwodfOc1ejSW
7XgVEf+aqJlrkn4/FQoqf+U5EgYIVaiNzvau2rwx2VOov4R7c0MbrjlRlEykqlRK0VT8Mm1vAMyK
CqbM6R32uQqBFdr/GVCeHE1GPNhuxtp0IuM9g0EX/XrnaeoUj8A+eiBo7bAwJ7EOvnSg1fkABheY
cS05Z2YgVyhqdqPtU3OW69Ld+Ww0V8x7yiLMDKYyjVisxDngeAvlYJaQxgOOVdvdBubWLulrbWHk
8Y+FM2/4PshOWtb62FV7B3f8WWaIGRV2c27BADthlcOeEP65nYlhK290DPKinw9e5h+eqZOoIhag
P2a1C025XTZa6JOanulzdiqQM3CZpr9ASBa16oqsON+7Y8hEADP04dfkUbzrL6SkHU5ZkYeKbggW
jd5hdSEWydOsgAw0rJMQp1eriOy+RmH4nvVoGQZBvWE/pS6kz7QUp8zAh3Bp1rrtkXDMAN0jdm1z
z2DvsF7nSjWzQsUttScWAwtKXTaR3pDt6Iu9ExOB7DCoS1p1GEoUM7YnYbSWDZYRCqi05cdU1xV0
cxc6jlcW50GAmSET5RW5qnoBiO8EPs0Tz4Dv1mBHnGvQWyMTswo6PIMC53mwX8A9Mhwzlvg+C04F
eUkIvxkN4Mx/ei6KemNWz5fu2IlMGpmKJlGF4n0yDp8aAEkcHOaJ6VFYwZnSftJUFh/16RNBSYSI
woVpboDB//4JZ+plEkJg/4XeDT5OZaaPHf2tbyTfI6AhJEZihlVxfqKwnn0rTTUYE/dHTm49uDjT
9V7w9VA2Sz+208yHA82cxn1YxKJbGjDKp0qXgsgeTFbTI5JrjwOyEuYEBZ+UaJSMPo8hEtgUmehE
0WeZYHNcEeJleNhVnJEQ5zXy6P0rJOiv0ehnY0Ex9v+X+C67+v57ZqVNmoWoi4R7havQFbrsYT5t
4mogwWyu/F8jrzx8bw+1YU4IbTrAWuyCSludnEuBc32k4/hDgG8MO1oF+CgTnLz/GeQlKMFfSle1
d8b2+1xvb+WKqW/eBWNApVJYNx+1kG6k4dVhFW4X6cxAt1A5l5CDkIzIG0ui+p+5bcVFAqQZnt0g
Vd3/1SL5Wea8KJKVsGpCEpEv/PD43nq0s4BExd+Vh73UcG1FcOX1zpTjg3y+bQCfmwg2RYd1ZvKX
ndGuDJ8avs+fbaFoOn1MoYLksiR5CO619NlHffaNhjVCAA7vVl4A+lDza9+JBDvf2A1UpVpYtoh2
3j1w8uPn2jSAMoSvoE8gRGrQQha1PwTxrZKgZlvlFCkWANs45xwy4LVVgGBrBjQ4tJxUzJVwf2OA
/6BPZg8l3WLL9ZaGwWcv/C0PzhVQAsC9xAzThKJE1cxFlmJADf/TQzUIouUmYW4j/nFkvFyS9IW/
GdBw9idNETVH/u9YT2ZG9lUzoSkXMmCTFKmV/vkLr3M9swuGSuzbGhLlE8LJEHpl6I0zqMzmY79q
EceTm91Oj53mVWPyhEC5n3ZDMesjj5DTh7if58xpn2V6voEK40ligcPUGp1moEIIHC4yArdHkZ2c
e8KHwA0nSJJOOZqMeGkReKcux5ILg6eYsx1nFzuAfj6ar+L94BlBfZIW9bvOzdNMcGJxfU5ryN8Y
a1uEzcT4D9pIuZtikFpnt4ajcVwPxsXejkN36qnZpdhdP5PIJXDWSCMMD0jbEN7tUlZ+JIcJzFTz
jE28WYcekDNLmBRTz91xKvHCHBUUTuDElJ64vEw/42tK6m4D3FYz8YvJaZ56ui7EjeX55pJ0rruQ
/ERgvbL9scWVQoXTvC2JcjoNw9Tp+tglw5A3FCGyr8CGvGc7rm+GbDJd+5+2Oq8pFH71464E+k5r
MLei51c4XMd6bxl7Hvzrr0NnjupGPXE5Byapx1jD35ICPdrVOgrtSUEISxDebXncVGrBjAZqBd1Q
WUD8WWQCPeFH+ZMIFjYGRZ/D36WZqF/u5muEauXtwWxW1xlRY27sLplisNl054wishQoT/+AomK1
NJDIzo8lTYIFhOQKXUZQdHodFy3b0hNii16P7jjKGA4eWn5VHHHFHBcCZlqNwd65PfvZlVuFGkJs
7Ra3YakMF7tSThN1AxDxbnTVEZZEJxkudVu+vy6qoz6bhc71CD5S8b1JaL3OE5vDvVp7hZpQNnU9
DU6F11LglGRrNORXlo6cGpwaK/jVDQP3NhuXLszhReaPyZn/p0H3quxF7tODow8szqNksvfpac7F
/wLYPJ9RAltvriH7Tfj7VpPmRLXtUJ5bBwRRDaWZnTg6M3rNSVqdUDy+BCw8ULsrmJg2Z7yrCpJT
vISAAjIrb1gEpJBjJvpc+9InFlpWQr+TOz737/msTbi/U4vL35jS7U1jJRqojbpXKZu+YDl25v43
wA0XQqgsbqFT6Wl4RvU+I9K42/WQHNsUlhEqxb1R6RDWiEfifQasYRiSBe+t/Xzru2vhbdd9Xv8O
X2vKWE9Mke75p4c4vcALSzBcJhrrtjGHwdQqHo6Q/dZCm2cWIDpoJ6AnJOAH87Mg+3WQ2P7HWLrf
qk5iOIF9xKONfkpQ+zrJqh9u/VT/RfpEfNnWT5EsCUsIGV5SFIJNKa5hB87JNangE/tQQgmJ5dck
kL5lWpKX4Xy1F5ZsFI7sKDd7BlfwArsj2/M0Y5d2JaCE3llq77H59Jkocc27eY9yF/ojxx7vSrQS
Kb7fHbvUP2AKOl5KtyDpsmHwWwsXNw+g5CJ+R7K6W1OQJy4fSBEq5PpJrQSRsWVr/x7X3Rdjmw2+
nOeyCOwrTEG6eWhlNqmMlIcMeX7+pYAvznvZVgPqkzDdxBQd+wZ25a+5USLNEOOa5DTy//gR0Hpw
LNB2T1Dl5s/NBmibm9CF+Yuh5KJulMBw6MF0TorpD9RkIjtkbHLRKbzkOZVE+NV3zNEWsNFbkoob
v3O89VQaM13sM1E1Yh2CKdloDFcdwZvSiimIFAz42D8g9L1dkZP+uNyi3U5VJ7wv8dDKrBG4O7zs
ohTThn4j+9BwYngHrX8GW4znAe6KbXek4ZGsVd2zeRUSlfCbqepMq2DABon2FE0RDLlkU9fH2jjD
Q0uce5I6vCMvpi+/GDL2fHJano2FtkLfxlQqq0il8VoNbp//SriMjWGT0Y6jSK/Fc+MY71pMSQ8T
BclOjmCVlv+xw38XtErZ/sXBW8AAJ9e22S37hpAkeuu1aMQCqo6JcfOlV2dxytxL/kxnlEdaUSXC
PRIyxe7xnLiHtVeecy5hqte7IHatphBELMTM5xrxQzom/MA48aF4lA8KcgbSHmrO6j/szJcRrcqK
S8XHvR4YkKvMkAyTSOKmg8KzNi7Gg5Yw988auaFLHcbKmwdfFsK29JXafPInjT2yBZDz5mXWwsGQ
Wd3mp9I90mScaHZ+QnCUvQgE6eenjo24rBY2ZpP1DAbJpZZ1XINu3ToxsWgBM413P5ccokgugMPX
VcTWM3BX+lxSfx65C2wwrJ0vzWgvvxUZNgAPIPFcw9A+CbpLa50q16YagbEcceIOCIEPg7qHgxr/
FatnuZFzc5P3v7KFJYk/l62efujpZVVxA8rGFkaHHKMuOkWqohwWUKpwHjQHqBzyT4kdXYWIPRQ7
IqiMx75Pi7Pny21vSBHL7HVt6lN5hHBmqLmUYAdAQGx/+Q/+XNIyGVtRatOR9eynAQVhJHFEhkR9
U8bnWz41PtCJVGOxzZDzza+7Jt7XVJTqwIUYCgkFVlpiH7w6NglTVgB6zI9J+FvrQJ+aCy1Q9CoH
czvJgnbctXKJ3rNmBPcJraFSFXDvc4UIDinuwYDlUDU8H/PRDTJCx5pEKqRutBPehEd5dMWw7ta+
VRTUlt/LjvU4Cl3Or8KwIy6NamUeqi+DyP+pALD5fZXMDn8DnkOO2Mo+Si99WTn83R1ojk+VuLvP
tz/jVzBIMkGxpbnR05F+DF5Zo64HgGJwztaMBu8gLL7gAxZ8EOPU+tkkgsL18ZNFkGmhwDwLh04y
4bXzZd6+tzFXohQjQXocK8Js4yDCS+S4Dm0+HuDd9trdKntSCxFTv/llE4nG6XJFsa4PtQZeu5Ep
lPGa0aDmcvawq5vstb0CwGmjHfJsX8ZzN1clbP4rOFyc+M7W4w+BDS1zYOhHPt8wRQ8PMMpcGqgz
bH4dXbs74wQ32Q5JYQvUAZDAKLWnl2WB1SRBfb50U8LtuIFkIMnY7DSHfzwTrDQQAzlvQAHKDwXv
/0o21Xo2MERLHT5nuXHGBi64ymDEf3LGfzBU+WN0Jjx6YoqIWu2KniERGvZtaW86PqwbFktaMxVO
F2WPcHOcZZSXJQ04weJc19z9DYDOu6l4QlzX9d/uXkJkfP8vKip7j1ePzlmSm+UWxM1r1zCI0Y5E
5jhhf8SJPlhP4j6SF9gmB9TPdEI398BCU3Qs4qpgCcCxwwLTgYbpr9cOQW0ewB2JelS90PiJR5go
CyMMA5MwoSGWgqoQObyhkH3+raRMW72nOj06IlRjjdGe9ap5PubxgCrPgJidzq8QGWJTo7eAToEw
vqeAFkDJ3sALIO9/Hs4CES1Vm6h8pTqI8aPftFmiJPHlahnG9qryyc+k1HyzOhwgyz4XusCq6iJy
1uTmt4pMt4GARKa3mzDP+j9icEq9+DhPTKOKQVmiC0eVcVpPoi1LSkjJXlB5nmReHsbX39p80S9v
SgAu1t7NWPrp06hpF2Ftb3n+t2olw14jAWGIPq0P7ok1gpv0E8Xcr8O2LDA7RAlwivSHG7fRWu3A
q7TWY6k9g1nGf+NVLAOPXLsZZLoJ8Loybkak5SKltO7xQlwZhZas5gie5H4LGiRCa/ruwRaElCUD
YI/6BUA/RjDWUccK6EMe2m/eTzgp49sIhqQC7Kcaod1vaIiFwrZ48rxzfJ8zDwR1Yy40zxUqm+/2
mHPMD1pw88FB76ojaqOU9Zxk4GI/H1OxmKZUDd6+SF1t27M5emqcwpWeyYwkGs54QWyjFmej0BfT
nDlh+z4QQDRL5c7jS6ns2EHaoFZjhVRpnbdawptb270/eUKZGb+fXD0lQe0elGS0rVOSYnDS8VkI
92OCm19HPcnNkK4GDVA71yZOrW/TNBLjLkpO0DZuChJy6GT8+310JtHLGALQ1LunKaEhvF1jfqO9
5hIwKzDEHjbICXjJNtQuML1LrBb4xZI7gDVeBue8AMX7IySw/2L3ZfVSV0slJA30TGTJMVgBfrCT
KMgzzs3ubeEXN+QhWxgXvi8D+qTDWwyNY3/PriX4EHsg5QqxYUs6GjUZie2dCKDDC3qi7gqwc9BI
MGvLSMlXfkOrEnRRYXE1zIs8ujFwhddxDNNV+co105iL0cuKi7Ul/7gX9jcf0Jr5/gnWlM5eY+Xv
yzQA9rpniI5KkcT2pD6fUO+GirdeFkuasQDqlDafXKsysVuxVfu10qs8NvhSHwTLs1JERt9OE4y2
K3/rdPyFy4ytdwMVk85zU9uNem17ldACOvro9g1wrYEoKH1wHmvH8vs/axwdkvqTj+VOMzzct4xf
fRjd6YFy8BKF14CLFbV3Qd6gjhQQCwRkXF+tvTV3QOg0hyliB3WkLedJodQMYyNPqL9I1hgWIaMk
ZCKYfvl7XuWO1FqQplVSPcpYuj3cCDINj2IrZCe0GvxTNBTiW9A9rdRY7UUFWc8OFuiEK7+vptUa
ve8p+SQW5OVBVlevPJ1eLAFh18Ordow8nqQgtmTsi4RQo2BLifAuKgLJ+0moOgave2T8W9Lg1Gy6
nZYSUY+8vmdvAMqXG9bY+eZkZRbSBKfFQLRq2gIbrGWYpcBJCMkukw4j/ikflMD85RHQngElcDvf
opRvkXCb9jmn6eZVm7p8vWtzdy4DQ052KHuL+QmwzTrOdn2xkgooaHO8AVQ3duvv7CIrN3tr6LP+
25RxMdIbZtmQoPKjJ26E7LFZWKRsSqT72m6H+6Bdh+ZFDpd8A1dOQTudUeMQRb3FIqBnH1o457wS
/TvdP5peBRQI6JfFmCagauSnUqMAQVgplbvkKSH9w0HTrxZxRDJQnVZXLvC4Nb0pg0f98nGxtMbZ
gh2+N3FX5ntAlSerDZQiEOZsinWQ8I4iaHf+65gGislAPOoBGUJL1c6SX/u5PfiAvsxQOX6Xk19/
IkEXDrMSzoXQmzaMABUo1fcxK7nSZYwKLK1rDKOgCRehmhsrBMOIOB0zlmlnsEKYPP/Gtqrv6L7U
lghUVBE3MCx44iNdiSgIPEsDjNufqKAt42HdOdBbcXwq0s4Br8Zqv/tq36jvOF4m8tInW2Tcsx0i
6KJ653IGrsDsJpU7IPOlAQbc748aPJ8KzFGXEBJuHQYlXXuI4UnyYhFVKQVZB596XZ9sYCiHoWzF
vGmrPeeTGa8+nmAtkRM6Za3s+OJCMSSuehhaxWm18fuvAcC28/P7o3C/P/vK3Dj1fEYi4nWEg1OE
BSlPax1QMwMwQY2ZbdU+iCV6AynhwNBGpomy6l6GAkKXg31LpflG6u8nKQcx03lcI2g3PSW0gUAH
w/D5bgEe0wf7mqMGP6VpFD8/fQrYzNo3ni6QSweOARsWfuXzfFA0Zn3QSr8H/PDeYizo3tHZGs5V
sZsMI3ML6iDW8mSMOrEpofVsb+sbkWUCcrZEH3Bi/jjJc1I37cTvZNy+ozX+NUeVgJu2nPBXswqd
cl4yiYB91rBrqknyAM6gg7ECnmDHa48df7N4y2bM8ycxZDIImFxwFmm1k40yjWAGb3l9dNVu9G0l
URd4XzkHPIAQZCWOdEHL+TTZ5uKWp7BM60m7XgepxiUUvV8Vqu7VXVONOPCMqo3/zzFNZNxYXdPK
pZZomc/wKiYuHl37M5tLsjGFnFvBoFz+kB/0nNozi+BmOmZP5uuU/B7JRpbwcZzwQaPyjeJhOscF
dfwRSlUR1qB6GswqvaJjlVcciRTQKdXWGHeirP9S6OTOI4TySdNCrpUOUwHtL93G6eHj7RqYqCgE
/xqU77/G/fLk5u20CRdwRuFm6vOhn69gUaSG/AmUBxLWl+bBBPtrH3tUrILHfIJmzEQcphh5HhX1
8Bic4gKlyZW95V6ksTKsmrY/isYvOafxg7qe5jjKDdnVGlUlg9qsl9gfjuYHwtPOCBQaDFRCvYGs
TEfPm7PS/LrSpHgDxRYsHivdWUNSyE3ecywLA8SiHnICw51dsSPHWnkLtpY9INMTVsbzvEXj4BCf
15Hc6JNyXfbzptI0YpbfSMmsFMWhsNx7A1Les2DWB/yaBwRb9EtrioUr1h75vKdNCvLVL4+vOOzV
1PYkCWi/4fIfdhtoNbiSPQsGZ2UKeZklHxBQ4MgbQaCdcAx/uD7Zv6guzm5P8F9d7fDVHrvvq0ho
X/SIThTfBWGOe0115ClOA/gUFba3/1RtU50aEPV/1Mn5pGb0Hqk8/NQOSCCgzg3o2hIqjPmKmK54
QHvXMBXkFR2UgMOWq675oFumRNWYy6jEvtCXKfN4HDG40hdNxAoOCDi3h8bd1j6G+FT1ue/qbpr0
yLt6SmoQ3eubjH+P21MpcYW3vWZu/RjmrOj9tiiNbpL9fmjZWMsWge42ai7uM4rNDaLE6nyMSmUh
Hh1XnBBh7EpGzS6qmAyPRIZWD48cNrIA4vMknkaBS8jALUybOr7tIl+XaAYMuSTXNQ2v9l0VSiGO
fpTlloTzNiDeBKqisbVAJ0Dxo4vdgg/GHdEf+a9KKsp8Cr61KYSfQKvhUzgXhs5dYuKsGMjrrgT0
cV81OTWyfEwgpVlQZ4PmZHrjJiU/nleHapN/boJjfNpKWYWxMuTQ04/j8CxYgtEHA52XHbCjdys9
QSOc/wpD1UngnFWpxD2Ck29tJbGOlDUVNwim2yXd/v/1NrKpbemMKH5k8BfwMWfQc6KW2sJvwSge
Aw3dDt41b8NjBrJptfjiSEhWlrR9zPP6c6z+ykLjhg85y56y9Loi5CKlddQO+Y523rGhkHVxwvhX
KcYohzazK46LZZtUxO3DwKAzJTL3IECEF6fT+7PIWKp9U5mM5VE3/E2hVxoinKDkbERM+eFkojqp
zaey0GA837imJeyNgSUk8U8jPxgSRzGqyI0H6NKcX2zz0x3NKKPVK1vVqwGJCm2LBXFtGSBnTS9m
Bug0NKB76MHBsjpyFv7o/yoC6/ay6j4POUdB7dPSPmQp7Rn5OT5BgDucRx/SXMFgvoG2TnwImJtb
t/8HRxsLl1P4CIpaJtONJMNsuZNLrn08py1ni3LQ/HpDXMqxZ1lIIb3J+93a5Mfun3/y0nE0dXOR
1ks21mkLHkinjq9eG79CYpAGQsXE4SohQ7yiIhkY9RvikZaT0MsgOAajXAyEVe+JaqHeZlaL56Jb
3EYGhuBtHqzjZNUZt+d9dXmnp/tj+4zFpQf0o4fO3e0QCAReVnj0DYwOFbh/kS3PqnUpyo0HT7WD
zxghnwfbEj3Db2lwVpgUVYO6g7IH4W3U96FCQ5Bu7m9UNy821jwCs64tTyxSXOJimmAl+/+si/A1
jiKYecL3B9MUQpnR7UO3tzAVNnXfqN5i0Bp4vQOGRqc0JudL5DUoFu+IGyujTqClCBMUSKzg/bAH
HEVavXdAylGrq448rA+zlfYENZ1DfRMVwBh1WmgYNjAg7oI7tIkRiXwrmy/pkVoY93K67qrlrxs7
U6b8mrr5t2te5SdA1dV+totIVEijlqPS2iMm5VZobxU1SELUWEkPpNkH9t5RG8WZJYD8qLH0Cq/z
cWZ9hndR/+JLKshv+ILMmk1zc3pZxqOL1XuD0fPg+t8X1zKtOORuD2z+aZktiU3Kfc8JsCudEjfA
L08MgOFUZdxpxICdRh6Ju7WngVHl0huxCbakKLbprx+7ILPHMUlpU85IyTki7ubzPImT+OhGeiEi
O8cb4QvaxhcksjuAzbVZKLYmeg4CpuhhqQ/3j7OQacWiS3Mm9LxMVSQz4M0vsEAhNIVo1CK3eKDJ
rqyn9tA+lTWgBBJdaWBdJXXcsxAkkLpy5wkhnq+GDB1LhsLy6w/vXJQJBWqRv1l95cyYSooj6tEP
eSg6bSuK6hfjQQB8IOucbziIpjqoNXNl/xqu+SKrlSaX9y8NF+eEQ7ckBkx+CN0QpYLJED8lvGt/
BborJokuw9W7uCThZ9kLspjM/rMDkP6tucqUg0wKTE+jyEiWgaoKzSh15O8fMZCrQTsKgRBiFeXj
ZyCRM+Uf96o9Q0lzZmB7WuGON8JkVSCEhHzofDmABwUX9KEIHBePGRYsxuoSo7tZJ8Fo69mz3/nM
8EDZK8Ysb7qoJ4+/VGvaC2mz6Cx1dMbLzWI7eJ8NQ124/+fLO8X0668RoWkeqjJgsaUXF5WTus//
kG/UA90kzpDggZYzaTzgufWCT21CCSUXIAYoNf3tbi+/f4nuKmfqUxvKBlWhs8HZmvU1lSulAo5J
wd9+aAcuB4eaS4hMiVIvk0Ro5ztDMht2/ZdB0hjSKYNmiIrED6aDS1hyNhJ0kyto4CzAMFfxhuDc
QmfDE2+mCmF+JDsQniJSzPLtnKV6ILDsvM0AklAap3+YRP1DkmFj1FbB+7PgF1twJwvKIcrrhdHl
6xJi9DCa5dadmOAF+2LkpR6H89XZEYoKLScbMvbSL2RMrg4O+Dq+0ojq+5VA0XQVgCMUyimbE305
ZfvPSUokHt2lApoFGQQ6LX7M38oUHhBPIZLOe2N8kmjS1XUJ9yTYgs3FJ0ziH0IErEmTWP0XpJ+L
+WerVqAtjHURM1zP3Eg2mfONxipdGR93q9v5yf3oHbXpbQqqK63jmXJr1YaNtgkoPIQ8klyqD+VY
s4WQsVRFojviwVEY9RVZoUajJ0k0Ct+WmluJQQFhLPHzMtuNONRBhbHGmSzTifFiz1mV8kKxJhig
vbg5J621fMrWL8Z7vB/IXxjAccb+gHGd2WDVUB7mKxwVE82513arNNopAhCmkB1Yhioic3GRZQ1Y
FeZH0KlvMh5ERESHe+4tmK/S57urvHO35ghZknqlf2hqRRt6nIS79d4ay93uv8cZESoqSXFD2iOX
IotEvlxsC9PWVVxHo7P34/YA26XFiBvZvGPBvhRWQjcF1Y6aHKAY6W/+yrAFJMd3Tl3WzXQrFWdf
MsJVJszMa2M/OeCoXls4DZJC1RVfN60pBM99xJJoR2D7wN6BNabQmsj/ibxo4aN9RZ7GRxkCa0Ef
l0g+rMbCC13IcPM2me6sX7kNODz1CNSwksq8G6PzSEL9Hao/Wdo0bao901V4ewr+/lQ8Jfj+5Wjs
EP98VeK0smAv8uczNiRpM58Wkp70VMXvVf1LtFqdS2WieFFZnSkyMHcgNbk+y2cSrab8RSs12HG5
OyND0XDZZLyXDRntx/L3k6QAP/VFasG6EOwSN4xwG20ViAJDKER34FRthlhUrw3HxRlfPNuP+vWb
RcZ2MyHjiBkoIT4rjiRBVCOK/fV8FuOPywpuTt/BXNIfRVe4/bWWsGNwFZf24W73w5CYkyvt6v73
cLidnxxyveQs2H/fW8MERTaS9w4IctVOVuv97vbPFAoCY89mDoZJ4/hNsAuVM1OSrHaL7ZGscrz6
M+wg9O2uImXKie4E0p3PQTfCvpPtTH4dI+tYRZNyGrmeoPxsm+czJrpD0zrssr6xG9/+3TFUHkz3
btO8UgAcN55QeUObqDRkhQD00YLlt/MUkF3PA+gOBzPl6yV1GDlxBOZVNrj92oGefaf8GTXFjhEN
NFLMfprN6cmUSdqolQHhbi66XFFNmLhsI9hifwjDBPLjkj41vCbJP7mD2TCMoy0aJmj9bu42IXak
/AT6APJqsS+6MRc5VgUy61Ud5fYjVdej06d4NTjxPH4r9o6c9r746wyapyNPysXA1ButoVImvyEd
R/UGRFTLVVfjBhgwC/jwCmbvmN4ZEESmTBzb2/TzaM6hiuwolM1AfbvuzOHPoA9Ms1PK2cossAZ3
e3AIz3+G7MGnBKI/zz/vVafUbDzBm0bbT11eIrcy1bRDGlkjRwMkzDhmirnCDCSl77E5M6cf1S+R
Kp7LTx321Tw1kJIYG0+4l6QpKsrAIIMiLamZQX9vruiL3V55CTOCqh1DjP6tcpTXuQLIYLNRDlrx
OSORGSmJIzROvEBCPYn01WeOdpgInuRMyBN+lK2yUiw2L+H8Fj12Y7p2v40FAhQtXJUR+W4Mrme6
x+N1+QEmmJiLcWwKXdPlQZ+L4F+udxvqcjb/n/erd8xtQ3NlpAD/wKgC13WlCrfhy5XV9jipD+5d
c0alCV3m+/v+4VtiTy149ibQknB3ijhNjOOI/yA+Hutr05GVn3NvHhT1Ik8IvUnlxiqHPb9rjqqm
hNeVKX/cfphok8QUp3Hmt7Vk/oNybhhc82NXgjAsC50Sd1a1x5PejbnX4P+DRIhDJ8J51NJGVykf
Vxn5D/9IpmO9rfGw4YgTx6bYEpmfTnJn8uwKju8eU5AcDEtgHmtpqFdPQ1a/VIdYP40CxswhuVX4
49b1GnT/vkd6xgwrdn6PUl+VYaRAi56ZdwMKvUO33Rtg8APc4fEL/kkeZSHowck4FqxiwFkROsC8
NclM8buiTU/sN2AO8skoW6B0QYd0kZ34pB40oQZT//cXxCzfcSdxmRHmBAlnn7pGQe5XKUrZyMMh
zYkDmwkA+7aOREE9NN3Dd/NNOCECwnxjjd1M6oHfpgLpInmhDYdtyMd4fkHXZi21ZQkYaehOtfJ4
IOHgU6hV/4Z/l1KPVyWaVULVhjQE7LbbbNxFd5hQieiR/aOq0XGd+4xI7hMnpn4F3zdoQKJiGciw
U428Mzlw91Rs64Udxu65QfbYjJc2utOtWb0vLm0udvQegSc3HD5ayKePXhCvxVrdlGZaS/y0JUrj
RhR2K3s8XaN5DxY/hkCzepjqzvZ30SQeRwqug0sgNu4lJmvHpPaeG+X7wI4oD01zuGGdTyA47TiF
mClZsHcNkwwvGbWK/iMuNRbmfLT+XbAlkFy56L/ZvKpyF0WpsvBJ+wjhoRglUiPd8R7ePdnBg1oe
8ON/ydMvqqh0+WM/XL0KNq8CruvcJCeQALHGe5+5Bpl/2YTpCntVrD2InWQAnCkgYpgkyiGi8udh
0kaKpoBERN3N8Q9t7hEuxFh99rWXXB5ToB6LBgXmW42iT5nIJtHvAuC898P2BHaBFIPrFBawJ8/b
0uttQ7Ng0aKOqMS3s9l5r1abGCyzrJXjEYDXACm7HZZX7SyJXweM418WXmC6WfPkLrEJ+5l67g+h
t0YVwgfrxNjc8x3ufkLqoanXaRaun8SjG6pwkq8vhKpQ7IdLdTvkFZXFDGbR68X0/YheJnWnMd3T
YXleccbCEl8I+7LOAvjtExTPn51T3SM33aBPZQLhZzI84/xaxdi25ZsFXJyMgthRsd6QmqWKsXz+
j+LxaFAz5clPtnwNUY5MgIF/CmoIIpiP7nuKG7lOhaXOn9mLWTwxGwMRoH0KEm7VIAcSF+vsfkdg
A6gYYOSEkwKqd6168tR9XieY1PwA1vATeJyqmW2t6EqxLcT2P1IKKuK2r1IH0U2zgWDkXr/kuKku
XE/gpQDs0oZFqBW4LXJMic9SMLDW00JI7bEN14JJWzUEauGSTkY8/QuGtJFYK65OGQAfy5zeee89
vk84puLU6zIr9V67SZlLAmntj86Bx5aQBC4CTGSZTSley2/2hlQDONr/0raN5/EgA2ckEqLAAjWT
fSTYMc/5tflHZRW6CUvk67fup/Igrti6i17lunTb7VyI6fxGYutDA27yRA71LlE7O86nk6X+UoMo
V1R1mKf5WfIdzP2mpPGSAuEQAfmnxI9sBN+HrnkDA24xCSwk7iwR1LX+3cSOgnO4uFzU5pmFUA8D
Rydz2Eokw9uWP4AgyhnGOpH1OpXCBzBlG0S9GR35cKMvE3wjfcaooX9SZZuyBXiPLB0LH883fPru
Yu5AisRatUCX6mHn95RMu12RpoctRcmMNXMJe5xLZbxNj9CBGubC391gVQP10P+9YA/IdPQPduPl
k7Sqb/Dg75pOi9poJK02Vdrt1Xz2+b7RYkdnTmov54J/7aetjAghr23X4HfLFh8bVNvJUqFd2FXZ
04RvDrcJkhsrMbspGvi3uGgUQSoWF2YjfMtslcgNrx0+crl51Aqo1LLCwQfZ763ROGRr7yUCB0HY
1Vag1J3kPkFpYXIqasT4naaOFHgkctg/RWs10uuC4J/PcQbnpz5qeFlXWJakQqsfn1EqKohrrsZW
wlSmQvUlPfgTcTSvJUiRIIWIpAkvRzBzR98VxfGU0333zDqnHvaiWE5Vqg1fOtFydvYtshebfnip
hnB1kifGIeuC1g7eaVaJAcIGsIHpW+Gq9wG3aE9grjZ0IOLIPBMKkJLDyaTAiH8IDmT8sU4uwtzh
2J2CZTj9caC7I00K7JBWawEbcLUQj3rtR2naDqTltz8pXNQnlCrD+93RJpxT57MY4k6PSAe5i3st
a1ANEFixt/hki24v90QKcipmiADTqael3DL0e6h0BR7i/abvkJYcGfwHJI7i3k9GJyWHXCYoiA/O
vxPpwnlnn9VlhRiDR1Lk0FbDqXl1wSd+4fnywy3+xe+np+zEWIq5nuimoR0O5+QieygUUzJkcGOI
E30Pm6VcyRXbV8UGLd3QhvCjk0aX4cdhhDHRP6PRQqCvIcJFsJ2WNErrv9tS+QP8c2WHnqBirDd4
hOUcs9wgX0AoVt/rhK5ms6It7iFVLKcfknsroLaOZ6u1pDbddi8ZhRPXuk9/h5W95iSef0paWpJq
IMIsCqHq+xwfW/DQEjzEd7PXLY374MAxdAWooeuNOSVARsbNmv/p0oStYaiiivb0uVYBve2NaHxv
jqmOABCzxeQeW27rhBqVMYVxvrhvaCxE8aW5Z6IFGQ9QD+xNPMJnD2YSIXkug5UITC/2R05EcKow
gpqQx0sko+uo7YrNgt9mLQN2qWC5MZDBxCFFhMMODq3H+KpfxbggqfInvnPvq2Yz/5R2kIrFdIeg
rIZTpb1UOoXdhINUjltLA/oVqg0xw90QBLi2C1pYia1rG3teQ1V91S+aSBO7r2BaS/HysBXlvUNI
JObGbEulWn3gd/na+z1wl0TMNemOFfVR8fKaXftG02L02LIlDg3LavDx7ApjzcClueUR4ICzz01b
TLPE8SqztwYWk6rjanemGvhsDsqeoPVf/NMURxNbXQka3qlGQyIvdKTPrzFjimRC/iFmHmePSGr4
aXRQHZvidMVUkQVXiVvnxaOdAbqxH1GUjcxGAryakY/tPhB2DcJU83Ams9IZTeM5eIJCVmT4tpqh
KiUCtX7/f3ui0hN88AUO3WR4ZjvSsmCi6Rz99Amkw3mGHtVuZcuyiCvODRGSKqbN9gLpbVba3kqh
gaCD8+3h+sCaVH/mSpegBBRaAc3wr5pofib5Zo4Ntl3x7N09I641yGliG74nNKDw+4nura8uEBJ2
doXUh2NcMUx9bBeD5QaPTivf5g4XquUeueXz8GAn20fqP75WMupZtmSfHYyuKIjTX9IyZ4H5SA4E
RPVsamjxqLDNRLBpUs/37Jpx6XiffSRpibe+TjlkGnQ43fp+sEF0Xmq4pfgiElg5GFQqcFt41Br9
iNB/+4hq98JWTAWOPRkLYWRlUakyGOGylBqBesp1HC6s14s506bt7XgWaHNiBUzKhGuw/girEJEg
3nFxqVdka7DmlaqBB90WoDepDxJ/vNYSLL0JhsBT8COcgTHWMA7CLGGeRvGnC6fGzQ9kkiPYiWh1
VPFmDzvpQN+Q0EXTJ7EwIplNbZcT5fXwmufOswxyjlR4FAveM1bTNAlLS64mm/dLlYEGIh3Kugwp
TpUjUnJKTFieTn57ov/PawY7fnQsBiPZFH/67niyrTsRpzDTelH76bDSUXEjLLm72c6B7qK7A+jR
EVKP/HQik5PkEmyZN2HqTc+ETuEAiHlc71yIiBf+BRi3NfLtU5L21E5kpVMbgjObGnXA42K7iu7J
Zz0A3T4id6GP6FzTt9pZw2ZD8t7YFd5T26UmP+KrXF1KOfVCXc2J4+080xbYNEk01wSrNEY7SxP2
+YTLDSmqeN6Z8gyl2/4pOsDTXzC+8F5yd3CAUco6R/742AaJqT6sGfCj1G15BaXXAPNgrnJSn8Rv
EB5Ja85lgvk9wc87ARhUhcwg3aJkaERad3kbnWURh/whp8lS/PQGnWqcBkJ7bdTkOEvca/Ims2wc
reD81jhMMNO0dtqx2tr7OdliLsAehTcwLADrnYVwmRDnT8hjjSQUwfMzenwgnB+i8kuTYT3yiVP+
Yue+QRbtMMdvPtLYje/lwCy6m4TvEkUucV0xNM7DMhqCfjYxw4L8NrrNBKEZwJ9IrOeY80udxCf4
tAraLDmGh+V8adh72IjiiC9XRynM+UeW4JNB68bLakFV24LsYAE6j+bEYlhgD630gwFTOtVcHzpf
PtZvBE6YZAB/BKFxOYLHpj6WagOzliucyXjIlI2/13bRElU2VICmaBDlwl+Ywsq3y+wjbhTGgsfn
Sl9SQ+J/Lt6zpjrJ5koM3md6gIOEFa52hrDfJS1S4lCMAxtvpenjupl099AjVV43qbycVFTJy+tw
1ElTgm+Jct4u/nsCPG+HjxdznVt6CZ3uk2bvznCLyg/7sukxOD2JWKwKUQ4AjgLTTooJiCtFt/ez
yUZjrBnShX8+GKBwmINCRdx5NXOs+oC/TvrMsEACrJQz4zTW8xrpUe/Egfo9YbuJsE1ylg9h3WEn
UNuLPl4CnPX5vuQ8k+NZRhfscTCavBZmNzZkHyQN/FjXdiLTVDMJ8omzC1ujLiMmhX6b7F4qmTBh
fv/zMzNSMR209JX7TZJNfFjwcdB9EP+SbCY5htICYEKo+bWb6LL2aUJXjhZJR+Z2INF29i2K68+/
v6lJfw8XFPHCYkfZXpSBaYeJUc6d7MFsJYsowy9MA2my33fPU5/t0ED3fIE8TTLKmHcEDKTWqB5q
U37C9B1o56QaMRyHhJzOgVbqX9BAAp5jiaGbmVDa4SYrr7dmv7sOyWfSu9SY6RkwwgHrnBdoKO3E
c0VR/cldVucquj0XyddYaMk1dNKwpUcCGpB6oqtLWH51VhlOTut3FYHo0UzRZkE2CiTMNBrHBZmb
bjHmg9q+tqkLutTn2Kfl0ivxKhVwVZNStUPK7aSaa/OkY/5omm0tyAa/gyJIxBm8po8brfLAhpo3
74r+K+YEFKlmi/SFF9fb4XVM+M0Qht7xQdKbx+nIXorl/gEAtGNRLP3jZ93V9SUTlFJaJitgSejI
lqzadsTa9FtsGHzGFqtiBCrscQuVr0+5Q3bk2rSsjS4rwymuUvPYX1dxG27YduFXqsTmi0gM/4Ay
UJS5MXzqEofGBNPa7mNcXA7PShv9HdYhkXw+GXF0o6wqxBpyvTmGdGSYOa/wBGo1eOzSScw8baGh
mi3huGiVdhwIwmMmJzCVPb/8H0wPDDnECP5Y3Pbyd3XptbrZ3cOv852UOiFtEy64aPbWCoZ5bLHn
Ict2lbQF2Nz4ne+Q1alxdsgLTkoPq5whTn2cTK67D/yFPv0LCRNWZWFKYV/Umlm8vnAJZEG7k+Du
rvtW4s2YBw==
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
