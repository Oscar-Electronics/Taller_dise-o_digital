`timescale 1ns / 1ps

module axi_gpio_slave (
    input  wire        ACLK,
    input  wire        ARESETN,

    input  wire [31:0] S_AXI_AWADDR,
    input  wire        S_AXI_AWVALID,
    output reg         S_AXI_AWREADY,

    input  wire [31:0] S_AXI_WDATA,
    input  wire [3:0]  S_AXI_WSTRB,
    input  wire        S_AXI_WVALID,
    output reg         S_AXI_WREADY,

    output reg  [1:0]  S_AXI_BRESP,
    output reg         S_AXI_BVALID,
    input  wire        S_AXI_BREADY,

    input  wire [31:0] S_AXI_ARADDR,
    input  wire        S_AXI_ARVALID,
    output reg         S_AXI_ARREADY,

    output reg  [31:0] S_AXI_RDATA,
    output reg  [1:0]  S_AXI_RRESP,
    output reg         S_AXI_RVALID,
    input  wire        S_AXI_RREADY,

    output wire [15:0] leds
);

    reg [31:0] gpio_reg;

    assign leds = gpio_reg[15:0];

    always @(posedge ACLK or negedge ARESETN) begin
        if (!ARESETN) begin
            gpio_reg      <= 32'd0;

            S_AXI_AWREADY <= 1'b0;
            S_AXI_WREADY  <= 1'b0;
            S_AXI_BVALID  <= 1'b0;
            S_AXI_BRESP   <= 2'b00;

            S_AXI_ARREADY <= 1'b0;
            S_AXI_RVALID  <= 1'b0;
            S_AXI_RDATA   <= 32'd0;
            S_AXI_RRESP   <= 2'b00;
        end else begin
            S_AXI_AWREADY <= 1'b0;
            S_AXI_WREADY  <= 1'b0;
            S_AXI_ARREADY <= 1'b0;

            if (!S_AXI_BVALID && S_AXI_AWVALID && S_AXI_WVALID) begin
                S_AXI_AWREADY <= 1'b1;
                S_AXI_WREADY  <= 1'b1;

                if (S_AXI_WSTRB[0]) gpio_reg[7:0]   <= S_AXI_WDATA[7:0];
                if (S_AXI_WSTRB[1]) gpio_reg[15:8]  <= S_AXI_WDATA[15:8];
                if (S_AXI_WSTRB[2]) gpio_reg[23:16] <= S_AXI_WDATA[23:16];
                if (S_AXI_WSTRB[3]) gpio_reg[31:24] <= S_AXI_WDATA[31:24];

                S_AXI_BVALID <= 1'b1;
                S_AXI_BRESP  <= 2'b00;
            end

            if (S_AXI_BVALID && S_AXI_BREADY)
                S_AXI_BVALID <= 1'b0;

            if (!S_AXI_RVALID && S_AXI_ARVALID) begin
                S_AXI_ARREADY <= 1'b1;
                S_AXI_RVALID  <= 1'b1;
                S_AXI_RRESP   <= 2'b00;
                S_AXI_RDATA   <= gpio_reg;
            end

            if (S_AXI_RVALID && S_AXI_RREADY)
                S_AXI_RVALID <= 1'b0;
        end
    end

endmodule