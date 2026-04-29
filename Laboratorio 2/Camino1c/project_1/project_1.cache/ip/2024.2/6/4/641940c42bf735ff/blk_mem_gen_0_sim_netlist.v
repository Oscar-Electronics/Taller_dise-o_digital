// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr 28 22:07:45 2026
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
g6SkQIYNog==
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
