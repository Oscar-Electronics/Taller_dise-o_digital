`timescale 1ns / 1ps

module uart_axi_lite_wrapper (
    input  wire        s_aclk,
    input  wire        s_aresetn,

    // AXI4-Lite slave
    input  wire [31:0] s_axi_awaddr,
    input  wire        s_axi_awvalid,
    output reg         s_axi_awready,

    input  wire [31:0] s_axi_wdata,
    input  wire [ 3:0] s_axi_wstrb,
    input  wire        s_axi_wvalid,
    output reg         s_axi_wready,

    output reg  [ 1:0] s_axi_bresp,
    output reg         s_axi_bvalid,
    input  wire        s_axi_bready,

    input  wire [31:0] s_axi_araddr,
    input  wire        s_axi_arvalid,
    output reg         s_axi_arready,

    output reg  [31:0] s_axi_rdata,
    output reg  [ 1:0] s_axi_rresp,
    output reg         s_axi_rvalid,
    input  wire        s_axi_rready,

    // UART física
    input  wire        uart_rx,
    output wire        uart_tx
);

    // ---------------------------------------------------------
    // UART internal signals
    // ---------------------------------------------------------
    reg  [7:0] uart_tx_data;
    reg        uart_tx_req;
    reg        uart_rx_req;
    wire [7:0] uart_rx_data;
    wire       uart_rx_rdy;
    wire       uart_tx_rdy;
    wire       uart_tx_empty;
    wire       uart_rx_error;

    // ---------------------------------------------------------
    // Address map
    // 0x00 STATUS
    // 0x04 TXDATA
    // 0x08 RXDATA
    // ---------------------------------------------------------
    localparam ADDR_STATUS = 32'h0000_0000;
    localparam ADDR_TXDATA = 32'h0000_0004;
    localparam ADDR_RXDATA = 32'h0000_0008;

    reg [31:0] awaddr_reg;
    reg [31:0] araddr_reg;

    // ---------------------------------------------------------
    // UART instance
    // Ajusta SystemClockFreq si tu clk_stable no es 100 MHz
    // ---------------------------------------------------------
    uart #(
        .SystemClockFreq(100_000_000),
        .BaudRate(9600)
    ) uart_inst (
        .i_rst_n    (s_aresetn),
        .i_clk      (s_aclk),
        .i_tx_data  (uart_tx_data),
        .o_rx_data  (uart_rx_data),
        .i_tx_req   (uart_tx_req),
        .i_rx_req   (uart_rx_req),
        .o_rx_rdy   (uart_rx_rdy),
        .o_tx_rdy   (uart_tx_rdy),
        .o_tx_empty (uart_tx_empty),
        .o_rx_error (uart_rx_error),
        .i_rx       (uart_rx),
        .o_tx       (uart_tx),
        .i_cts      (1'b0),
        .o_rts      ()
    );

    // ---------------------------------------------------------
    // AXI-Lite write channel
    // ---------------------------------------------------------
    always @(posedge s_aclk or negedge s_aresetn) begin
        if (!s_aresetn) begin
            s_axi_awready <= 1'b0;
            s_axi_wready  <= 1'b0;
            s_axi_bvalid  <= 1'b0;
            s_axi_bresp   <= 2'b00;
            awaddr_reg    <= 32'h0;

            uart_tx_data  <= 8'h00;
            uart_tx_req   <= 1'b0;
        end else begin
            uart_tx_req <= 1'b0;

            // aceptar dirección de escritura
            if (!s_axi_awready && s_axi_awvalid) begin
                s_axi_awready <= 1'b1;
                awaddr_reg    <= s_axi_awaddr;
            end else begin
                s_axi_awready <= 1'b0;
            end

            // aceptar datos de escritura
            if (!s_axi_wready && s_axi_wvalid) begin
                s_axi_wready <= 1'b1;
            end else begin
                s_axi_wready <= 1'b0;
            end

            // cuando ya llegaron dirección y datos, ejecutar escritura
            if (s_axi_awvalid && s_axi_wvalid && !s_axi_bvalid) begin
                s_axi_bvalid <= 1'b1;
                s_axi_bresp  <= 2'b00; // OKAY

                case (awaddr_reg[5:0])
                    ADDR_TXDATA[5:0]: begin
                        if (uart_tx_rdy) begin
                            uart_tx_data <= s_axi_wdata[7:0];
                            uart_tx_req  <= 1'b1;
                        end
                    end
                    default: begin
                        // sin acción
                    end
                endcase
            end

            // respuesta de escritura completada
            if (s_axi_bvalid && s_axi_bready) begin
                s_axi_bvalid <= 1'b0;
            end
        end
    end

    // ---------------------------------------------------------
    // AXI-Lite read channel
    // ---------------------------------------------------------
    always @(posedge s_aclk or negedge s_aresetn) begin
        if (!s_aresetn) begin
            s_axi_arready <= 1'b0;
            s_axi_rvalid  <= 1'b0;
            s_axi_rresp   <= 2'b00;
            s_axi_rdata   <= 32'h0000_0000;
            araddr_reg    <= 32'h0;

            uart_rx_req   <= 1'b0;
        end else begin
            uart_rx_req <= 1'b0;

            if (!s_axi_arready && s_axi_arvalid) begin
                s_axi_arready <= 1'b1;
                araddr_reg    <= s_axi_araddr;
            end else begin
                s_axi_arready <= 1'b0;
            end

            if (s_axi_arvalid && !s_axi_rvalid) begin
                s_axi_rvalid <= 1'b1;
                s_axi_rresp  <= 2'b00; // OKAY

                case (s_axi_araddr[5:0])
                    ADDR_STATUS[5:0]: begin
                        s_axi_rdata <= {
                            28'b0,
                            uart_rx_error,
                            uart_tx_empty,
                            uart_rx_rdy,
                            uart_tx_rdy
                        };
                    end

                    ADDR_RXDATA[5:0]: begin
                        s_axi_rdata <= {24'h0, uart_rx_data};
                        uart_rx_req <= 1'b1;
                    end

                    ADDR_TXDATA[5:0]: begin
                        s_axi_rdata <= 32'h0000_0000;
                    end

                    default: begin
                        s_axi_rdata <= 32'h0000_0000;
                    end
                endcase
            end

            if (s_axi_rvalid && s_axi_rready) begin
                s_axi_rvalid <= 1'b0;
            end
        end
    end

endmodule