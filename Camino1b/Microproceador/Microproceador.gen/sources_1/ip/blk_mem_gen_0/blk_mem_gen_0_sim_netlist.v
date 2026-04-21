// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr 21 10:33:52 2026
// Host        : ASHG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/anshr/Proyecto2a/Camino1a/Microproceador/Microproceador.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "1" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
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
  blk_mem_gen_0_blk_mem_gen_v8_4_9 U0
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
4a1VqWEHa3GkDMfXyP0fsiuky2G+pow7N6D/IA==
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
