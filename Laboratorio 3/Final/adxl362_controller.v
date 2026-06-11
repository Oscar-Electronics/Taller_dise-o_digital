`timescale 1ns / 1ps

module adxl362_controller (
    input  wire clk,
    input  wire resetn,

    input  wire start_read,
    output reg  busy,
    output reg  data_ready,

    output reg signed [15:0] x_data,
    output reg signed [15:0] y_data,
    output reg signed [15:0] z_data,

    output reg        spi_start,
    output reg  [7:0] spi_tx_byte,
    input  wire [7:0] spi_rx_byte,
    input  wire       spi_busy,
    input  wire       spi_done,

    output reg        spi_cs_n
);

    localparam CMD_WRITE = 8'h0A;
    localparam CMD_READ  = 8'h0B;

    localparam REG_POWER_CTL = 8'h2D;
    localparam REG_XDATA_L   = 8'h0E;

    localparam ST_INIT_WAIT      = 5'd0;
    localparam ST_INIT_CS_LOW    = 5'd1;
    localparam ST_INIT_SEND      = 5'd2;
    localparam ST_INIT_NEXT      = 5'd3;
    localparam ST_IDLE           = 5'd4;
    localparam ST_READ_CS_LOW    = 5'd5;
    localparam ST_READ_SEND      = 5'd6;
    localparam ST_READ_NEXT      = 5'd7;
    localparam ST_READ_DONE      = 5'd8;

    reg [4:0] state;
    reg [3:0] byte_cnt;
    reg [15:0] init_wait;

    reg [7:0] rx0, rx1, rx2, rx3, rx4, rx5, rx6, rx7;

    function signed [15:0] sign_extend_12;
        input [15:0] value;
        begin
            sign_extend_12 = {{4{value[11]}}, value[11:0]};
        end
    endfunction

    always @(posedge clk) begin
        if (!resetn) begin
            state      <= ST_INIT_WAIT;
            byte_cnt   <= 4'd0;
            init_wait  <= 16'd0;

            busy       <= 1'b1;
            data_ready <= 1'b0;

            x_data <= 16'sd0;
            y_data <= 16'sd0;
            z_data <= 16'sd0;

            rx0 <= 8'd0; rx1 <= 8'd0; rx2 <= 8'd0; rx3 <= 8'd0;
            rx4 <= 8'd0; rx5 <= 8'd0; rx6 <= 8'd0; rx7 <= 8'd0;

            spi_start   <= 1'b0;
            spi_tx_byte <= 8'd0;
            spi_cs_n    <= 1'b1;
        end else begin
            spi_start <= 1'b0;

            case (state)

                //------------------------------------------
                // Espera inicial
                //------------------------------------------
                ST_INIT_WAIT: begin
                    busy <= 1'b1;
                    spi_cs_n <= 1'b1;

                    init_wait <= init_wait + 1'b1;

                    if (init_wait == 16'd50000) begin
                        init_wait <= 16'd0;
                        state <= ST_INIT_CS_LOW;
                    end
                end

                //------------------------------------------
                // Configuración inicial ADXL362
                // WRITE 0x2D 0x02
                //------------------------------------------
                ST_INIT_CS_LOW: begin
                    spi_cs_n <= 1'b0;
                    byte_cnt <= 4'd0;
                    state <= ST_INIT_SEND;
                end

                ST_INIT_SEND: begin
                    if (!spi_busy) begin
                        case (byte_cnt)
                            4'd0: spi_tx_byte <= CMD_WRITE;
                            4'd1: spi_tx_byte <= REG_POWER_CTL;
                            4'd2: spi_tx_byte <= 8'h02;
                            default: spi_tx_byte <= 8'h00;
                        endcase

                        spi_start <= 1'b1;
                        state <= ST_INIT_NEXT;
                    end
                end

                ST_INIT_NEXT: begin
                    if (spi_done) begin
                        if (byte_cnt == 4'd2) begin
                            spi_cs_n <= 1'b1;
                            busy <= 1'b0;
                            state <= ST_IDLE;
                        end else begin
                            byte_cnt <= byte_cnt + 1'b1;
                            state <= ST_INIT_SEND;
                        end
                    end
                end

                //------------------------------------------
                // Espera solicitud del CPU
                //------------------------------------------
                ST_IDLE: begin
                    busy <= 1'b0;
                    spi_cs_n <= 1'b1;

                    if (start_read) begin
                        busy <= 1'b1;
                        data_ready <= 1'b0;
                        state <= ST_READ_CS_LOW;
                    end
                end

                //------------------------------------------
                // Lectura XYZ
                // READ 0x0E + 6 bytes
                //------------------------------------------
                ST_READ_CS_LOW: begin
                    spi_cs_n <= 1'b0;
                    byte_cnt <= 4'd0;
                    state <= ST_READ_SEND;
                end

                ST_READ_SEND: begin
                    if (!spi_busy) begin
                        case (byte_cnt)
                            4'd0: spi_tx_byte <= CMD_READ;
                            4'd1: spi_tx_byte <= REG_XDATA_L;
                            default: spi_tx_byte <= 8'h00;
                        endcase

                        spi_start <= 1'b1;
                        state <= ST_READ_NEXT;
                    end
                end

                ST_READ_NEXT: begin
                    if (spi_done) begin
                        case (byte_cnt)
                            4'd0: rx0 <= spi_rx_byte;
                            4'd1: rx1 <= spi_rx_byte;
                            4'd2: rx2 <= spi_rx_byte;
                            4'd3: rx3 <= spi_rx_byte;
                            4'd4: rx4 <= spi_rx_byte;
                            4'd5: rx5 <= spi_rx_byte;
                            4'd6: rx6 <= spi_rx_byte;
                            4'd7: rx7 <= spi_rx_byte;
                        endcase

                        if (byte_cnt == 4'd7) begin
                            state <= ST_READ_DONE;
                        end else begin
                            byte_cnt <= byte_cnt + 1'b1;
                            state <= ST_READ_SEND;
                        end
                    end
                end

                ST_READ_DONE: begin
                    spi_cs_n <= 1'b1;

                    x_data <= sign_extend_12({rx3, rx2});
                    y_data <= sign_extend_12({rx5, rx4});
                    z_data <= sign_extend_12({rx7, rx6});

                    busy <= 1'b0;
                    data_ready <= 1'b1;

                    state <= ST_IDLE;
                end

                default: begin
                    state <= ST_INIT_WAIT;
                end

            endcase
        end
    end

endmodule
