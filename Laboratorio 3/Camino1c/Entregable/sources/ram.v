`timescale 1ns / 1ps
// RAM inferida - reemplaza blk_mem_gen_1
// Escritura por bytes, lectura con latencia 1 ciclo
module ram_mem #(
    parameter DEPTH = 2048
)(
    input  wire        i_clk,
    input  wire        i_we,
    input  wire [3:0]  i_wstrb,
    input  wire [10:0] i_addr,
    input  wire [31:0] i_wdata,
    output reg  [31:0] o_rdata
);
    reg [31:0] mem [0:DEPTH-1];

    always @(posedge i_clk) begin
        if (i_we) begin
            if (i_wstrb[0]) mem[i_addr][ 7: 0] <= i_wdata[ 7: 0];
            if (i_wstrb[1]) mem[i_addr][15: 8] <= i_wdata[15: 8];
            if (i_wstrb[2]) mem[i_addr][23:16] <= i_wdata[23:16];
            if (i_wstrb[3]) mem[i_addr][31:24] <= i_wdata[31:24];
        end
        o_rdata <= mem[i_addr];
    end
endmodule