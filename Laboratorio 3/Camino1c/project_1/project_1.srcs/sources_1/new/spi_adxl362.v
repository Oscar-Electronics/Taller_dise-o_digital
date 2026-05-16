`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

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

    output reg         spi_sclk,
    output reg         spi_mosi,
    input  wire        spi_miso,
    output reg         spi_cs_n
);

    localparam ADDR_CTRL = 32'h0000_2020;
    localparam ADDR_XY   = 32'h0000_2028;
    localparam ADDR_Z    = 32'h0000_202C;

    localparam DIVIDER = CLK_FREQ / (2 * SPI_FREQ);

    localparam CMD_WRITE = 8'h0A;
    localparam CMD_READ  = 8'h0B;

    localparam REG_POWER_CTL = 8'h2D;
    localparam REG_XDATA_L   = 8'h0E;

    localparam ST_INIT_IDLE   = 4'd0;
    localparam ST_INIT_START  = 4'd1;
    localparam ST_INIT_SEND   = 4'd2;
    localparam ST_IDLE        = 4'd3;
    localparam ST_READ_START  = 4'd4;
    localparam ST_READ_SEND   = 4'd5;
    localparam ST_READ_DONE   = 4'd6;

    reg [3:0] state;

    reg [15:0] div_cnt;
    reg [2:0]  bit_cnt;
    reg [3:0]  byte_cnt;

    reg [7:0] tx_shift;
    reg [7:0] rx_shift;

    reg [7:0] rx0;
    reg [7:0] rx1;
    reg [7:0] rx2;
    reg [7:0] rx3;
    reg [7:0] rx4;
    reg [7:0] rx5;
    reg [7:0] rx6;
    reg [7:0] rx7;

    reg signed [15:0] x_data;
    reg signed [15:0] y_data;
    reg signed [15:0] z_data;

    reg busy;
    reg data_ready;
    reg start_read;
    reg [15:0] init_wait;

    wire addr_ctrl = (mem_addr == ADDR_CTRL);
    wire addr_xy   = (mem_addr == ADDR_XY);
    wire addr_z    = (mem_addr == ADDR_Z);

    wire selected = mem_valid && (addr_ctrl || addr_xy || addr_z);
    wire write_en = selected && (mem_wstrb != 4'b0000);

    function signed [15:0] sign_extend_12;
        input [15:0] value;
        begin
            sign_extend_12 = {{4{value[11]}}, value[11:0]};
        end
    endfunction

    always @(*) begin
        mem_ready = selected;

        if (addr_ctrl) begin
            mem_rdata = {30'b0, data_ready, busy};
        end else if (addr_xy) begin
            mem_rdata = {y_data[15:0], x_data[15:0]};
        end else if (addr_z) begin
            mem_rdata = {{16{z_data[15]}}, z_data[15:0]};
        end else begin
            mem_rdata = 32'h0000_0000;
        end
    end

    always @(posedge clk) begin
        if (!resetn) begin
            state      <= ST_INIT_IDLE;
            spi_sclk   <= 1'b0;
            spi_mosi   <= 1'b0;
            spi_cs_n   <= 1'b1;

            div_cnt    <= 16'd0;
            bit_cnt    <= 3'd0;
            byte_cnt   <= 4'd0;
            tx_shift   <= 8'd0;
            rx_shift   <= 8'd0;

            x_data     <= 16'sd0;
            y_data     <= 16'sd0;
            z_data     <= 16'sd0;

            busy       <= 1'b1;
            data_ready <= 1'b0;
            start_read <= 1'b0;
            init_wait  <= 16'd0;
        end else begin

            if (write_en && addr_ctrl && mem_wdata[0]) begin
                start_read <= 1'b1;
                data_ready <= 1'b0;
            end

            case (state)

                ST_INIT_IDLE: begin
                    busy     <= 1'b1;
                    spi_cs_n <= 1'b1;
                    spi_sclk <= 1'b0;

                    init_wait <= init_wait + 1'b1;

                    if (init_wait == 16'd50000) begin
                        init_wait <= 16'd0;
                        state <= ST_INIT_START;
                    end
                end

                ST_INIT_START: begin
                    spi_cs_n <= 1'b0;
                    spi_sclk <= 1'b0;
                    byte_cnt <= 4'd0;
                    bit_cnt  <= 3'd0;
                    div_cnt  <= 16'd0;
                    tx_shift <= CMD_WRITE;
                    state    <= ST_INIT_SEND;
                end

                ST_INIT_SEND: begin
                    if (div_cnt == DIVIDER - 1) begin
                        div_cnt <= 16'd0;
                        spi_sclk <= ~spi_sclk;

                        if (spi_sclk == 1'b0) begin
                            spi_mosi <= tx_shift[7];
                        end else begin
                            tx_shift <= {tx_shift[6:0], 1'b0};

                            if (bit_cnt == 3'd7) begin
                                bit_cnt <= 3'd0;
                                byte_cnt <= byte_cnt + 1'b1;

                                if (byte_cnt == 4'd0) begin
                                    tx_shift <= REG_POWER_CTL;
                                end else if (byte_cnt == 4'd1) begin
                                    tx_shift <= 8'h02;
                                end else begin
                                    spi_cs_n <= 1'b1;
                                    spi_sclk <= 1'b0;
                                    busy <= 1'b0;
                                    state <= ST_IDLE;
                                end
                            end else begin
                                bit_cnt <= bit_cnt + 1'b1;
                            end
                        end
                    end else begin
                        div_cnt <= div_cnt + 1'b1;
                    end
                end

                ST_IDLE: begin
                    busy <= 1'b0;
                    spi_cs_n <= 1'b1;
                    spi_sclk <= 1'b0;

                    if (start_read) begin
                        start_read <= 1'b0;
                        busy <= 1'b1;
                        state <= ST_READ_START;
                    end
                end

                ST_READ_START: begin
                    spi_cs_n <= 1'b0;
                    spi_sclk <= 1'b0;
                    byte_cnt <= 4'd0;
                    bit_cnt  <= 3'd0;
                    div_cnt  <= 16'd0;
                    tx_shift <= CMD_READ;
                    rx_shift <= 8'd0;
                    state <= ST_READ_SEND;
                end

                ST_READ_SEND: begin
                    if (div_cnt == DIVIDER - 1) begin
                        div_cnt <= 16'd0;
                        spi_sclk <= ~spi_sclk;

                        if (spi_sclk == 1'b0) begin
                            spi_mosi <= tx_shift[7];
                        end else begin
                            rx_shift <= {rx_shift[6:0], spi_miso};
                            tx_shift <= {tx_shift[6:0], 1'b0};

                            if (bit_cnt == 3'd7) begin
                                bit_cnt <= 3'd0;

                                case (byte_cnt)
                                    4'd0: rx0 <= {rx_shift[6:0], spi_miso};
                                    4'd1: rx1 <= {rx_shift[6:0], spi_miso};
                                    4'd2: rx2 <= {rx_shift[6:0], spi_miso};
                                    4'd3: rx3 <= {rx_shift[6:0], spi_miso};
                                    4'd4: rx4 <= {rx_shift[6:0], spi_miso};
                                    4'd5: rx5 <= {rx_shift[6:0], spi_miso};
                                    4'd6: rx6 <= {rx_shift[6:0], spi_miso};
                                    4'd7: rx7 <= {rx_shift[6:0], spi_miso};
                                endcase

                                byte_cnt <= byte_cnt + 1'b1;

                                if (byte_cnt == 4'd0) begin
                                    tx_shift <= REG_XDATA_L;
                                end else begin
                                    tx_shift <= 8'h00;
                                end

                                if (byte_cnt == 4'd7) begin
                                    state <= ST_READ_DONE;
                                end
                            end else begin
                                bit_cnt <= bit_cnt + 1'b1;
                            end
                        end
                    end else begin
                        div_cnt <= div_cnt + 1'b1;
                    end
                end

                ST_READ_DONE: begin
                    spi_cs_n <= 1'b1;
                    spi_sclk <= 1'b0;

                    x_data <= sign_extend_12({rx3, rx2});
                    y_data <= sign_extend_12({rx5, rx4});
                    z_data <= sign_extend_12({rx7, rx6});

                    busy <= 1'b0;
                    data_ready <= 1'b1;
                    state <= ST_IDLE;
                end

                default: begin
                    state <= ST_INIT_IDLE;
                end

            endcase
        end
    end

endmodule