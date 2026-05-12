module axi_rom_adapter #(
    parameter ADDR_WIDTH = 9   //  9 bits por palabra
)(
    input  wire        s_aclk,
    input  wire        s_aresetn,

    // señales de esclavo para solo lectura
    input  wire        s_axi_arvalid,
    input  wire [31:0] s_axi_araddr,
    output wire        s_axi_arready,

    output wire        s_axi_rvalid,
    output wire [31:0] s_axi_rdata,
    output wire [1:0]  s_axi_rresp,
    input  wire        s_axi_rready,

    // interfas con la rom
    input  wire [31:0] rom_data,
    output wire [ADDR_WIDTH-1:0] rom_addr
);

   //direcciones
    assign rom_addr = s_axi_araddr[ADDR_WIDTH+1:2];

    //registros internos
    reg        ar_handshake;
    reg        read_valid;
    reg [31:0] read_data;

    // para latecica del BRAM
    reg [31:0] rom_data_reg;

    //salida de datos
    always @(posedge s_aclk) begin
        rom_data_reg <= rom_data;
    end

    //comunicaciones axi
    assign s_axi_arready = ~ar_handshake;
    assign s_axi_rvalid  = read_valid;
    assign s_axi_rdata   = read_data;
    assign s_axi_rresp   = 2'b00; // OKAY

    //maquina de estados para axi
    always @(posedge s_aclk or negedge s_aresetn) begin
        if (!s_aresetn) begin
            ar_handshake <= 1'b0;
            read_valid   <= 1'b0;
            read_data    <= 32'h0;
        end else begin

           //retiene la dirreccion del de axi
            if (s_axi_arvalid && !ar_handshake) begin
                ar_handshake <= 1'b1;
            end

            //envia datos
            if (ar_handshake && !read_valid) begin
                read_data  <= rom_data_reg;
                read_valid <= 1'b1;
            end

            //finaliza
            if (read_valid && s_axi_rready) begin
                read_valid   <= 1'b0;
                ar_handshake <= 1'b0;
            end
        end
    end

endmodule