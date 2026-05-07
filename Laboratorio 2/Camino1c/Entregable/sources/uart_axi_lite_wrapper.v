`timescale 1ns / 1ps

module uart_axi_lite_wrapper (
    input  wire        s_aclk,
    input  wire        s_aresetn,

    // AXI WRITE
    input  wire [31:0] s_axi_awaddr,
    input  wire        s_axi_awvalid,
    output reg         s_axi_awready,

    input  wire [31:0] s_axi_wdata,
    input  wire [3:0]  s_axi_wstrb,
    input  wire        s_axi_wvalid,
    output reg         s_axi_wready,

    output reg  [1:0]  s_axi_bresp,
    output reg         s_axi_bvalid,
    input  wire        s_axi_bready,

    // AXI READ
    input  wire [31:0] s_axi_araddr,
    input  wire        s_axi_arvalid,
    output reg         s_axi_arready,

    output reg  [31:0] s_axi_rdata,
    output reg  [1:0]  s_axi_rresp,
    output reg         s_axi_rvalid,
    input  wire        s_axi_rready,

    // UART
    input  wire        uart_rx,
    output wire        uart_tx
);

    // ================= REGISTROS =================
    localparam ADDR_CTRL  = 8'h10;
    localparam ADDR_DATA1 = 8'h18;
    localparam ADDR_DATA2 = 8'h1C;

    reg [31:0] ctrl_reg;
    reg [31:0] tx_data_reg;
    reg [31:0] rx_data_reg;

    reg  [7:0] uart_tx_byte;
    reg        uart_tx_start;
    wire       uart_tx_ready;

    wire [7:0] uart_rx_byte;
    wire       uart_rx_valid;

    // ================= UART =================
    uart #(
        .SystemClockFreq(100_000_000),
        .BaudRate(9600)
    ) uart_inst (
        .i_rst_n   (s_aresetn),
        .i_clk     (s_aclk),
        .i_tx_data (uart_tx_byte),
        .i_tx_req  (uart_tx_start),
        .o_tx_rdy  (uart_tx_ready),
        .o_rx_data (uart_rx_byte),
        .o_rx_rdy  (uart_rx_valid),
        .i_rx_req  (1'b1),
        .i_rx      (uart_rx),
        .o_tx      (uart_tx),
        .o_tx_empty(),
        .o_rx_error(),
        .i_cts     (1'b0),
        .o_rts     ()
    );

    // ================= WRITE FSM =================
    localparam W_IDLE = 0, W_RESP = 1;
    reg wstate;

    always @(posedge s_aclk) begin
        if (!s_aresetn) begin
            s_axi_awready <= 0;
            s_axi_wready  <= 0;
            s_axi_bvalid  <= 0;
            s_axi_bresp   <= 0;
            wstate <= W_IDLE;
            uart_tx_start <= 0;
        end else begin
            uart_tx_start <= 0;

            case (wstate)
                W_IDLE: begin
                    s_axi_awready <= 1;
                    s_axi_wready  <= 1;

                    if (s_axi_awvalid && s_axi_wvalid) begin
                        s_axi_awready <= 0;
                        s_axi_wready  <= 0;

                        case (s_axi_awaddr[7:0])
                            ADDR_DATA1: begin
                                tx_data_reg <= s_axi_wdata;
                            end

                            ADDR_CTRL: begin
                                ctrl_reg <= s_axi_wdata;

                                if (s_axi_wdata[0] && uart_tx_ready) begin
                                    uart_tx_byte <= tx_data_reg[7:0];
                                    uart_tx_start <= 1;
                                end
                            end
                        endcase

                        s_axi_bvalid <= 1;
                        s_axi_bresp  <= 2'b00;
                        wstate <= W_RESP;
                    end
                end

                W_RESP: begin
                    if (s_axi_bready) begin
                        s_axi_bvalid <= 0;
                        wstate <= W_IDLE;
                    end
                end
            endcase
        end
    end

    // ================= READ FSM =================
    localparam R_IDLE = 0, R_DATA = 1;
    reg rstate;

    always @(posedge s_aclk) begin
        if (!s_aresetn) begin
            s_axi_arready <= 0;
            s_axi_rvalid  <= 0;
            s_axi_rdata   <= 0;
            s_axi_rresp   <= 0;
            rstate <= R_IDLE;
        end else begin
            case (rstate)
                R_IDLE: begin
                    s_axi_arready <= 1;

                    if (s_axi_arvalid) begin
                        s_axi_arready <= 0;

                        case (s_axi_araddr[7:0])
                            ADDR_CTRL:  s_axi_rdata <= ctrl_reg;
                            ADDR_DATA1: s_axi_rdata <= tx_data_reg;
                            ADDR_DATA2: s_axi_rdata <= rx_data_reg;
                            default:    s_axi_rdata <= 32'h0;
                        endcase

                        s_axi_rvalid <= 1;
                        s_axi_rresp  <= 2'b00;
                        rstate <= R_DATA;
                    end
                end

                R_DATA: begin
                    if (s_axi_rready) begin
                        s_axi_rvalid <= 0;
                        rstate <= R_IDLE;
                    end
                end
            endcase
        end
    end

    // ================= RX =================
    always @(posedge s_aclk) begin
        if (!s_aresetn) begin
            rx_data_reg <= 0;
        end else begin
            if (uart_rx_valid) begin
                rx_data_reg <= {24'h0, uart_rx_byte};
                ctrl_reg[1] <= 1;  // flag RX disponible
            end
        end
    end

endmodule
