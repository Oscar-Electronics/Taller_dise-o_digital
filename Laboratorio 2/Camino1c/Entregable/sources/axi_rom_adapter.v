`timescale 1ns / 1ps
// Adaptador AXI4-Lite esclavo para la ROM combinacional.
module axi_rom_adapter #(
    parameter ADDR_WIDTH = 11   // bits de dirección de la ROM (2^11 = 2048 palabras)
)(
    input  wire        s_aclk,
    input  wire        s_aresetn,
    input  wire        s_axi_arvalid,
    input  wire [31:0] s_axi_araddr,
    output wire        s_axi_arready,
    output wire        s_axi_rvalid,
    output wire [31:0] s_axi_rdata,
    output wire [1:0]  s_axi_rresp,
    input  wire        s_axi_rready,
    input  wire [31:0] rom_data,
    output wire [ADDR_WIDTH-1:0] rom_addr
);
    // La dirección se extrae de los bits superiores de la dirección AXI.
    // Ignoramos los bits [1:0] porque la ROM es de 32 bits (alineación a palabra).
    assign rom_addr = s_axi_araddr[ADDR_WIDTH+1:2];

    reg        ar_handshake;
    reg        read_valid;
    reg [31:0] read_data;
    reg [31:0] rom_data_reg;   // registro para sincronizar la salida de la ROM

    always @(posedge s_aclk) rom_data_reg <= rom_data;

    assign s_axi_arready = ~ar_handshake;
    assign s_axi_rvalid  = read_valid;
    assign s_axi_rdata   = read_data;
    assign s_axi_rresp   = 2'b00;


// La señal s_axi_arready es 1 cuando estamos en IDLE (ar_handshake=0), y se pone a 0
// después de aceptar una dirección. read_valid se activa un ciclo después y se mantiene
// hasta que el maestro hace rready=1.

    always @(posedge s_aclk or negedge s_aresetn) begin
        if (!s_aresetn) begin
            ar_handshake <= 1'b0;
            read_valid   <= 1'b0;
            read_data    <= 32'h0;
        end else begin
            // Detectar nueva petición de lectura
            if (s_axi_arvalid && !ar_handshake)
                ar_handshake <= 1'b1;
            // Un ciclo después de la dirección, capturar el dato (ya está registrado)
            if (ar_handshake && !read_valid) begin
                read_data  <= rom_data_reg;
                read_valid <= 1'b1;
            end
            // Cuando el maestro lee el dato (rready=1), liberamos todo
            if (read_valid && s_axi_rready) begin
                read_valid   <= 1'b0;
                ar_handshake <= 1'b0;
            end
        end
    end
endmodule