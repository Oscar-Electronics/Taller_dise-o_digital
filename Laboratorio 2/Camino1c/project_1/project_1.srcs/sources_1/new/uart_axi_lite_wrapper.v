// uart_axi_lite_wrapper.v (corregido)
module uart_axi_lite_wrapper (
    input  wire        s_aclk,
    input  wire        s_aresetn,

    // Write address channel
    input  wire [31:0] s_axi_awaddr,
    input  wire        s_axi_awvalid,
    output reg         s_axi_awready,

    // Write data channel
    input  wire [31:0] s_axi_wdata,
    input  wire [3:0]  s_axi_wstrb,
    input  wire        s_axi_wvalid,
    output reg         s_axi_wready,

    // Write response channel
    output reg  [1:0]  s_axi_bresp,
    output reg         s_axi_bvalid,
    input  wire        s_axi_bready,

    // Read address channel
    input  wire [31:0] s_axi_araddr,
    input  wire        s_axi_arvalid,
    output reg         s_axi_arready,

    // Read data channel
    output reg  [31:0] s_axi_rdata,
    output reg  [1:0]  s_axi_rresp,
    output reg         s_axi_rvalid,
    input  wire        s_axi_rready,

    // UART pins
    input  wire        uart_rx,
    output wire        uart_tx
);

    localparam ADDR_CTRL  = 8'h10;   // 0x2010
    localparam ADDR_DATA1 = 8'h18;   // 0x2018 (TX)
    localparam ADDR_DATA2 = 8'h1C;   // 0x201C (RX)

    // Registros internos
    reg [31:0] ctrl_reg;
    reg [31:0] tx_data_reg;
    reg [31:0] rx_data_reg;

    // Señales para el módulo UART
    reg  [7:0] uart_tx_byte;
    reg        uart_tx_start;
    wire       uart_tx_busy;   // asumiendo que o_tx_rdy = 1 cuando está listo
    wire [7:0] uart_rx_byte;   // ¡esto debe ser wire, no reg!
    wire       uart_rx_valid;

    // Máquinas de estado
    reg [1:0]  write_state;
    reg [31:0] awaddr_reg;
    reg [1:0]  read_state;
    reg [31:0] araddr_reg;

    // Instanciación del UART (ajusta según los nombres reales de tus puertos)
    uart #(
        .SystemClockFreq(100_000_000),
        .BaudRate(9600)
    ) uart_inst (
        .i_rst_n   (s_aresetn),
        .i_clk     (s_aclk),
        .i_tx_data (uart_tx_byte),
        .o_rx_data (uart_rx_byte),   // uart_rx_byte es wire, correcto
        .i_tx_req  (uart_tx_start),
        .i_rx_req  (1'b1),            // siempre habilitado para recibir
        .o_rx_rdy  (uart_rx_valid),
        .o_tx_rdy  (uart_tx_busy),    // busy = ~ready
        .o_tx_empty(),
        .o_rx_error(),
        .i_rx      (uart_rx),
        .o_tx      (uart_tx),
        .i_cts     (1'b0),
        .o_rts     ()
    );

    // --------------------------------------------------------------
    // Canal de escritura AXI (máquina de estados)
    // --------------------------------------------------------------
    always @(posedge s_aclk or negedge s_aresetn) begin
        if (!s_aresetn) begin
            write_state   <= 2'b00;
            awaddr_reg    <= 32'h0;
            s_axi_awready <= 1'b0;
            s_axi_wready  <= 1'b0;
            s_axi_bvalid  <= 1'b0;
            s_axi_bresp   <= 2'b00;
            ctrl_reg      <= 32'h0;
            tx_data_reg   <= 32'h0;
            uart_tx_start <= 1'b0;
            uart_tx_byte  <= 8'h0;
        end else begin
            s_axi_awready <= 1'b0;
            s_axi_wready  <= 1'b0;
            uart_tx_start <= 1'b0;   // pulso de un ciclo

            case (write_state)
                2'b00: begin
                    if (s_axi_awvalid && s_axi_wvalid) begin
                        awaddr_reg <= s_axi_awaddr;
                        process_write(s_axi_awaddr, s_axi_wdata, s_axi_wstrb);
                        s_axi_awready <= 1'b1;
                        s_axi_wready  <= 1'b1;
                        write_state   <= 2'b10;
                    end else if (s_axi_awvalid) begin
                        awaddr_reg <= s_axi_awaddr;
                        s_axi_awready <= 1'b1;
                        write_state   <= 2'b01;
                    end
                end
                2'b01: begin
                    if (s_axi_wvalid) begin
                        process_write(awaddr_reg, s_axi_wdata, s_axi_wstrb);
                        s_axi_wready <= 1'b1;
                        write_state  <= 2'b10;
                    end
                end
                2'b10: begin
                    s_axi_bvalid <= 1'b1;
                    s_axi_bresp  <= 2'b00;
                    if (s_axi_bready) begin
                        s_axi_bvalid <= 1'b0;
                        write_state  <= 2'b00;
                    end
                end
                default: write_state <= 2'b00;
            endcase

            // Limpiar bit send cuando la transmisión termina
            if (ctrl_reg[0] && ~uart_tx_busy) begin
                ctrl_reg[0] <= 1'b0;
            end
        end
    end

    task automatic process_write(input [31:0] addr, input [31:0] wdata, input [3:0] wstrb);
        case (addr[7:0])
            ADDR_CTRL: begin
                if (wstrb[0]) begin
                    ctrl_reg[0] <= wdata[0];
                    if (wdata[0]) begin
                        uart_tx_byte <= tx_data_reg[7:0];
                        uart_tx_start <= 1'b1;
                    end
                end
            end
            ADDR_DATA1: begin
                if (wstrb[0]) tx_data_reg[7:0]   <= wdata[7:0];
                if (wstrb[1]) tx_data_reg[15:8]  <= wdata[15:8];
                if (wstrb[2]) tx_data_reg[23:16] <= wdata[23:16];
                if (wstrb[3]) tx_data_reg[31:24] <= wdata[31:24];
            end
        endcase
    endtask

    // --------------------------------------------------------------
    // Canal de lectura AXI
    // --------------------------------------------------------------
    always @(posedge s_aclk or negedge s_aresetn) begin
        if (!s_aresetn) begin
            read_state   <= 2'b00;
            araddr_reg   <= 32'h0;
            s_axi_arready <= 1'b0;
            s_axi_rvalid  <= 1'b0;
            s_axi_rdata   <= 32'h0;
            s_axi_rresp   <= 2'b00;
            rx_data_reg   <= 32'h0;
            ctrl_reg[1]   <= 1'b0;
        end else begin
            s_axi_arready <= 1'b0;

            // Recepción de nuevos datos
            if (uart_rx_valid) begin
                rx_data_reg <= {24'h0, uart_rx_byte};
                ctrl_reg[1] <= 1'b1;
            end

            case (read_state)
                2'b00: begin
                    if (s_axi_arvalid) begin
                        araddr_reg <= s_axi_araddr;
                        s_axi_arready <= 1'b1;
                        read_state <= 2'b01;
                    end
                end
                2'b01: begin
                    case (araddr_reg[7:0])
                        ADDR_CTRL:  s_axi_rdata <= ctrl_reg;
                        ADDR_DATA1: s_axi_rdata <= tx_data_reg;
                        ADDR_DATA2: begin
                            s_axi_rdata <= rx_data_reg;
                            ctrl_reg[1] <= 1'b0;
                        end
                        default:    s_axi_rdata <= 32'h0;
                    endcase
                    s_axi_rresp <= 2'b00;
                    s_axi_rvalid <= 1'b1;
                    read_state <= 2'b10;
                end
                2'b10: begin
                    if (s_axi_rready) begin
                        s_axi_rvalid <= 1'b0;
                        read_state <= 2'b00;
                    end
                end
                default: read_state <= 2'b00;
            endcase
        end
    end

endmodule