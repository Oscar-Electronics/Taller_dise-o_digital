`timescale 1ns / 1ps

module axi_uart_slave (
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

    input  wire        uart_rx,
    output wire        uart_tx
);

    localparam UART_CTRL  = 32'h0000_2010;
    localparam UART_DATA0 = 32'h0000_2018;
    localparam UART_DATA1 = 32'h0000_201C;

    wire [7:0] uart_rx_data;
    wire       uart_rx_rdy;
    wire       uart_tx_rdy;
    wire       uart_rx_error;

    reg [7:0] uart_tx_data;
    reg       uart_tx_req;
    reg       uart_rx_req;

    reg [7:0] uart_tx_reg;
    reg [7:0] uart_rx_reg;

    reg tx_start;
    reg rx_pending;

    reg ctrl_bit0_old;

    uart #(
        .SystemClockFreq(100_000_000),
        .BaudRate(9600)
    ) uart_inst (
        .i_rst_n(ARESETN),
        .i_clk(ACLK),

        .i_tx_data(uart_tx_data),
        .o_rx_data(uart_rx_data),

        .i_tx_req(uart_tx_req),
        .i_rx_req(uart_rx_req),

        .o_rx_rdy(uart_rx_rdy),
        .o_tx_rdy(uart_tx_rdy),
        .o_rx_error(uart_rx_error),

        .i_rx(uart_rx),
        .o_tx(uart_tx),

        .i_cts(1'b1),
        .o_rts()
    );

    wire write_handshake;
    assign write_handshake =
        (!S_AXI_BVALID) &&
        S_AXI_AWVALID &&
        S_AXI_WVALID;

    always @(posedge ACLK or negedge ARESETN) begin
        if (!ARESETN) begin
            uart_tx_data <= 8'd0;
            uart_tx_reg  <= 8'd0;
            uart_rx_reg  <= 8'd0;

            uart_tx_req  <= 1'b0;
            uart_rx_req  <= 1'b0;

            tx_start     <= 1'b0;
            rx_pending   <= 1'b0;

            ctrl_bit0_old <= 1'b0;

            S_AXI_AWREADY <= 1'b0;
            S_AXI_WREADY  <= 1'b0;
            S_AXI_BVALID  <= 1'b0;
            S_AXI_BRESP   <= 2'b00;

            S_AXI_ARREADY <= 1'b0;
            S_AXI_RVALID  <= 1'b0;
            S_AXI_RDATA   <= 32'd0;
            S_AXI_RRESP   <= 2'b00;
        end else begin
            uart_tx_req <= 1'b0;
            uart_rx_req <= 1'b0;

            S_AXI_AWREADY <= 1'b0;
            S_AXI_WREADY  <= 1'b0;
            S_AXI_ARREADY <= 1'b0;

            //--------------------------------------------------
            // TX: enviar una sola vez
            //--------------------------------------------------
            if (tx_start && uart_tx_rdy) begin
                uart_tx_data <= uart_tx_reg;
                uart_tx_req  <= 1'b1;
                tx_start     <= 1'b0;
            end

            //--------------------------------------------------
            // RX: capturar un byte una sola vez hasta que CPU limpie
            //--------------------------------------------------
            if (uart_rx_rdy && !rx_pending) begin
                uart_rx_reg <= uart_rx_data;
                rx_pending  <= 1'b1;
                uart_rx_req <= 1'b1;
            end

            //--------------------------------------------------
            // AXI WRITE
            //--------------------------------------------------
            if (write_handshake) begin
                S_AXI_AWREADY <= 1'b1;
                S_AXI_WREADY  <= 1'b1;
                S_AXI_BVALID  <= 1'b1;
                S_AXI_BRESP   <= 2'b00;

                case (S_AXI_AWADDR)

                    UART_CTRL: begin
                        // Solo iniciar TX en flanco 0->1 del bit 0
                        if (S_AXI_WDATA[0] && !ctrl_bit0_old) begin
                            tx_start <= 1'b1;
                        end

                        ctrl_bit0_old <= S_AXI_WDATA[0];

                        // Si CPU escribe 0, limpiar RX y rearmer bit0
                        if (S_AXI_WDATA[0] == 1'b0) begin
                            rx_pending    <= 1'b0;
                            ctrl_bit0_old <= 1'b0;
                        end
                    end

                    UART_DATA0: begin
                        if (S_AXI_WSTRB[0]) begin
                            uart_tx_reg <= S_AXI_WDATA[7:0];
                        end
                    end

                    UART_DATA1: begin
                        if (S_AXI_WSTRB[0]) begin
                            uart_rx_reg <= S_AXI_WDATA[7:0];
                        end
                    end

                    default: begin
                    end
                endcase
            end

            if (S_AXI_BVALID && S_AXI_BREADY) begin
                S_AXI_BVALID <= 1'b0;
            end

            //--------------------------------------------------
            // AXI READ
            //--------------------------------------------------
            if (!S_AXI_RVALID && S_AXI_ARVALID) begin
                S_AXI_ARREADY <= 1'b1;
                S_AXI_RVALID  <= 1'b1;
                S_AXI_RRESP   <= 2'b00;

                case (S_AXI_ARADDR)
                    UART_CTRL:
                        S_AXI_RDATA <= {30'b0, rx_pending, tx_start};

                    UART_DATA0:
                        S_AXI_RDATA <= {24'h0, uart_tx_reg};

                    UART_DATA1:
                        S_AXI_RDATA <= {24'h0, uart_rx_reg};

                    default:
                        S_AXI_RDATA <= 32'd0;
                endcase
            end

            if (S_AXI_RVALID && S_AXI_RREADY) begin
                S_AXI_RVALID <= 1'b0;
            end
        end
    end

endmodule
