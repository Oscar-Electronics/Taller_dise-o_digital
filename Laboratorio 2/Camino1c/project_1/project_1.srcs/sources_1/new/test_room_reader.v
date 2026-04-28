module test_rom_reader (
    input  wire       clk,
    input  wire       rst_n,
    // Interfaz de memoria (igual que la del picoRV32)
    output reg        mem_valid,
    output reg        mem_instr,
    input  wire       mem_ready,
    output reg [31:0] mem_addr,
    output reg [31:0] mem_wdata,
    output reg [ 3:0] mem_wstrb,
    input  wire [31:0] mem_rdata,
    // Para escribir en LEDs
    output reg [31:0] leds_out
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
            case (state)
                2'b00: begin // Esperar a que el reset se libere
                    if (rst_n) begin
                        // Iniciar lectura en dirección 0
                        mem_addr <= 32'h0000_0000;
                        mem_valid <= 1'b1;
                        mem_instr <= 1'b1;
                        state <= 2'b01;
                    end
                end
                2'b01: begin // Esperar que la memoria esté lista
                    if (mem_ready) begin
                        read_data <= mem_rdata;
                        mem_valid <= 1'b0;
                        state <= 2'b10;
                    end
                end
                2'b10: begin // Escribir el dato leído en los LEDs (dirección 0x2004)
                    mem_addr <= 32'h0000_2004;
                    mem_wdata <= read_data;
                    mem_wstrb <= 4'b1111;
                    mem_valid <= 1'b1;
                    mem_instr <= 1'b0;
                    state <= 2'b11;
                end
                2'b11: begin // Esperar respuesta de escritura
                    if (mem_ready) begin
                        mem_valid <= 1'b0;
                        leds_out <= read_data; // También mostrar en LEDs internos
                        state <= 2'b00;       // Terminar, podría reiniciar
                    end
                end
            endcase
        end
    end
endmodule
