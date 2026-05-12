`timescale 1ns / 1ps
// rom_mem.v - ROM inferida con $readmemh
// El parámetro HEX_FILE debe apuntar a un archivo de texto con valores en hexadecimal,
// uno por línea (32 bits). El tamaño máximo es DEPTH palabras. La ruta es absoluta
// (estilo Windows) porque así se generó con el wizard; en sistemas Linux habría que cambiarla.

module rom_mem #(
    parameter DEPTH    = 2048,
    parameter HEX_FILE = "C:/Users/bolan/Pictures/Laboratorio2/Camino1a/Entregable_teacher/firmware8.hex"
)(
    input  wire [10:0] i_addr,   // dirección de palabra (11 bits = 2048 direcciones)
    output wire [31:0] o_data
);
    reg [31:0] mem [0:DEPTH-1];
    initial $readmemh(HEX_FILE, mem);   // carga el contenido desde el fichero

    assign o_data = mem[i_addr];        // lectura combinacional
endmodule