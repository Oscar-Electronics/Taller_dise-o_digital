module native_to_axi_lite (
    input  wire        clk,
    input  wire        rst_n,

    // Interfaz nativa (maestro PicoRV32)
    input  wire        mem_valid,
    output wire        mem_ready,
    input  wire [31:0] mem_addr,
    input  wire [31:0] mem_wdata,
    input  wire [3:0]  mem_wstrb,
    output wire [31:0] mem_rdata,

    // Interfaz AXI-Lite (esclavo)
    output reg         axi_awvalid,
    output reg  [31:0] axi_awaddr,
    input  wire        axi_awready,

    output reg         axi_wvalid,
    output reg  [31:0] axi_wdata,
    output reg  [3:0]  axi_wstrb,
    input  wire        axi_wready,

    input  wire        axi_bvalid,
    input  wire [1:0]  axi_bresp,
    output reg         axi_bready,

    output reg         axi_arvalid,
    output reg  [31:0] axi_araddr,
    input  wire        axi_arready,

    input  wire        axi_rvalid,
    input  wire [31:0] axi_rdata,
    input  wire [1:0]  axi_rresp,
    output reg         axi_rready
);

    // =========================
    // Estados
    // =========================
    localparam IDLE  = 2'b00;
    localparam WRITE = 2'b01;
    localparam READ  = 2'b10;

    reg [1:0] state;

    // Registro de lectura
    reg [31:0] read_data;

    assign mem_rdata = read_data;

    // 🔥 CLAVE: mem_ready solo cuando la transacción terminó
    assign mem_ready =
        (state == WRITE && axi_bvalid && axi_bready) ||
        (state == READ  && axi_rvalid && axi_rready);

    // =========================
    // FSM principal
    // =========================
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;

            axi_awvalid <= 0;
            axi_wvalid  <= 0;
            axi_bready  <= 0;

            axi_arvalid <= 0;
            axi_rready  <= 0;

            read_data <= 32'h0;
        end else begin
            case (state)

                // =========================
                // IDLE
                // =========================
                IDLE: begin
                    if (mem_valid) begin
                        if (|mem_wstrb) begin
                            // WRITE
                            axi_awaddr  <= mem_addr;
                            axi_awvalid <= 1'b1;

                            axi_wdata   <= mem_wdata;
                            axi_wstrb   <= mem_wstrb;
                            axi_wvalid  <= 1'b1;

                            state <= WRITE;
                        end else begin
                            // READ
                            axi_araddr  <= mem_addr;
                            axi_arvalid <= 1'b1;

                            state <= READ;
                        end
                    end
                end

                // =========================
                // WRITE
                // =========================
                WRITE: begin
                    // Handshake AW
                    if (axi_awready)
                        axi_awvalid <= 1'b0;

                    // Handshake W
                    if (axi_wready)
                        axi_wvalid <= 1'b0;

                    // Esperar respuesta B
                    if (axi_awready && axi_wready)
                        axi_bready <= 1'b1;

                    if (axi_bvalid && axi_bready) begin
                        axi_bready <= 1'b0;
                        state <= IDLE;
                    end
                end

                // =========================
                // READ
                // =========================
                READ: begin
                    // Handshake AR
                    if (axi_arready) begin
                        axi_arvalid <= 1'b0;
                        axi_rready  <= 1'b1;
                    end

                    // Esperar dato válido
                    if (axi_rvalid && axi_rready) begin
                        read_data  <= axi_rdata;
                        axi_rready <= 1'b0;
                        state      <= IDLE;
                    end
                end

                default: state <= IDLE;

            endcase
        end
    end

endmodule