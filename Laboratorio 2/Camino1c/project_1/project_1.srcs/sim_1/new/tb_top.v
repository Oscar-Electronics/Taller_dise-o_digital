`timescale 1ns / 1ps

module tb_top;

    // =========================
    // Señales externas
    // =========================
    reg CLK100MHZ;
    reg reset_n;
    reg btn_n17;
    reg uart_rx;
    wire uart_tx;

    // =========================
    // DUT
    // =========================
    top_microprocesador uut (
        .CLK100MHZ(CLK100MHZ),
        .reset_n(reset_n),
        .btn_n17(btn_n17),
        .uart_rx(uart_rx),
        .uart_tx(uart_tx)
    );

    // =========================
    // "Taps" a señales internas
    // =========================
    wire        mem_valid   = uut.mem_valid;
    wire        mem_ready   = uut.mem_ready;
    wire [31:0] mem_addr    = uut.mem_addr;
    wire        mem_instr   = uut.mem_instr;
    wire [3:0]  mem_wstrb   = uut.mem_wstrb;
    wire [31:0] mem_rdata   = uut.mem_rdata;

    wire [31:0] rom_data    = uut.rom_data;
    wire [31:0] ram_rdata   = uut.ram_rdata;

    wire        uart_tx_req  = uut.uart_tx_req;
    wire [7:0]  uart_tx_data = uut.uart_tx_data;

    // =========================
    // Clock 100 MHz
    // =========================
    initial begin
        CLK100MHZ = 0;
        forever #5 CLK100MHZ = ~CLK100MHZ;
    end

    // =========================
    // Estímulos
    // =========================
    initial begin
        reset_n = 0;
        btn_n17 = 1;
        uart_rx = 1; // idle

        #100;
        reset_n = 1;

        // ⚠️ Bypass del clock wizard
        force uut.locked = 1'b1;

        // correr suficiente tiempo
        #20000;

        $finish;
    end

    // =========================
    // Monitor detallado
    // =========================
    initial begin
        $display("-------------------------------------------------------------------------------------------");
        $display("Tiempo | valid ready addr        instr wstrb rdata       rom_data    tx_req tx_data");
        $display("-------------------------------------------------------------------------------------------");

        $monitor("%t |   %b     %b   %h   %b     %b   %h   %h   %b      %h",
            $time,
            mem_valid,
            mem_ready,
            mem_addr,
            mem_instr,
            mem_wstrb,
            mem_rdata,
            rom_data,
            uart_tx_req,
            uart_tx_data
        );
    end

endmodule
