`timescale 1ns / 1ps

module spi_adxl362 #(
    parameter CLK_FREQ = 100_000_000,
    parameter SPI_FREQ = 1_000_000
)(
    input  wire        clk,
    input  wire        resetn,

    input  wire        mem_valid,
    input  wire [31:0] mem_addr,
    input  wire [31:0] mem_wdata,
    input  wire [3:0]  mem_wstrb,
    output reg  [31:0] mem_rdata,
    output reg         mem_ready,

    output wire        spi_sclk,
    output wire        spi_mosi,
    input  wire        spi_miso,
    output wire        spi_cs_n
);

    localparam ADDR_CTRL = 32'h0000_2020;
    localparam ADDR_XY   = 32'h0000_2028;
    localparam ADDR_Z    = 32'h0000_202C;

    wire addr_ctrl = mem_addr == ADDR_CTRL;
    wire addr_xy   = mem_addr == ADDR_XY;
    wire addr_z    = mem_addr == ADDR_Z;

    wire selected = mem_valid && (addr_ctrl || addr_xy || addr_z);
    wire write_en = selected && (mem_wstrb != 4'b0000);

    reg start_read;

    wire controller_busy;
    wire controller_ready;

    wire signed [15:0] x_data;
    wire signed [15:0] y_data;
    wire signed [15:0] z_data;

    wire        spi_start;
    wire [7:0]  spi_tx_byte;
    wire [7:0]  spi_rx_byte;
    wire        spi_busy;
    wire        spi_done;

    //--------------------------------------------------
    // CPU memory interface
    //--------------------------------------------------

    always @(*) begin
        mem_ready = selected;

        if (addr_ctrl)
            mem_rdata = {30'b0, controller_ready, controller_busy};

        else if (addr_xy)
            mem_rdata = {y_data[15:0], x_data[15:0]};

        else if (addr_z)
            mem_rdata = {{16{z_data[15]}}, z_data[15:0]};

        else
            mem_rdata = 32'd0;
    end

    always @(posedge clk) begin
        if (!resetn) begin
            start_read <= 1'b0;
        end else begin
            start_read <= 1'b0;

            if (write_en && addr_ctrl && mem_wdata[0]) begin
                start_read <= 1'b1;
            end
        end
    end

    //--------------------------------------------------
    // ADXL362 controller
    //--------------------------------------------------

    adxl362_controller adxl_ctrl_inst (
        .clk(clk),
        .resetn(resetn),

        .start_read(start_read),
        .busy(controller_busy),
        .data_ready(controller_ready),

        .x_data(x_data),
        .y_data(y_data),
        .z_data(z_data),

        .spi_start(spi_start),
        .spi_tx_byte(spi_tx_byte),
        .spi_rx_byte(spi_rx_byte),
        .spi_busy(spi_busy),
        .spi_done(spi_done),

        .spi_cs_n(spi_cs_n)
    );

    //--------------------------------------------------
    // Generic SPI master
    //--------------------------------------------------

    spi_master #(
        .CLK_FREQ(CLK_FREQ),
        .SPI_FREQ(SPI_FREQ)
    ) spi_master_inst (
        .clk(clk),
        .resetn(resetn),

        .start(spi_start),
        .tx_byte(spi_tx_byte),
        .rx_byte(spi_rx_byte),
        .busy(spi_busy),
        .done(spi_done),

        .sclk(spi_sclk),
        .mosi(spi_mosi),
        .miso(spi_miso)
    );

endmodule