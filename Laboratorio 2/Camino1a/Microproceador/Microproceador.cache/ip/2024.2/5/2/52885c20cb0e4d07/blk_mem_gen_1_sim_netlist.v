// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Apr 13 10:51:47 2026
// Host        : ASHG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
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
        .dina(dina),
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
        .wea(wea),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27968)
`pragma protect data_block
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
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
