// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Apr 12 16:38:15 2026
// Host        : DESKTOP-HJBI5HF running 64-bit major release  (build 9200)
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
