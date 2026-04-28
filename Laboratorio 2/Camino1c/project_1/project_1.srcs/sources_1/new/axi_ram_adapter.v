module axi_ram_adapter #(
    parameter ADDR_WIDTH = 15   // 32768 palabras -> 15 bits
)(
    input  wire        s_aclk,
    input  wire        s_aresetn,

    // AXI4-Lite slave
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

    // BRAM interface (single port)
    output wire [ADDR_WIDTH-1:0] bram_addr,
    output wire [3:0]  bram_we,
    output wire [31:0] bram_wdata,
    input  wire [31:0] bram_rdata
);

    wire [ADDR_WIDTH-1:0] addr_word = s_axi_araddr[ADDR_WIDTH+1:2];

    // Canal de lectura
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
                read_data <= bram_rdata;
                read_valid <= 1'b1;
            end else if (s_axi_rready && read_valid) begin
                read_valid <= 1'b0;
            end
        end
    end

    // Canal de escritura
    reg write_ready;
    reg write_done;
    assign s_axi_awready = s_axi_awvalid & ~write_ready;
    assign s_axi_wready  = s_axi_wvalid & ~write_ready;
    assign s_axi_bvalid  = write_done;
    assign s_axi_bresp   = 2'b00;

    assign bram_addr = addr_word;
    assign bram_we   = (write_ready && s_axi_wvalid) ? s_axi_wstrb : 4'b0000;
    assign bram_wdata = s_axi_wdata;

    always @(posedge s_aclk or negedge s_aresetn) begin
        if (!s_aresetn) begin
            write_ready <= 1'b0;
            write_done  <= 1'b0;
        end else begin
            if (s_axi_awvalid && s_axi_wvalid && !write_ready) begin
                write_ready <= 1'b1;
            end else if (write_ready) begin
                write_ready <= 1'b0;
                write_done  <= 1'b1;
            end else if (write_done && s_axi_bready) begin
                write_done <= 1'b0;
            end
        end
    end

endmodule
