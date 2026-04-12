// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Apr 12 15:57:38 2026
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
    rsta,
    ena,
    addra,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [31:0]addra;
  wire clka;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire NLW_U0_dbiterr_UNCONNECTED;
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
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.622 mW" *) 
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
  (* C_HAS_RSTA = "1" *) 
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
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[11:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 32784)
`pragma protect data_block
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
HbibPKfN5dct
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
