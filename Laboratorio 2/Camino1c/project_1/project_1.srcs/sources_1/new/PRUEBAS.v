module pruebas (
    input wire CLK100MHZ,
    input wire reset_n,
    input wire btn_n17,
    input wire [15:0] switches,
    input wire uart_rx,
    output wire uart_tx,
    output wire [15:0] leds
);

// Asignación directa para probar LEDs
assign leds = 16'hFFFF;   // Todos encendidos

// El resto de señales no se usan, pero se deben conectar a algo para evitar errores
assign uart_tx = 1'b0;

endmodule