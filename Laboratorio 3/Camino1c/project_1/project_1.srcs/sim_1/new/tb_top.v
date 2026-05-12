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
    // Taps internos
    // =========================
    wire        mem_valid   = uut.mem_valid;
    wire        mem_ready   = uut.mem_ready;
    wire [31:0] mem_addr    = uut.mem_addr;
    wire        mem_instr   = uut.mem_instr;
    wire [3:0]  mem_wstrb   = uut.mem_wstrb;
    wire [31:0] mem_rdata   = uut.mem_rdata;

    wire [31:0] rom_data    = uut.rom_data;

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
        uart_rx = 1;

        #100;
        reset_n = 1;

        // Bypass clock wizard
        force uut.locked = 1'b1;

        // tiempo largo para programa complejo
        #200000;

        $display("\n⛔ FIN DE SIMULACIÓN");
        $finish;
    end

    // =========================
    // MONITOR GENERAL
    // =========================
    initial begin
        $display("Tiempo | addr        | valid ready | wstrb | tx_req | tx_data");
        $monitor("%t | %h |   %b     %b   |  %b   |   %b    |   %h",
            $time,
            mem_addr,
            mem_valid,
            mem_ready,
            mem_wstrb,
            uart_tx_req,
            uart_tx_data
        );
    end

    // =========================
    // 🎯 DETECTOR DE UART (LO IMPORTANTE)
    // =========================
    always @(posedge CLK100MHZ) begin
        if (uart_tx_req) begin
            $display("📡 UART TX → '%c' (0x%h) en tiempo %t",
                uart_tx_data,
                uart_tx_data,
                $time
            );
        end
    end

    // =========================
    // 🎯 DETECTOR DE ACCESO A UART
    // =========================
    always @(posedge CLK100MHZ) begin
        if (mem_valid && mem_addr == 32'h00002018) begin
            $display("🎯 ACCESO A UART DATA (0x2018) en %t | wstrb=%b",
                $time, mem_wstrb);
        end
    end

    // =========================
    // 🚨 DETECTOR DE LOOP SOSPECHOSO
    // =========================
    reg [31:0] last_addr;
    integer same_count;

    initial begin
        last_addr = 0;
        same_count = 0;
    end

    always @(posedge CLK100MHZ) begin
        if (mem_addr == last_addr)
            same_count = same_count + 1;
        else
            same_count = 0;

        last_addr = mem_addr;

        if (same_count == 50) begin
            $display("⚠️ POSIBLE LOOP en addr = %h en tiempo %t", mem_addr, $time);
        end
    end

endmodule
