`timescale 1ns / 1ps

module top_microprocesador (
    input  wire CLK100MHZ,
    input  wire reset,
    input  wire uart_rx,
    output wire uart_tx
);

    // =========================
    // Señales del core picorv32
    // =========================
    wire        mem_valid;
    wire        mem_instr;
    reg         mem_ready;
    wire [31:0] mem_addr;
    wire [31:0] mem_wdata;
    wire [ 3:0] mem_wstrb;
    reg  [31:0] mem_rdata;
    wire        trap;

    // =========================
    // Señales de la UART
    // =========================
    reg  [7:0] uart_tx_data;
    reg        uart_tx_req;
    reg        uart_rx_req;

    wire [7:0] uart_rx_data;
    wire       uart_rx_rdy;
    wire       uart_tx_rdy;
    wire       uart_tx_empty;
    wire       uart_rx_error;

    wire uart_rts;
    wire uart_cts;

    assign uart_cts = 1'b0;

    // =========================
    // Registros temporales de periféricos
    // =========================
    reg [31:0] leds_reg;

    // =========================
    // Mapa de memoria del instructivo
    // =========================
    wire sel_rom;
    wire sel_sw_btn;
    wire sel_leds;
    wire sel_uart_ctrl;
    wire sel_uart_data1;
    wire sel_uart_data2;
    wire sel_ram;

    assign sel_rom        = mem_valid && (mem_addr >= 32'h0000_0000) && (mem_addr <= 32'h0000_07FC);
    assign sel_sw_btn     = mem_valid && (mem_addr == 32'h0000_2000);
    assign sel_leds       = mem_valid && (mem_addr == 32'h0000_2004);
    assign sel_uart_ctrl  = mem_valid && (mem_addr == 32'h0000_2010);
    assign sel_uart_data1 = mem_valid && (mem_addr == 32'h0000_2018);
    assign sel_uart_data2 = mem_valid && (mem_addr == 32'h0000_201C);
    assign sel_ram        = mem_valid && (mem_addr >= 32'h0004_0000);

    // =========================
    // Instancia del núcleo RISC-V
    // =========================
    picorv32 cpu (
        .clk       (CLK100MHZ),
        .resetn    (~reset),
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

    // =========================
    // Instancia de la UART
    // =========================
    uart #(
        .DataLength      (8),
        .BaudRate        (9600),
        .FifoDepth       (8),
        .SystemClockFreq (100_000_000),
        .Parity          (1'b0),
        .ParityEven      (1'b0),
        .FlowControl     (1'b0)
    ) uart_inst (
        .i_rst_n    (~reset),
        .i_clk      (CLK100MHZ),

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
        .i_cts      (uart_cts),
        .o_rts      (uart_rts)
    );

    // =========================
    // Escritura de registros simples
    // =========================
    always @(posedge CLK100MHZ or posedge reset) begin
        if (reset) begin
            leds_reg <= 32'h0000_0000;
        end else begin
            if (sel_leds && |mem_wstrb) begin
                leds_reg <= mem_wdata;
            end
        end
    end
//--------------------------------------------------------
// =========================
// ROM (Block Memory Generator)
// =========================
wire [31:0] rom_data;

blk_mem_gen_0 rom (
    .clka   (CLK100MHZ),
    .ena (1'b1), //.ena(mem_valid)
    .addra  (mem_addr[11:2]),  // 1024 palabras → 10 bits + alineación
    .douta  (rom_data),
    .rsta   (reset)
    
);

// =========================
// RAM signals
// =========================
wire [31:0] ram_rdata;
wire        ram_we;
wire [31:0] ram_addr;

assign ram_addr = mem_addr - 32'h0004_0000;
assign ram_we = sel_ram && |mem_wstrb;

// =========================
// RAM (Block Memory Generator)
// =========================
blk_mem_gen_1 ram (
    .clka  (CLK100MHZ),
    .ena   (1'b1),

    .wea   (ram_we),
    .addra (ram_addr[16:2]),   // ajusta según tamaño
    .dina  (mem_wdata),
    .douta (ram_rdata)
);



    // =========================
    // Lectura/escritura memory-mapped
    // =========================
    always @(*) begin
        mem_ready   = 1'b0;
        mem_rdata   = 32'h0000_0000;

        uart_tx_data = 8'h00;
        uart_tx_req  = 1'b0;
        uart_rx_req  = 1'b0;

        if (mem_valid) begin
            // -------------------------
            // ROM
            // -------------------------
            if (sel_rom) begin
                mem_ready = 1'b1;
                // Temporal: instrucción NOP
                mem_rdata = rom_data;         //Antes estaba esto 32'h0000_0013;
            end


            // -------------------------
            // Switches/Botones
            // -------------------------
            else if (sel_sw_btn) begin
                mem_ready = 1'b1;
                // Temporal: sin switches aún
                mem_rdata = 32'h0000_0000;
            end

            // -------------------------
            // LEDs
            // -------------------------
            else if (sel_leds) begin
                mem_ready = 1'b1;
                if (mem_wstrb == 4'b0000)
                    mem_rdata = leds_reg;
            end

            // -------------------------
            // UART A - Ctrl
            // bit 0 = tx_rdy
            // bit 1 = rx_rdy
            // bit 2 = tx_empty
            // bit 3 = rx_error
            // -------------------------
            else if (sel_uart_ctrl) begin
                mem_ready = 1'b1;
                mem_rdata = {
                    28'b0,
                    uart_rx_error,
                    uart_tx_empty,
                    uart_rx_rdy,
                    uart_tx_rdy
                };
            end

            // -------------------------
            // UART A - Data 1
            // Escritura: TX
            // Lectura: RX
            // -------------------------
            else if (sel_uart_data1) begin
                mem_ready = 1'b1;

                // Escritura hacia UART
                if (|mem_wstrb) begin
                    uart_tx_data = mem_wdata[7:0];
                    uart_tx_req  = 1'b1;
                end
                // Lectura desde UART
                else begin
                    mem_rdata  = {24'h000000, uart_rx_data};
                    uart_rx_req = 1'b1;
                end
            end

            // -------------------------
            // UART A - Data 2
            // Temporalmente no usado
            // -------------------------
            else if (sel_uart_data2) begin
                mem_ready = 1'b1;
                mem_rdata = 32'h0000_0000;
            end

            // -------------------------
            // RAM
            // -------------------------
            
            else if (sel_ram) begin
                mem_ready = 1'b1;
            
                if (|mem_wstrb) begin
                    // escritura
                    mem_rdata = 32'h0000_0000;
                end else begin
                    // lectura
                    mem_rdata = ram_rdata;
                end
            end
            
            /*else if (sel_ram) begin
                mem_ready = 1'b1;
                // Temporal: RAM dummy
                mem_rdata = rom_data; //Antes estaba esto 32'h0000_0000
            end*/

            // -------------------------
            // Dirección no usada
            // -------------------------
            else begin
                mem_ready = 1'b1;
                mem_rdata = 32'h0000_0000;
            end
        end
    end

endmodule
