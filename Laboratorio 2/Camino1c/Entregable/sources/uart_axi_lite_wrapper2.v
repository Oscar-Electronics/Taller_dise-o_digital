`timescale 1ns / 1ps


module uart_axi_lite_wrapper2(
    input  wire        s_aclk,
    input  wire        s_aresetn,
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
    input  wire [31:0] s_axi_araddr,
    input  wire        s_axi_arvalid,
    output reg         s_axi_arready,
    output reg  [31:0] s_axi_rdata,
    output reg  [1:0]  s_axi_rresp,
    output reg         s_axi_rvalid,
    input  wire        s_axi_rready,
    input  wire        uart_rx,
    output wire        uart_tx
);
    localparam ADDR_CTRL  = 8'h10;
    localparam ADDR_DATA1 = 8'h18;
    localparam ADDR_DATA2 = 8'h1C;

    // Registros internos del periférico
    reg [31:0] ctrl_reg;      // bit0: tx_pendiente, bit1: rx_ready
    reg [31:0] tx_data_reg;   // dato a enviar (se escribe aquí antes de enviar)
    reg [31:0] rx_data_reg;   // último byte recibido
    reg  [7:0] uart_tx_byte;  // byte que se pasa a la UART
    reg        uart_tx_start; // pulso de inicio de transmisión
    wire       uart_tx_rdy;   // '1' cuando la UART puede aceptar un byte
    wire [7:0] uart_rx_byte;
    wire       uart_rx_valid; // '1' por un ciclo cuando hay un nuevo byte recibido
    reg        uart_rx_req;   // pulso para hacer pop del FIFO RX (solo cuando el CPU lee DATA2)

    // Instancia de la UART de oskarwire (configurada a 9600 baudios con reloj 100 MHz)
    uart #(
        .SystemClockFreq(100_000_000),
        .BaudRate(9600)
    ) uart_inst (
        .i_rst_n   (s_aresetn),
        .i_clk     (s_aclk),
        .i_tx_data (uart_tx_byte),
        .o_rx_data (uart_rx_byte),
        .i_tx_req  (uart_tx_start),
        .i_rx_req  (uart_rx_req),
        .o_rx_rdy  (uart_rx_valid),
        .o_tx_rdy  (uart_tx_rdy),
        .o_tx_empty(),
        .o_rx_error(),
        .i_rx      (uart_rx),
        .o_tx      (uart_tx),
        .i_cts     (1'b0),
        .o_rts     ()
    );

    // --------------------------------------------------------------
    // FSM de escritura (3 estados: IDLE, WAIT_DATA, RESPOND)
    // --------------------------------------------------------------
    reg [1:0]  write_state;
    reg [31:0] awaddr_reg;   // guarda la dirección cuando AW llega antes que W

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
            uart_rx_req   <= 1'b0;
        end else begin
            // Por defecto, desactivamos los enables de handshake y los pulsos
            s_axi_awready <= 1'b0;
            s_axi_wready  <= 1'b0;
            uart_tx_start <= 1'b0;
            uart_rx_req   <= 1'b0;

            // Autolimpieza del bit tx_start: cuando la UART indica que está lista (tx_rdy=1)
            // y el bit estaba puesto, lo bajamos.
            if (ctrl_reg[0] && uart_tx_rdy)
                ctrl_reg[0] <= 1'b0;

            case (write_state)
                2'b00: begin  // IDLE
                    if (s_axi_awvalid && s_axi_wvalid) begin
                        // Caso fácil: AW y W llegan en el mismo ciclo
                        awaddr_reg    <= s_axi_awaddr;
                        s_axi_awready <= 1'b1;
                        s_axi_wready  <= 1'b1;
                        // Procesar escritura inmediatamente
                        case (s_axi_awaddr[7:0])
                            ADDR_CTRL: begin
                                if (s_axi_wstrb[0]) begin
                                    ctrl_reg[0] <= s_axi_wdata[0];
                                    if (s_axi_wdata[0]) begin
                                        uart_tx_byte  <= tx_data_reg[7:0];
                                        uart_tx_start <= 1'b1;
                                    end
                                end
                            end
                            ADDR_DATA1: begin
                                if (s_axi_wstrb[0]) tx_data_reg[ 7: 0] <= s_axi_wdata[ 7: 0];
                                if (s_axi_wstrb[1]) tx_data_reg[15: 8] <= s_axi_wdata[15: 8];
                                if (s_axi_wstrb[2]) tx_data_reg[23:16] <= s_axi_wdata[23:16];
                                if (s_axi_wstrb[3]) tx_data_reg[31:24] <= s_axi_wdata[31:24];
                            end
                        endcase
                        write_state <= 2'b10;  // saltar a RESPOND
                    end else if (s_axi_awvalid) begin
                        // Solo AW, debe esperar a W más tarde
                        awaddr_reg    <= s_axi_awaddr;
                        s_axi_awready <= 1'b1;
                        write_state   <= 2'b01;
                    end
                end
                2'b01: begin  // WAIT_DATA
                    if (s_axi_wvalid) begin
                        s_axi_wready <= 1'b1;
                        case (awaddr_reg[7:0])
                            ADDR_CTRL: begin
                                if (s_axi_wstrb[0]) begin
                                    ctrl_reg[0] <= s_axi_wdata[0];
                                    if (s_axi_wdata[0]) begin
                                        uart_tx_byte  <= tx_data_reg[7:0];
                                        uart_tx_start <= 1'b1;
                                    end
                                end
                            end
                            ADDR_DATA1: begin
                                if (s_axi_wstrb[0]) tx_data_reg[ 7: 0] <= s_axi_wdata[ 7: 0];
                                if (s_axi_wstrb[1]) tx_data_reg[15: 8] <= s_axi_wdata[15: 8];
                                if (s_axi_wstrb[2]) tx_data_reg[23:16] <= s_axi_wdata[23:16];
                                if (s_axi_wstrb[3]) tx_data_reg[31:24] <= s_axi_wdata[31:24];
                            end
                        endcase
                        write_state <= 2'b10;
                    end
                end
                2'b10: begin  // RESPOND
                    s_axi_bvalid <= 1'b1;
                    s_axi_bresp  <= 2'b00;
                    if (s_axi_bready) begin
                        s_axi_bvalid <= 1'b0;
                        write_state  <= 2'b00;
                    end
                end
                default: write_state <= 2'b00;
            endcase
        end
    end

    // --------------------------------------------------------------
    // FSM de lectura (3 estados: IDLE, PREPARE_DATA, WAIT_RREADY)
    // --------------------------------------------------------------
    reg [1:0]  read_state;
    reg [31:0] araddr_reg;

    always @(posedge s_aclk or negedge s_aresetn) begin
        if (!s_aresetn) begin
            read_state    <= 2'b00;
            araddr_reg    <= 32'h0;
            s_axi_arready <= 1'b0;
            s_axi_rvalid  <= 1'b0;
            s_axi_rdata   <= 32'h0;
            s_axi_rresp   <= 2'b00;
            rx_data_reg   <= 32'h0;
            ctrl_reg[1]   <= 1'b0;
        end else begin
            s_axi_arready <= 1'b0;

            // Si la UART tiene un nuevo byte, lo almacenamos y ponemos flag RX ready
            if (uart_rx_valid) begin
                rx_data_reg <= {24'h0, uart_rx_byte};
                ctrl_reg[1] <= 1'b1;
            end

            case (read_state)
                2'b00: begin  // IDLE
                    if (s_axi_arvalid) begin
                        araddr_reg    <= s_axi_araddr;
                        s_axi_arready <= 1'b1;
                        read_state    <= 2'b01;
                    end
                end
                2'b01: begin  // PREPARE_DATA
                    // Seleccionamos qué registro devolver según la dirección
                    case (araddr_reg[7:0])
                        ADDR_CTRL:  s_axi_rdata <= ctrl_reg;
                        ADDR_DATA1: s_axi_rdata <= tx_data_reg;
                        ADDR_DATA2: begin
                            s_axi_rdata <= rx_data_reg;
                            ctrl_reg[1] <= 1'b0;      // el byte ya fue leído
                            uart_rx_req <= 1'b1;      // hacemos pop del FIFO RX (si hay más)
                        end
                        default: s_axi_rdata <= 32'h0;
                    endcase
                    s_axi_rresp  <= 2'b00;
                    s_axi_rvalid <= 1'b1;
                    read_state   <= 2'b10;
                end
                2'b10: begin  // WAIT_RREADY
                    if (s_axi_rready) begin
                        s_axi_rvalid <= 1'b0;
                        read_state   <= 2'b00;
                    end
                end
                default: read_state <= 2'b00;
            endcase
        end
    end
endmodule