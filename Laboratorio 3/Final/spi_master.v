`timescale 1ns / 1ps

module spi_master #(
    parameter CLK_FREQ = 100_000_000,
    parameter SPI_FREQ = 1_000_000
)(
    input  wire       clk,
    input  wire       resetn,

    input  wire       start,
    input  wire [7:0] tx_byte,
    output reg  [7:0] rx_byte,
    output reg        busy,
    output reg        done,

    output reg        sclk,
    output reg        mosi,
    input  wire       miso
);

    localparam DIVIDER = CLK_FREQ / (2 * SPI_FREQ);

    reg [15:0] div_cnt;
    reg [2:0]  bit_cnt;
    reg [7:0]  tx_shift;
    reg [7:0]  rx_shift;
    reg        active;

    always @(posedge clk) begin
        if (!resetn) begin
            sclk     <= 1'b0;
            mosi     <= 1'b0;
            rx_byte  <= 8'd0;
            busy     <= 1'b0;
            done     <= 1'b0;
            div_cnt  <= 16'd0;
            bit_cnt  <= 3'd7;
            tx_shift <= 8'd0;
            rx_shift <= 8'd0;
            active   <= 1'b0;
        end else begin
            done <= 1'b0;

            if (start && !busy) begin
                busy     <= 1'b1;
                active   <= 1'b1;
                sclk     <= 1'b0;
                div_cnt  <= 16'd0;
                bit_cnt  <= 3'd7;
                tx_shift <= tx_byte;
                rx_shift <= 8'd0;
                mosi     <= tx_byte[7];
            end

            else if (active) begin
                if (div_cnt == DIVIDER - 1) begin
                    div_cnt <= 16'd0;

                    if (sclk == 1'b0) begin
                        sclk <= 1'b1;
                        rx_shift <= {rx_shift[6:0], miso};
                    end else begin
                        sclk <= 1'b0;

                        if (bit_cnt == 3'd0) begin
                            rx_byte <= {rx_shift[6:0], miso};
                            busy    <= 1'b0;
                            active  <= 1'b0;
                            done    <= 1'b1;
                            bit_cnt <= 3'd7;
                        end else begin
                            bit_cnt  <= bit_cnt - 1'b1;
                            tx_shift <= {tx_shift[6:0], 1'b0};
                            mosi     <= tx_shift[6];
                        end
                    end
                end else begin
                    div_cnt <= div_cnt + 1'b1;
                end
            end
        end
    end

endmodule