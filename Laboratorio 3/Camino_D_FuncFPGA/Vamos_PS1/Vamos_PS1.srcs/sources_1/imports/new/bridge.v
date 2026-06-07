`timescale 1ns / 1ps

module axi_bridge (
    input  wire        clk,
    input  wire        reset,

    input  wire        cpu_valid,
    input  wire [31:0] cpu_addr,
    input  wire [31:0] cpu_wdata,
    input  wire [3:0]  cpu_wstrb,
    output reg         cpu_ready,
    output reg  [31:0] cpu_rdata,

    output reg  [31:0] gpio_awaddr,
    output reg         gpio_awvalid,
    input  wire        gpio_awready,
    output reg  [31:0] gpio_wdata,
    output reg  [3:0]  gpio_wstrb,
    output reg         gpio_wvalid,
    input  wire        gpio_wready,
    input  wire [1:0]  gpio_bresp,
    input  wire        gpio_bvalid,
    output reg         gpio_bready,
    output reg  [31:0] gpio_araddr,
    output reg         gpio_arvalid,
    input  wire        gpio_arready,
    input  wire [31:0] gpio_rdata,
    input  wire [1:0]  gpio_rresp,
    input  wire        gpio_rvalid,
    output reg         gpio_rready,

    output reg  [31:0] uart_awaddr,
    output reg         uart_awvalid,
    input  wire        uart_awready,
    output reg  [31:0] uart_wdata,
    output reg  [3:0]  uart_wstrb,
    output reg         uart_wvalid,
    input  wire        uart_wready,
    input  wire [1:0]  uart_bresp,
    input  wire        uart_bvalid,
    output reg         uart_bready,
    output reg  [31:0] uart_araddr,
    output reg         uart_arvalid,
    input  wire        uart_arready,
    input  wire [31:0] uart_rdata,
    input  wire [1:0]  uart_rresp,
    input  wire        uart_rvalid,
    output reg         uart_rready
);

    localparam ST_IDLE  = 3'd0;
    localparam ST_WRITE = 3'd1;
    localparam ST_WRESP = 3'd2;
    localparam ST_READ  = 3'd3;
    localparam ST_RRESP = 3'd4;

    reg [2:0] state;

    reg target_gpio;
    reg target_uart;

    reg aw_done;
    reg w_done;
    reg ar_done;

    wire is_write = |cpu_wstrb;

    wire addr_gpio =
        (cpu_addr == 32'h0000_2004);

    wire addr_uart =
        (cpu_addr == 32'h0000_2010) ||
        (cpu_addr == 32'h0000_2018) ||
        (cpu_addr == 32'h0000_201C);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= ST_IDLE;

            cpu_ready <= 1'b0;
            cpu_rdata <= 32'd0;

            gpio_awaddr  <= 32'd0;
            gpio_awvalid <= 1'b0;
            gpio_wdata   <= 32'd0;
            gpio_wstrb   <= 4'd0;
            gpio_wvalid  <= 1'b0;
            gpio_bready  <= 1'b0;
            gpio_araddr  <= 32'd0;
            gpio_arvalid <= 1'b0;
            gpio_rready  <= 1'b0;

            uart_awaddr  <= 32'd0;
            uart_awvalid <= 1'b0;
            uart_wdata   <= 32'd0;
            uart_wstrb   <= 4'd0;
            uart_wvalid  <= 1'b0;
            uart_bready  <= 1'b0;
            uart_araddr  <= 32'd0;
            uart_arvalid <= 1'b0;
            uart_rready  <= 1'b0;

            target_gpio <= 1'b0;
            target_uart <= 1'b0;

            aw_done <= 1'b0;
            w_done  <= 1'b0;
            ar_done <= 1'b0;
        end else begin
            cpu_ready <= 1'b0;

            gpio_bready <= 1'b0;
            gpio_rready <= 1'b0;
            uart_bready <= 1'b0;
            uart_rready <= 1'b0;

            case (state)

                ST_IDLE: begin
                    aw_done <= 1'b0;
                    w_done  <= 1'b0;
                    ar_done <= 1'b0;

                    gpio_awvalid <= 1'b0;
                    gpio_wvalid  <= 1'b0;
                    gpio_arvalid <= 1'b0;

                    uart_awvalid <= 1'b0;
                    uart_wvalid  <= 1'b0;
                    uart_arvalid <= 1'b0;

                    target_gpio <= addr_gpio;
                    target_uart <= addr_uart;

                    if (cpu_valid && (addr_gpio || addr_uart)) begin
                        if (is_write) begin
                            if (addr_gpio) begin
                                gpio_awaddr  <= cpu_addr;
                                gpio_wdata   <= cpu_wdata;
                                gpio_wstrb   <= cpu_wstrb;
                                gpio_awvalid <= 1'b1;
                                gpio_wvalid  <= 1'b1;
                            end else begin
                                uart_awaddr  <= cpu_addr;
                                uart_wdata   <= cpu_wdata;
                                uart_wstrb   <= cpu_wstrb;
                                uart_awvalid <= 1'b1;
                                uart_wvalid  <= 1'b1;
                            end

                            state <= ST_WRITE;
                        end else begin
                            if (addr_gpio) begin
                                gpio_araddr  <= cpu_addr;
                                gpio_arvalid <= 1'b1;
                            end else begin
                                uart_araddr  <= cpu_addr;
                                uart_arvalid <= 1'b1;
                            end

                            state <= ST_READ;
                        end
                    end
                end

                ST_WRITE: begin
                    if (target_gpio) begin
                        if (gpio_awvalid && gpio_awready) begin
                            gpio_awvalid <= 1'b0;
                            aw_done <= 1'b1;
                        end

                        if (gpio_wvalid && gpio_wready) begin
                            gpio_wvalid <= 1'b0;
                            w_done <= 1'b1;
                        end

                        if ((aw_done || (gpio_awvalid && gpio_awready)) &&
                            (w_done  || (gpio_wvalid  && gpio_wready))) begin
                            state <= ST_WRESP;
                        end
                    end

                    if (target_uart) begin
                        if (uart_awvalid && uart_awready) begin
                            uart_awvalid <= 1'b0;
                            aw_done <= 1'b1;
                        end

                        if (uart_wvalid && uart_wready) begin
                            uart_wvalid <= 1'b0;
                            w_done <= 1'b1;
                        end

                        if ((aw_done || (uart_awvalid && uart_awready)) &&
                            (w_done  || (uart_wvalid  && uart_wready))) begin
                            state <= ST_WRESP;
                        end
                    end
                end

                ST_WRESP: begin
                    if (target_gpio) begin
                        gpio_bready <= 1'b1;

                        if (gpio_bvalid) begin
                            cpu_ready <= 1'b1;
                            state <= ST_IDLE;
                        end
                    end

                    if (target_uart) begin
                        uart_bready <= 1'b1;

                        if (uart_bvalid) begin
                            cpu_ready <= 1'b1;
                            state <= ST_IDLE;
                        end
                    end
                end

                ST_READ: begin
                    if (target_gpio) begin
                        if (gpio_arvalid && gpio_arready) begin
                            gpio_arvalid <= 1'b0;
                            state <= ST_RRESP;
                        end
                    end

                    if (target_uart) begin
                        if (uart_arvalid && uart_arready) begin
                            uart_arvalid <= 1'b0;
                            state <= ST_RRESP;
                        end
                    end
                end

                ST_RRESP: begin
                    if (target_gpio) begin
                        gpio_rready <= 1'b1;

                        if (gpio_rvalid) begin
                            cpu_rdata <= gpio_rdata;
                            cpu_ready <= 1'b1;
                            state <= ST_IDLE;
                        end
                    end

                    if (target_uart) begin
                        uart_rready <= 1'b1;

                        if (uart_rvalid) begin
                            cpu_rdata <= uart_rdata;
                            cpu_ready <= 1'b1;
                            state <= ST_IDLE;
                        end
                    end
                end

                default: begin
                    state <= ST_IDLE;
                end

            endcase
        end
    end

endmodule