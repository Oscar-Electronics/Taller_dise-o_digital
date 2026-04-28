module axi_rom_adapter #(
    parameter ADDR_WIDTH = 9   // 512 palabras -> 9 bits
)(
    input  wire        s_aclk,
    input  wire        s_aresetn,

    // AXI4-Lite slave (solo lectura)
    input  wire        s_axi_arvalid,
    input  wire [31:0] s_axi_araddr,
    output wire        s_axi_arready,

    output wire        s_axi_rvalid,
    output wire [31:0] s_axi_rdata,
    output wire [1:0]  s_axi_rresp,
    input  wire        s_axi_rready,

    // ROM interface (blk_mem_gen)
    input  wire [31:0] rom_data,
    output wire [ADDR_WIDTH-1:0] rom_addr
);

    // =========================
    // Dirección de palabra (alineada)
    // =========================
    assign rom_addr = s_axi_araddr[ADDR_WIDTH+1:2];

    // =========================
    // Registros internos
    // =========================
    reg        ar_handshake;
    reg        read_valid;
    reg [31:0] read_data;

    // Registro para manejar latencia de BRAM
    reg [31:0] rom_data_reg;

    // =========================
    // Captura de salida de la ROM (1 ciclo)
    // =========================
    always @(posedge s_aclk) begin
        rom_data_reg <= rom_data;
    end

    // =========================
    // Señales AXI
    // =========================
    assign s_axi_arready = ~ar_handshake;
    assign s_axi_rvalid  = read_valid;
    assign s_axi_rdata   = read_data;
    assign s_axi_rresp   = 2'b00; // OKAY

    // =========================
    // FSM simple de lectura
    // =========================
    always @(posedge s_aclk or negedge s_aresetn) begin
        if (!s_aresetn) begin
            ar_handshake <= 1'b0;
            read_valid   <= 1'b0;
            read_data    <= 32'h0;
        end else begin

            // =========================
            // Captura de dirección (AR)
            // =========================
            if (s_axi_arvalid && !ar_handshake) begin
                ar_handshake <= 1'b1;
            end

            // =========================
            // Generar dato válido (1 ciclo después)
            // =========================
            if (ar_handshake && !read_valid) begin
                read_data  <= rom_data_reg;
                read_valid <= 1'b1;
            end

            // =========================
            // Finalizar transacción
            // =========================
            if (read_valid && s_axi_rready) begin
                read_valid   <= 1'b0;
                ar_handshake <= 1'b0;
            end
        end
    end

endmodule