module axi_gpio_simple (
    input  wire        s_aclk,
    input  wire        s_aresetn,

    // señales del esclavo
    input  wire        s_axi_awvalid,
    input  wire [31:0] s_axi_awaddr,
    output wire        s_axi_awready,
    input  wire        s_axi_wvalid,
    input  wire [31:0] s_axi_wdata,
    input  wire [3:0]  s_axi_wstrb,
    output wire        s_axi_wready,
    output wire        s_axi_bvalid,
    output wire [1:0]  s_axi_bresp,
    input  wire        s_axi_bready,
    input  wire        s_axi_arvalid,
    input  wire [31:0] s_axi_araddr,
    output wire        s_axi_arready,
    output wire        s_axi_rvalid,
    output wire [31:0] s_axi_rdata,
    output wire [1:0]  s_axi_rresp,
    input  wire        s_axi_rready,

    // sañales externas
    input  wire [31:0] gpio_i,
    output reg  [31:0] gpio_o
);

    // Decodificación de la dirección (solo bits bajos)
    wire is_read_addr  = (s_axi_araddr[7:0] == 8'h00);  // 0x2000
    wire is_write_addr = (s_axi_awaddr[7:0] == 8'h04);  // 0x2004

    //lectura
    reg read_valid;
    reg [31:0] read_data;
    assign s_axi_arready = s_axi_arvalid & ~read_valid;
    assign s_axi_rvalid = read_valid;
    assign s_axi_rdata = read_data;
    assign s_axi_rresp = 2'b00;

    always @(posedge s_aclk or negedge s_aresetn) begin
        if (!s_aresetn) begin
            read_valid <= 1'b0;
            read_data  <= 32'h0;
        end else begin
            if (s_axi_arvalid && !read_valid) begin
                if (is_read_addr)
                    read_data <= gpio_i;
                else
                    read_data <= 32'h0;
                read_valid <= 1'b1;
            end else if (s_axi_rready && read_valid) begin
                read_valid <= 1'b0;
            end
        end
    end

    //salida leds
    reg write_ready;
    reg write_done;
    assign s_axi_awready = s_axi_awvalid & ~write_ready;
    assign s_axi_wready  = s_axi_wvalid & ~write_ready;
    assign s_axi_bvalid  = write_done;
    assign s_axi_bresp   = 2'b00;

    always @(posedge s_aclk or negedge s_aresetn) begin
        if (!s_aresetn) begin
            write_ready <= 1'b0;
            write_done  <= 1'b0;
            gpio_o      <= 32'h0;
        end else begin
            if (s_axi_awvalid && s_axi_wvalid && !write_ready) begin
                write_ready <= 1'b1;
                if (is_write_addr) begin
                    // Escribir solo los bytes indicados por wstrb
                    if (s_axi_wstrb[0]) gpio_o[7:0]   <= s_axi_wdata[7:0];
                    if (s_axi_wstrb[1]) gpio_o[15:8]  <= s_axi_wdata[15:8];
                    if (s_axi_wstrb[2]) gpio_o[23:16] <= s_axi_wdata[23:16];
                    if (s_axi_wstrb[3]) gpio_o[31:24] <= s_axi_wdata[31:24];
                end
            end else if (write_ready) begin
                write_ready <= 1'b0;
                write_done  <= 1'b1;
            end else if (write_done && s_axi_bready) begin
                write_done <= 1'b0;
            end
        end
    end

endmodule