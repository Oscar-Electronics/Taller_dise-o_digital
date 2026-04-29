// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr 28 19:32:32 2026
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
h4jLVslweQ==
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
