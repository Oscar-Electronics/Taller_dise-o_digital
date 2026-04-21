// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr 21 10:34:19 2026
// Host        : ASHG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/anshr/Proyecto2a/Camino1a/Microproceador/Microproceador.gen/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
   (rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready);
  output rsta_busy;
  output rstb_busy;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* x_interface_mode = "slave CLK.ACLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF AXI_SLAVE_S_AXI:AXILite_SLAVE_S_AXI, ASSOCIATED_RESET s_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input s_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* x_interface_mode = "slave RST.ARESETN" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI AWADDR" *) (* x_interface_mode = "slave AXILite_SLAVE_S_AXI" *) (* x_interface_parameter = "XIL_INTERFACENAME AXILite_SLAVE_S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXILite_SLAVE_S_AXI RREADY" *) input s_axi_rready;

  wire \<const0> ;
  wire rsta_busy;
  wire rstb_busy;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "1" *) 
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
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.96515 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "1" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
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
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_1_blk_mem_gen_v8_4_9 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(1'b0),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[31:0]),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(rsta_busy),
        .rstb(1'b0),
        .rstb_busy(rstb_busy),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_araddr[11:2],1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_awaddr[11:2],1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea({1'b0,1'b0,1'b0,1'b0}),
        .web({1'b0,1'b0,1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 57712)
`pragma protect data_block
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
iL6LAIuqZoxq1lVPZdovT29xCKpgh5RY0j4UZg==
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
