`timescale 1ns / 1ps
// native_to_axi_lite.v
// Convierte el bus simple del picoRV32 (mem_valid, mem_addr, mem_wstrb, etc.)
// en un bus AXI4-Lite maestro completo. La máquina de estados tiene tres
// estados: IDLE, WRITE, READ. Es una máquina de Mealy porque la señal mem_ready
// depende de las entradas (axi_bvalid, axi_rvalid) además del estado.

//
module native_to_axi_lite (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        mem_valid,
    output wire        mem_ready,
    input  wire [31:0] mem_addr,
    input  wire [31:0] mem_wdata,
    input  wire [3:0]  mem_wstrb,
    output wire [31:0] mem_rdata,
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
    localparam IDLE  = 2'b00;
    localparam WRITE = 2'b01;
    localparam READ  = 2'b10;

    reg [1:0]  state;
    reg [31:0] read_data;      // almacena temporalmente el dato leído hasta que mem_ready se active

    assign mem_rdata = read_data;
    // mem_ready es combinacional (Mealy): se activa cuando estamos en el estado correspondiente
    // y se completa el handshake de respuesta.
    assign mem_ready = (state == WRITE && axi_bvalid && axi_bready) ||
                       (state == READ  && axi_rvalid && axi_rready);



// - En IDLE, si mem_valid=1 y hay strobes de escritura (|mem_wstrb!=0), inicia escritura.
// - Si mem_valid=1 y no hay strobes, inicia lectura.
// - En WRITE: primero espera que el esclavo acepte la dirección (AWREADY) y los datos (WREADY),
//   luego activa BREADY para recibir la respuesta, y al recibir BVALID vuelve a IDLE.
// - En READ: lanza la dirección (ARVALID), espera ARREADY, luego activa RREADY,
//   y cuando recibe RVALID con los datos, vuelve a IDLE.
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state       <= IDLE;
            axi_awvalid <= 0;
            axi_wvalid  <= 0;
            axi_bready  <= 0;
            axi_arvalid <= 0;
            axi_rready  <= 0;
            read_data   <= 32'h0;
        end else begin
            case (state)
                IDLE: begin
                    if (mem_valid) begin
                        if (|mem_wstrb) begin            // escritura (hay algún byte strobe activo)
                            axi_awaddr  <= mem_addr;
                            axi_awvalid <= 1'b1;
                            axi_wdata   <= mem_wdata;
                            axi_wstrb   <= mem_wstrb;
                            axi_wvalid  <= 1'b1;
                            state <= WRITE;
                        end else begin                   // lectura (todos los strobes a 0)
                            axi_araddr  <= mem_addr;
                            axi_arvalid <= 1'b1;
                            state <= READ;
                        end
                    end
                end
                WRITE: begin
                    // Una vez que el esclavo acepta la dirección y los datos,
                    // desactivamos las señales de valid.
                    if (axi_awready) axi_awvalid <= 1'b0;
                    if (axi_wready)  axi_wvalid  <= 1'b0;
                    // Si ambos handshakes se han completado, preparamos la recepción de la respuesta.
                    if (axi_awready && axi_wready) axi_bready <= 1'b1;
                    // Al recibir la respuesta B, terminamos la transacción.
                    if (axi_bvalid && axi_bready) begin
                        axi_bready <= 1'b0;
                        state      <= IDLE;
                    end
                end
                READ: begin
                    // Handshake del canal de dirección: cuando el esclavo acepta,
                    // desactivamos ARVALID y preparamos RREADY para recibir datos.
                    if (axi_arready) begin
                        axi_arvalid <= 1'b0;
                        axi_rready  <= 1'b1;
                    end
                    // Cuando llegan los datos y el esclavo pone RVALID, los capturamos
                    // y desactivamos RREADY, volviendo a IDLE.
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