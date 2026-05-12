module test_rom_reader (
    input  wire       clk,
    input  wire       rst_n,
    // interfas de mem
    output reg        mem_valid,
    output reg        mem_instr,
    input  wire       mem_ready,
    output reg [31:0] mem_addr,
    output reg [31:0] mem_wdata,
    output reg [ 3:0] mem_wstrb,
    input  wire [31:0] mem_rdata,
    output reg [31:0] leds_out // salida de leds
);
    reg [1:0] state;
    reg [31:0] read_data;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= 2'b00;
            mem_valid <= 1'b0;
            mem_instr <= 1'b0;
            mem_addr <= 0;
            mem_wdata <= 0;
            mem_wstrb <= 4'b0000;
            leds_out <= 0;
        end else begin
//maquina de estados para  leer la rom
            case (state)
                2'b00: begin 
                    if (rst_n) begin
                        mem_addr <= 32'h0000_0000; // empieza en dirreccion 0
                        mem_valid <= 1'b1;
                        mem_instr <= 1'b1;
                        state <= 2'b01;
                    end
                end
                2'b01: begin
                    if (mem_ready) begin //espera a que la memoria este lista
                        read_data <= mem_rdata;
                        mem_valid <= 1'b0;
                        state <= 2'b10;
                    end
                end
                2'b10: begin 
                    mem_addr <= 32'h0000_2004;
                    mem_wdata <= read_data;
                    mem_wstrb <= 4'b1111;
                    mem_valid <= 1'b1;
                    mem_instr <= 1'b0;
                    state <= 2'b11;
                end
                2'b11: begin 
                    if (mem_ready) begin // si la memoria esta lista
                        mem_valid <= 1'b0; 
                        leds_out <= read_data; // los leds conservan su valor pasado
                        state <= 2'b00;      //vuelve al inicio
                    end
                end
            endcase
        end
    end
endmodule
