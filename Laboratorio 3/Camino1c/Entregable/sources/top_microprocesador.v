`timescale 1ns / 1ps
// ensambla todos los componentes: CPU picoRV32, un convertidor a AXI4-Lite,varios periféricos (ROM, RAM, GPIO, UART). Usamos un único bus AXI maestro y
// multiplexamos las respuestas segun la selecion.
//   0x0000_0000 - 0x0000_1FFC   ROM (firmware, solo lectura)
//   0x0000_2000                 switches/botón
//   0x0000_2004                 LEDs
//   0x0000_2010                 CTRL (control y estado)
//   0x0000_2018                 TX data (escribir para enviar)
//   0x0000_201C                 RX data (leer para recibir)
//   0x0004_0000 - 0x0004_1FFC   RAM (variables, lectura/escritura)
// Si la CPU accede a una dirección no mapeada, ningún esclavo responderá y la transacción AXI queda paegada
module top_microprocesador (
    input  wire CLK100MHZ,       // reloj de entrada de la placa (100 MHz)
    input  wire reset_n,         // botón de reset (activo bajo, según esquema)
    input  wire btn_n17,         // otro botón (activo bajo) para usar como entrada GPIO
    input  wire uart_rx,         // Rx
    output wire uart_tx,         // Tx
    output wire [15:0] leds      //  LEDs 
);

  //genero  reloj  y reset sincronizado
    wire clk_stable, locked, sys_reset;
    clk_wiz_0 clk_inst (
        .clk_out1(clk_stable),
        .resetn  (reset_n),
        .locked  (locked),
        .clk_in1 (CLK100MHZ)
    );
    assign sys_reset  = ~locked;      // reset (activo alto)
    wire   sys_resetn = ~sys_reset;   // la CPU usa reset activo bajo

// 2. CPU picoRV32 (RISC-V, arquitectura de 32 bits)
    wire        mem_valid, mem_instr, trap;
    wire        mem_ready;
    wire [31:0] mem_addr, mem_wdata, mem_rdata;
    wire [ 3:0] mem_wstrb;   //  byte: si es 0 es lectura, si no, escritura

    picorv32 #(.STACKADDR(32'h0004_07FC)) cpu (
        .clk(clk_stable), .resetn(sys_resetn), .trap(trap),
        .mem_valid(mem_valid), .mem_instr(mem_instr), .mem_ready(mem_ready),
        .mem_addr(mem_addr),   .mem_wdata(mem_wdata),
        .mem_wstrb(mem_wstrb), .mem_rdata(mem_rdata),
        .irq(32'b0), .eoi()
    );
    // trap no se usa en este diseño (podríamos conectarlo a un LED de error)

    // ------------------------------------------------------------------
    // 3. Decodificación de direcciones (selección de periférico)
    // ------------------------------------------------------------------
    // Cada señal sel_xxx se activa cuando mem_valid=1 y la dirección cae en el rango de la memoria
    wire sel_rom  = mem_valid && (mem_addr <= 32'h0000_1FFC);
    wire sel_gpio = mem_valid && (mem_addr >= 32'h0000_2000) && (mem_addr <= 32'h0000_2007);
    wire sel_uart = mem_valid && (mem_addr >= 32'h0000_2010) && (mem_addr <= 32'h0000_201F);
    wire sel_ram  = mem_valid && (mem_addr >= 32'h0004_0000) && (mem_addr <= 32'h0004_1FFC);
//Conversor de bus nativo a AXI4-Lite (maestro)
    wire        m_awvalid, m_wvalid, m_bready, m_arvalid, m_rready;
    wire [31:0] m_awaddr, m_wdata, m_araddr;
    wire [ 3:0] m_wstrb;
    wire        m_awready, m_wready, m_bvalid, m_arready, m_rvalid;
    wire [31:0] m_rdata;
    wire [ 1:0] m_bresp, m_rresp;

    native_to_axi_lite axi_master (
        .clk       (clk_stable),
        .rst_n     (sys_resetn),
        .mem_valid (mem_valid),
        .mem_ready (mem_ready),
        .mem_addr  (mem_addr),
        .mem_wdata (mem_wdata),
        .mem_wstrb (mem_wstrb),
        .mem_rdata (mem_rdata),
        .axi_awvalid(m_awvalid), .axi_awaddr(m_awaddr), .axi_awready(m_awready),
        .axi_wvalid (m_wvalid),  .axi_wdata (m_wdata),  .axi_wready (m_wready),
        .axi_wstrb  (m_wstrb),
        .axi_bvalid (m_bvalid),  .axi_bresp (m_bresp),  .axi_bready (m_bready),
        .axi_arvalid(m_arvalid), .axi_araddr(m_araddr), .axi_arready(m_arready),
        .axi_rvalid (m_rvalid),  .axi_rdata (m_rdata),  .axi_rresp  (m_rresp),
        .axi_rready (m_rready)
    );

//rom con cero latenica, hay que cambiar la direccion del firmware segun donde esta el proyecto, el arcivo firmaware se tiene que
//agregar como si fuera un source
    wire [31:0] rom_raw_data;
    wire [10:0] rom_addr_w;      // dirección interna de la ROM (11 bits = 2048 palabras)
    rom_mem #(
        .DEPTH   (2048),
        .HEX_FILE("C:/Users/bolan/Pictures/Laboratorio2/Camino1a/Entregable_teacher/firmware8.hex")
    ) rom (
        .i_addr(rom_addr_w),
        .o_data(rom_raw_data)
    );
    wire rom_awready, rom_wready, rom_bvalid, rom_arready, rom_rvalid;
    wire [31:0] rom_rdata;
    wire [1:0]  rom_bresp, rom_rresp;
//El adaptador de ROM solo usa el canal de lectura.
    axi_rom_adapter #(.ADDR_WIDTH(11)) rom_axi (
        .s_aclk    (clk_stable),
        .s_aresetn (sys_resetn),
        .s_axi_arvalid(m_arvalid & sel_rom),   // solo cuando la dirección es ROM
        .s_axi_araddr (m_araddr),
        .s_axi_arready(rom_arready),
        .s_axi_rvalid (rom_rvalid),
        .s_axi_rdata  (rom_rdata),
        .s_axi_rresp  (rom_rresp),
        .s_axi_rready (m_rready),
        .rom_data(rom_raw_data),
        .rom_addr(rom_addr_w)
    );
 // 6. RAM  de lectura/escritura, latencia 1 ciclo)
    wire [31:0] ram_raw_rdata;
    wire [10:0] ram_bram_addr;
    wire [ 3:0] ram_bram_we;
    wire [31:0] ram_bram_wdata;
//instancia de la ram
    ram_mem #(.DEPTH(2048)) ram (
        .i_clk  (clk_stable),
        .i_we   (|ram_bram_we),     // escritura habilitada si algun strobe está activo
        .i_wstrb(ram_bram_we),
        .i_addr (ram_bram_addr),
        .i_wdata(ram_bram_wdata),
        .o_rdata(ram_raw_rdata)
    );

    wire ram_awready, ram_wready, ram_bvalid, ram_arready, ram_rvalid;
    wire [31:0] ram_rdata;
    wire [1:0]  ram_bresp, ram_rresp;

    axi_ram_adapter #(.ADDR_WIDTH(11)) ram_axi (
        .s_aclk    (clk_stable),
        .s_aresetn (sys_resetn),
        .s_axi_awvalid(m_awvalid & sel_ram),
        .s_axi_awaddr (m_awaddr),
        .s_axi_awready(ram_awready),
        .s_axi_wvalid (m_wvalid & sel_ram),
        .s_axi_wdata  (m_wdata),
        .s_axi_wstrb  (m_wstrb),
        .s_axi_wready (ram_wready),
        .s_axi_bvalid (ram_bvalid),
        .s_axi_bresp  (ram_bresp),
        .s_axi_bready (m_bready),
        .s_axi_arvalid(m_arvalid & sel_ram),
        .s_axi_araddr (m_araddr),
        .s_axi_arready(ram_arready),
        .s_axi_rvalid (ram_rvalid),
        .s_axi_rdata  (ram_rdata),
        .s_axi_rresp  (ram_rresp),
        .s_axi_rready (m_rready),
        .bram_addr (ram_bram_addr),
        .bram_we   (ram_bram_we),
        .bram_wdata(ram_bram_wdata),
        .bram_rdata(ram_raw_rdata)
    );
    
// GPIO: LEDs y botón
// El GPIO tiene dos direcciones devuelve el estado de leds, y controlo los leds.
    wire [31:0] gpio_out;
    assign leds = gpio_out[15:0];   // solo conectamos los 16 bits bajos a LEDs físicos

    wire gpio_awready, gpio_wready, gpio_bvalid, gpio_arready, gpio_rvalid;
    wire [31:0] gpio_rdata;
    wire [1:0]  gpio_bresp, gpio_rresp;

    axi_gpio_simple gpio_axi (
        .s_aclk    (clk_stable),
        .s_aresetn (sys_resetn),
        .s_axi_awvalid(m_awvalid & sel_gpio),
        .s_axi_awaddr (m_awaddr),
        .s_axi_awready(gpio_awready),
        .s_axi_wvalid (m_wvalid & sel_gpio),
        .s_axi_wdata  (m_wdata),
        .s_axi_wstrb  (m_wstrb),
        .s_axi_wready (gpio_wready),
        .s_axi_bvalid (gpio_bvalid),
        .s_axi_bresp  (gpio_bresp),
        .s_axi_bready (m_bready),
        .s_axi_arvalid(m_arvalid & sel_gpio),
        .s_axi_araddr (m_araddr),
        .s_axi_arready(gpio_arready),
        .s_axi_rvalid (gpio_rvalid),
        .s_axi_rdata  (gpio_rdata),
        .s_axi_rresp  (gpio_rresp),
        .s_axi_rready (m_rready),
        .gpio_i({31'b0, ~btn_n17}),  // btn_n17 es activo bajo, lo invertimos a alto cuando se pulsa
        .gpio_o(gpio_out)
    );
//  UART (comunicación serie)
// El wrapper AXI para la UART implementa tres registros:
//   - 0x2010: control (bit0: enviar, bit1: RX listo)
//   - 0x2018: datos TX
//   - 0x201C: datos RX
    wire uart_awready, uart_wready, uart_bvalid, uart_arready, uart_rvalid;
    wire [31:0] uart_rdata;
    wire [1:0]  uart_bresp, uart_rresp;

    uart_axi_lite_wrapper2 uart_axi (
        .s_aclk    (clk_stable),
        .s_aresetn (sys_resetn),
        .s_axi_awaddr (m_awaddr),
        .s_axi_awvalid(m_awvalid & sel_uart),
        .s_axi_awready(uart_awready),
        .s_axi_wdata  (m_wdata),
        .s_axi_wstrb  (m_wstrb),
        .s_axi_wvalid (m_wvalid & sel_uart),
        .s_axi_wready (uart_wready),
        .s_axi_bresp  (uart_bresp),
        .s_axi_bvalid (uart_bvalid),
        .s_axi_bready (m_bready),
        .s_axi_araddr (m_araddr),
        .s_axi_arvalid(m_arvalid & sel_uart),
        .s_axi_arready(uart_arready),
        .s_axi_rdata  (uart_rdata),
        .s_axi_rresp  (uart_rresp),
        .s_axi_rvalid (uart_rvalid),
        .s_axi_rready (m_rready),
        .uart_rx(uart_rx),
        .uart_tx(uart_tx)
    );
// Multiplexor de respuestas AXI
 // Como tenemos un único maestro y varios esclavos, las señales de respuesta
// de los esclavos se combinan mediante mux controlados por las señales sel_xxx.
// Solo el esclavo seleccionado contribuye a las salidas; los demás están a 0.

    assign m_awready = (sel_ram  ? ram_awready  : 1'b0) |
                       (sel_gpio ? gpio_awready : 1'b0) |
                       (sel_uart ? uart_awready : 1'b0);

    assign m_wready  = (sel_ram  ? ram_wready   : 1'b0) |
                       (sel_gpio ? gpio_wready  : 1'b0) |
                       (sel_uart ? uart_wready  : 1'b0);

    assign m_bvalid  = (sel_ram  ? ram_bvalid   : 1'b0) |
                       (sel_gpio ? gpio_bvalid  : 1'b0) |
                       (sel_uart ? uart_bvalid  : 1'b0);

    assign m_bresp   = (sel_ram  ? ram_bresp    : 2'b0) |
                       (sel_gpio ? gpio_bresp   : 2'b0) |
                       (sel_uart ? uart_bresp   : 2'b0);

    assign m_arready = (sel_rom  ? rom_arready  : 1'b0) |
                       (sel_ram  ? ram_arready  : 1'b0) |
                       (sel_gpio ? gpio_arready : 1'b0) |
                       (sel_uart ? uart_arready : 1'b0);

    assign m_rvalid  = (sel_rom  ? rom_rvalid   : 1'b0) |
                       (sel_ram  ? ram_rvalid   : 1'b0) |
                       (sel_gpio ? gpio_rvalid  : 1'b0) |
                       (sel_uart ? uart_rvalid  : 1'b0);

    assign m_rdata   = (sel_rom  ? rom_rdata    : 32'b0) |
                       (sel_ram  ? ram_rdata    : 32'b0) |
                       (sel_gpio ? gpio_rdata   : 32'b0) |
                       (sel_uart ? uart_rdata   : 32'b0);

    assign m_rresp   = (sel_rom  ? rom_rresp    : 2'b0) |
                       (sel_ram  ? ram_rresp    : 2'b0) |
                       (sel_gpio ? gpio_rresp   : 2'b0) |
                       (sel_uart ? uart_rresp   : 2'b0);

endmodule