`timescale 1ns / 1ps

module top_microprocesador (
    input  wire CLK100MHZ,      // Pin E3
    input  wire reset_n,        // Pin C12, activo en bajo
    input  wire btn_n17,        // Pin N17
    input  wire uart_rx,        // Pin C4
    output wire uart_tx,        // Pin D4

    // SPI ADXL362 - acelerometro Nexys 4 DDR
    output wire accel_mosi,
    input  wire accel_miso,
    output wire accel_sclk,
    output wire accel_cs_n
);

    //============================================================
    // Clocking Wizard
    //============================================================

    wire clk_stable;
    wire locked;
    wire sys_reset;

    clk_wiz_0 clk_inst (
        .clk_out1(clk_stable),
        .resetn  (reset_n),
        .locked  (locked),
        .clk_in1 (CLK100MHZ)
    );

    assign sys_reset = ~locked;

    //============================================================
    // Senales PicoRV32
    //============================================================

    wire        mem_valid;
    wire        mem_instr;
    reg         mem_ready;
    wire [31:0] mem_addr;
    wire [31:0] mem_wdata;
    wire [3:0]  mem_wstrb;
    reg  [31:0] mem_rdata;
    wire        trap;

    //============================================================
    // Senales UART
    //============================================================

    reg  [7:0] uart_tx_data;
    reg        uart_tx_req;
    reg        uart_rx_req;

    wire [7:0] uart_rx_data;
    wire       uart_rx_rdy;
    wire       uart_tx_rdy;
    wire       uart_tx_empty;
    wire       uart_rx_error;

    //============================================================
    // Senales SPI ADXL362
    //============================================================

    wire [31:0] spi_rdata;
    wire        spi_ready;

    //============================================================
    // Registro LEDs
    //============================================================

    reg [31:0] leds_reg;

    //============================================================
    // Mapa de memoria
    //============================================================

    wire sel_rom        = mem_valid && (mem_addr >= 32'h0000_0000) && (mem_addr <= 32'h0000_07FC);
    wire sel_sw_btn     = mem_valid && (mem_addr == 32'h0000_2000);
    wire sel_leds       = mem_valid && (mem_addr == 32'h0000_2004);
    wire sel_uart_ctrl  = mem_valid && (mem_addr == 32'h0000_2010);
    wire sel_uart_data1 = mem_valid && (mem_addr == 32'h0000_2018);

    // SPI:
    // 0x0000_2020 -> registro de control
    // 0x0000_2028 -> registro de datos XY
    // 0x0000_202C -> registro de datos Z
    wire sel_spi_ctrl  = mem_valid && (mem_addr == 32'h0000_2020);
    wire sel_spi_data1 = mem_valid && (mem_addr == 32'h0000_2028);
    wire sel_spi_data2 = mem_valid && (mem_addr == 32'h0000_202C);
    wire sel_spi       = sel_spi_ctrl || sel_spi_data1 || sel_spi_data2;

    wire sel_ram        = mem_valid && (mem_addr >= 32'h0004_0000);

    //============================================================
    // Pipeline para latencia de ROM y RAM
    //============================================================

    reg rom_pending;
    reg ram_pending;

    always @(posedge clk_stable or posedge sys_reset) begin
        if (sys_reset) begin
            rom_pending <= 1'b0;
            ram_pending <= 1'b0;
        end else begin
            if (sel_rom && !rom_pending)
                rom_pending <= 1'b1;
            else
                rom_pending <= 1'b0;

            if (sel_ram && !ram_pending)
                ram_pending <= 1'b1;
            else
                ram_pending <= 1'b0;
        end
    end

    //============================================================
    // CPU PicoRV32
    //============================================================

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

    //============================================================
    // UART
    //============================================================

    uart #(
        .SystemClockFreq (100_000_000),
        .BaudRate        (9600)
    ) uart_inst (
        .i_rst_n    (~sys_reset),
        .i_clk      (clk_stable),
        .i_tx_data  (uart_tx_data),
        .o_rx_data  (uart_rx_data),
        .i_tx_req   (uart_tx_req),
        .i_rx_req   (uart_rx_req),
        .o_rx_rdy   (uart_rx_rdy),
        .o_tx_rdy   (uart_tx_rdy),
        .i_rx       (uart_rx),
        .o_tx       (uart_tx),
        .i_cts      (1'b0),
        .o_rts      ()
    );

    //============================================================
    // SPI ADXL362
    //============================================================

    spi_adxl362 spi_adxl362_inst (
        .clk       (clk_stable),
        .resetn    (~sys_reset),

        .mem_valid (sel_spi),
        .mem_addr  (mem_addr),
        .mem_wdata (mem_wdata),
        .mem_wstrb (mem_wstrb),
        .mem_rdata (spi_rdata),
        .mem_ready (spi_ready),

        .spi_sclk  (accel_sclk),
        .spi_mosi  (accel_mosi),
        .spi_miso  (accel_miso),
        .spi_cs_n  (accel_cs_n)
    );

    //============================================================
    // Registro LEDs
    //============================================================

    always @(posedge clk_stable or posedge sys_reset) begin
        if (sys_reset)
            leds_reg <= 32'h0000_0000;
        else if (sel_leds && |mem_wstrb)
            leds_reg <= mem_wdata;
    end

    //============================================================
    // ROM
    //============================================================

    wire [31:0] rom_data;

    blk_mem_gen_0 rom (
        .clka  (clk_stable),
        .ena   (1'b1),
        .addra (mem_addr[11:2]),
        .douta (rom_data)
    );

    //============================================================
    // RAM
    //============================================================

    wire [31:0] ram_rdata;
    wire        ram_we;

    assign ram_we = sel_ram && |mem_wstrb;

    blk_mem_gen_1 ram (
        .clka  (clk_stable),
        .ena   (1'b1),
        .wea   (ram_we ? mem_wstrb : 4'b0000),
        .addra ((mem_addr - 32'h0004_0000) >> 2),
        .dina  (mem_wdata),
        .douta (ram_rdata)
    );

    //============================================================
    // Selector de memoria
    //============================================================

    always @(*) begin
        mem_ready    = 1'b0;
        mem_rdata    = 32'h0000_0000;
        uart_tx_data = 8'h00;
        uart_tx_req  = 1'b0;
        uart_rx_req  = 1'b0;

        if (mem_valid) begin

            if (sel_rom) begin
                mem_ready = rom_pending;
                mem_rdata = rom_data;
            end

            else if (sel_sw_btn) begin
                mem_ready = 1'b1;
                mem_rdata = {31'b0, ~btn_n17};
            end

            else if (sel_leds) begin
                mem_ready = 1'b1;
                mem_rdata = leds_reg;
            end

            else if (sel_uart_ctrl) begin
                mem_ready = 1'b1;
                mem_rdata = {28'b0, 1'b0, 1'b0, uart_rx_rdy, uart_tx_rdy};
            end

            else if (sel_uart_data1) begin
                mem_ready = 1'b1;

                if (|mem_wstrb) begin
                    uart_tx_data = mem_wdata[7:0];
                    uart_tx_req  = 1'b1;
                end else begin
                    mem_rdata   = {24'h0, uart_rx_data};
                    uart_rx_req = 1'b1;
                end
            end

            else if (sel_spi) begin
                mem_ready = spi_ready;
                mem_rdata = spi_rdata;
            end

            else if (sel_ram) begin
                if (|mem_wstrb) begin
                    mem_ready = 1'b1;
                end else begin
                    mem_ready = ram_pending;
                    mem_rdata = ram_rdata;
                end
            end

            else begin
                mem_ready = 1'b1;
                mem_rdata = 32'h0000_0000;
            end
        end
    end

endmodule