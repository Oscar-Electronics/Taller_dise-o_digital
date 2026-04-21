`timescale 1ns / 1ps

module top_microprocesador (
    input  wire CLK100MHZ,   // Pin E3
    input  wire reset_n,     // activo en bajo
    input  wire btn_n17,     // opcional, no usado aquí
    input  wire uart_rx,     // Pin C4
    output wire uart_tx      // Pin D4
);

    // =====================================================
    // Clock / Reset
    // =====================================================
    wire clk_stable;
    wire locked;
    wire sys_reset;

    clk_wiz_0 clk_inst (
        .clk_out1 (clk_stable),
        .resetn   (reset_n),
        .locked   (locked),
        .clk_in1  (CLK100MHZ)
    );

    assign sys_reset = ~locked;

    // =====================================================
    // PicoRV32 native memory interface
    // =====================================================
    wire        mem_valid;
    wire        mem_instr;
    wire        mem_ready;
    wire [31:0] mem_addr;
    wire [31:0] mem_wdata;
    wire [ 3:0] mem_wstrb;
    wire [31:0] mem_rdata;
    wire        trap;

    picorv32 cpu (
        .clk       (clk_stable),
        .resetn    (~sys_reset),
        .trap      (trap),
        .mem_valid (mem_valid),
        .mem_instr (mem_instr),
        .mem_ready (mem_ready),
        .mem_addr  (mem_addr),
        .mem_wdata (mem_wdata),
        .mem_wstrb (mem_wstrb),
        .mem_rdata (mem_rdata),
        .irq       (32'b0),
        .eoi       ()
    );

    // =====================================================
    // AXI4-Lite Master wires from bridge
    // =====================================================
    wire [31:0] m_axi_awaddr;
    wire        m_axi_awvalid;
    wire        m_axi_awready;

    wire [31:0] m_axi_wdata;
    wire [ 3:0] m_axi_wstrb;
    wire        m_axi_wvalid;
    wire        m_axi_wready;

    wire [ 1:0] m_axi_bresp;
    wire        m_axi_bvalid;
    wire        m_axi_bready;

    wire [31:0] m_axi_araddr;
    wire        m_axi_arvalid;
    wire        m_axi_arready;

    wire [31:0] m_axi_rdata;
    wire [ 1:0] m_axi_rresp;
    wire        m_axi_rvalid;
    wire        m_axi_rready;

    // =====================================================
    // Bridge: PicoRV32 -> AXI4-Lite master
    // =====================================================
    picorv32_to_axilite_master bridge_axi (
        .clk            (clk_stable),
        .resetn         (~sys_reset),

        .mem_valid      (mem_valid),
        .mem_instr      (mem_instr),
        .mem_ready      (mem_ready),
        .mem_addr       (mem_addr),
        .mem_wdata      (mem_wdata),
        .mem_wstrb      (mem_wstrb),
        .mem_rdata      (mem_rdata),

        .M_AXI_AWADDR   (m_axi_awaddr),
        .M_AXI_AWPROT   (), // no se usa
        .M_AXI_AWVALID  (m_axi_awvalid),
        .M_AXI_AWREADY  (m_axi_awready),

        .M_AXI_WDATA    (m_axi_wdata),
        .M_AXI_WSTRB    (m_axi_wstrb),
        .M_AXI_WVALID   (m_axi_wvalid),
        .M_AXI_WREADY   (m_axi_wready),

        .M_AXI_BRESP    (m_axi_bresp),
        .M_AXI_BVALID   (m_axi_bvalid),
        .M_AXI_BREADY   (m_axi_bready),

        .M_AXI_ARADDR   (m_axi_araddr),
        .M_AXI_ARPROT   (), // no se usa
        .M_AXI_ARVALID  (m_axi_arvalid),
        .M_AXI_ARREADY  (m_axi_arready),

        .M_AXI_RDATA    (m_axi_rdata),
        .M_AXI_RRESP    (m_axi_rresp),
        .M_AXI_RVALID   (m_axi_rvalid),
        .M_AXI_RREADY   (m_axi_rready)
    );

    // =====================================================
    // Decodificación de direcciones
    // =====================================================
    // ROM  : 0x0000_0000 - 0x0000_07FF
    // UART : 0x0000_2010 - 0x0000_201F
    // RAM  : 0x0004_0000 en adelante

    wire sel_rom_aw  = (m_axi_awaddr >= 32'h0000_0000) && (m_axi_awaddr <= 32'h0000_07FF);
    wire sel_uart_aw = (m_axi_awaddr >= 32'h0000_2010) && (m_axi_awaddr <= 32'h0000_201F);
    wire sel_ram_aw  = (m_axi_awaddr >= 32'h0004_0000);

    wire sel_rom_ar  = (m_axi_araddr >= 32'h0000_0000) && (m_axi_araddr <= 32'h0000_07FF);
    wire sel_uart_ar = (m_axi_araddr >= 32'h0000_2010) && (m_axi_araddr <= 32'h0000_201F);
    wire sel_ram_ar  = (m_axi_araddr >= 32'h0004_0000);

    // =====================================================
    // Registrar qué esclavo respondió
    // =====================================================
    localparam RESP_ROM  = 2'd0;
    localparam RESP_RAM  = 2'd1;
    localparam RESP_UART = 2'd2;

    reg [1:0] write_sel;
    reg [1:0] read_sel;

    always @(posedge clk_stable or posedge sys_reset) begin
        if (sys_reset) begin
            write_sel <= RESP_ROM;
            read_sel  <= RESP_ROM;
        end else begin
            if (m_axi_awvalid && m_axi_awready) begin
                if (sel_ram_aw)
                    write_sel <= RESP_RAM;
                else if (sel_uart_aw)
                    write_sel <= RESP_UART;
                else
                    write_sel <= RESP_ROM;
            end

            if (m_axi_arvalid && m_axi_arready) begin
                if (sel_ram_ar)
                    read_sel <= RESP_RAM;
                else if (sel_uart_ar)
                    read_sel <= RESP_UART;
                else
                    read_sel <= RESP_ROM;
            end
        end
    end

    // =====================================================
    // Señales ROM AXI-Lite
    // =====================================================
    wire        rom_awready;
    wire        rom_wready;
    wire [1:0]  rom_bresp;
    wire        rom_bvalid;
    wire        rom_arready;
    wire [31:0] rom_rdata;
    wire [1:0]  rom_rresp;
    wire        rom_rvalid;

    // =====================================================
    // Señales RAM AXI-Lite
    // =====================================================
    wire        ram_awready;
    wire        ram_wready;
    wire [1:0]  ram_bresp;
    wire        ram_bvalid;
    wire        ram_arready;
    wire [31:0] ram_rdata;
    wire [1:0]  ram_rresp;
    wire        ram_rvalid;

    // =====================================================
    // Señales UART AXI-Lite
    // =====================================================
    wire        uart_awready;
    wire        uart_wready;
    wire [1:0]  uart_bresp;
    wire        uart_bvalid;
    wire        uart_arready;
    wire [31:0] uart_rdata;
    wire [1:0]  uart_rresp;
    wire        uart_rvalid;

    // =====================================================
    // Multiplexación de respuestas al maestro
    // =====================================================
    assign m_axi_awready =
        sel_ram_aw  ? ram_awready  :
        sel_uart_aw ? uart_awready :
                      rom_awready;

    assign m_axi_wready =
        sel_ram_aw  ? ram_wready  :
        sel_uart_aw ? uart_wready :
                      rom_wready;

    assign m_axi_arready =
        sel_ram_ar  ? ram_arready  :
        sel_uart_ar ? uart_arready :
                      rom_arready;

    assign m_axi_bvalid =
        (write_sel == RESP_RAM)  ? ram_bvalid  :
        (write_sel == RESP_UART) ? uart_bvalid :
                                   rom_bvalid;

    assign m_axi_bresp =
        (write_sel == RESP_RAM)  ? ram_bresp  :
        (write_sel == RESP_UART) ? uart_bresp :
                                   rom_bresp;

    assign m_axi_rvalid =
        (read_sel == RESP_RAM)  ? ram_rvalid  :
        (read_sel == RESP_UART) ? uart_rvalid :
                                  rom_rvalid;

    assign m_axi_rresp =
        (read_sel == RESP_RAM)  ? ram_rresp  :
        (read_sel == RESP_UART) ? uart_rresp :
                                  rom_rresp;

    assign m_axi_rdata =
        (read_sel == RESP_RAM)  ? ram_rdata  :
        (read_sel == RESP_UART) ? uart_rdata :
                                  rom_rdata;

    // =====================================================
    // ROM AXI4-Lite slave
    // =====================================================
    blk_mem_gen_0 rom (
        .s_aclk         (clk_stable),
        .s_aresetn      (~sys_reset),

        .s_axi_awaddr   (m_axi_awaddr),
        .s_axi_awvalid  (m_axi_awvalid && sel_rom_aw),
        .s_axi_awready  (rom_awready),

        .s_axi_wdata    (m_axi_wdata),
        .s_axi_wstrb    (m_axi_wstrb),
        .s_axi_wvalid   (m_axi_wvalid && sel_rom_aw),
        .s_axi_wready   (rom_wready),

        .s_axi_bresp    (rom_bresp),
        .s_axi_bvalid   (rom_bvalid),
        .s_axi_bready   (m_axi_bready && (write_sel == RESP_ROM)),

        .s_axi_araddr   (m_axi_araddr),
        .s_axi_arvalid  (m_axi_arvalid && sel_rom_ar),
        .s_axi_arready  (rom_arready),

        .s_axi_rdata    (rom_rdata),
        .s_axi_rresp    (rom_rresp),
        .s_axi_rvalid   (rom_rvalid),
        .s_axi_rready   (m_axi_rready && (read_sel == RESP_ROM))
    );

    // =====================================================
    // RAM AXI4-Lite slave
    // =====================================================
    blk_mem_gen_1 ram (
        .s_aclk         (clk_stable),
        .s_aresetn      (~sys_reset),

        .s_axi_awaddr   (m_axi_awaddr),
        .s_axi_awvalid  (m_axi_awvalid && sel_ram_aw),
        .s_axi_awready  (ram_awready),

        .s_axi_wdata    (m_axi_wdata),
        .s_axi_wstrb    (m_axi_wstrb),
        .s_axi_wvalid   (m_axi_wvalid && sel_ram_aw),
        .s_axi_wready   (ram_wready),

        .s_axi_bresp    (ram_bresp),
        .s_axi_bvalid   (ram_bvalid),
        .s_axi_bready   (m_axi_bready && (write_sel == RESP_RAM)),

        .s_axi_araddr   (m_axi_araddr),
        .s_axi_arvalid  (m_axi_arvalid && sel_ram_ar),
        .s_axi_arready  (ram_arready),

        .s_axi_rdata    (ram_rdata),
        .s_axi_rresp    (ram_rresp),
        .s_axi_rvalid   (ram_rvalid),
        .s_axi_rready   (m_axi_rready && (read_sel == RESP_RAM))
    );

    // =====================================================
    // UART AXI4-Lite slave
    // Se le pasa dirección local restando la base 0x0000_2010
    // =====================================================
    uart_axi_lite_wrapper uart_axi (
        .s_aclk         (clk_stable),
        .s_aresetn      (~sys_reset),

        .s_axi_awaddr   (m_axi_awaddr - 32'h0000_2010),
        .s_axi_awvalid  (m_axi_awvalid && sel_uart_aw),
        .s_axi_awready  (uart_awready),

        .s_axi_wdata    (m_axi_wdata),
        .s_axi_wstrb    (m_axi_wstrb),
        .s_axi_wvalid   (m_axi_wvalid && sel_uart_aw),
        .s_axi_wready   (uart_wready),

        .s_axi_bresp    (uart_bresp),
        .s_axi_bvalid   (uart_bvalid),
        .s_axi_bready   (m_axi_bready && (write_sel == RESP_UART)),

        .s_axi_araddr   (m_axi_araddr - 32'h0000_2010),
        .s_axi_arvalid  (m_axi_arvalid && sel_uart_ar),
        .s_axi_arready  (uart_arready),

        .s_axi_rdata    (uart_rdata),
        .s_axi_rresp    (uart_rresp),
        .s_axi_rvalid   (uart_rvalid),
        .s_axi_rready   (m_axi_rready && (read_sel == RESP_UART)),

        .uart_rx        (uart_rx),
        .uart_tx        (uart_tx)
    );

endmodule