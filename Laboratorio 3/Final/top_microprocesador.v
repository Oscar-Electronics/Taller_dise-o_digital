`timescale 1ns / 1ps

module top_microprocesador (
    input  wire CLK100MHZ,
    input  wire reset_n,
    input  wire btn_n17,
    input  wire uart_rx,
    output wire uart_tx,
    output wire [15:0] leds,

    input  wire  sw0,

    input  wire acl_miso,
    output wire acl_mosi,
    output wire acl_sclk,
    output wire acl_csn
);

    wire clk_stable, locked, sys_reset;

    clk_wiz_0 clk_inst (
        .clk_out1(clk_stable),
        .resetn(reset_n),
        .locked(locked),
        .clk_in1(CLK100MHZ)
    );

    assign sys_reset = ~locked;

    wire        mem_valid;
    wire        mem_instr;
    wire        trap;

    reg         mem_ready;
    reg  [31:0] mem_rdata;

    wire [31:0] mem_addr;
    wire [31:0] mem_wdata;
    wire [3:0]  mem_wstrb;

    picorv32 #(
        .STACKADDR(32'h0004_07FC)
    ) cpu (
        .clk(clk_stable),
        .resetn(~sys_reset),
        .trap(trap),

        .mem_valid(mem_valid),
        .mem_instr(mem_instr),
        .mem_ready(mem_ready),

        .mem_addr(mem_addr),
        .mem_wdata(mem_wdata),
        .mem_wstrb(mem_wstrb),
        .mem_rdata(mem_rdata),

        .irq(32'b0),
        .eoi()
    );

    //--------------------------------------------------
    // Address Decode
    //--------------------------------------------------

    wire sel_rom =
        mem_valid &&
        (mem_addr <= 32'h0000_1FFC);

    wire sel_ram =
        mem_valid &&
        (mem_addr >= 32'h0004_0000) &&
        (mem_addr <= 32'h0004_1FFC);

    wire sel_sw =
        mem_valid &&
        (mem_addr == 32'h0000_2000);

    wire sel_axi =
        mem_valid &&
        (
            (mem_addr == 32'h0000_2004) ||
            (mem_addr == 32'h0000_2010) ||
            (mem_addr == 32'h0000_2018) ||
            (mem_addr == 32'h0000_201C)
        );

    wire sel_spi =
        mem_valid &&
        (
            (mem_addr == 32'h0000_2020) ||
            (mem_addr == 32'h0000_2028) ||
            (mem_addr == 32'h0000_202C)
        );

    //--------------------------------------------------
    // ROM nativa
    //--------------------------------------------------

    reg [31:0] rom_mem [0:2047];

initial begin
    $readmemh(
        "C:/Users/bolan/Pictures/Laboratorio2/Camino1a/Vamos_PS1/firmware.hex",
        rom_mem
    );
end

    wire [31:0] rom_data;
    assign rom_data = rom_mem[mem_addr[11:2]];

    //--------------------------------------------------
    // RAM nativa
    //--------------------------------------------------

    reg ram_pending;

    always @(posedge clk_stable or posedge sys_reset) begin
        if (sys_reset)
            ram_pending <= 1'b0;
        else
            ram_pending <= sel_ram && !ram_pending;
    end

    reg [31:0] ram_mem [0:2047];
    reg [31:0] ram_rdata;

    wire [10:0] ram_addr;
    assign ram_addr = (mem_addr - 32'h0004_0000) >> 2;

    always @(posedge clk_stable) begin
        if (sel_ram && |mem_wstrb) begin
            if (mem_wstrb[0]) ram_mem[ram_addr][7:0]   <= mem_wdata[7:0];
            if (mem_wstrb[1]) ram_mem[ram_addr][15:8]  <= mem_wdata[15:8];
            if (mem_wstrb[2]) ram_mem[ram_addr][23:16] <= mem_wdata[23:16];
            if (mem_wstrb[3]) ram_mem[ram_addr][31:24] <= mem_wdata[31:24];
        end

        ram_rdata <= ram_mem[ram_addr];
    end

    //--------------------------------------------------
    // AXI wires GPIO
    //--------------------------------------------------

    wire [31:0] gpio_awaddr;
    wire        gpio_awvalid;
    wire        gpio_awready;

    wire [31:0] gpio_wdata;
    wire [3:0]  gpio_wstrb;
    wire        gpio_wvalid;
    wire        gpio_wready;

    wire [1:0]  gpio_bresp;
    wire        gpio_bvalid;
    wire        gpio_bready;

    wire [31:0] gpio_araddr;
    wire        gpio_arvalid;
    wire        gpio_arready;

    wire [31:0] gpio_rdata;
    wire [1:0]  gpio_rresp;
    wire        gpio_rvalid;
    wire        gpio_rready;

    //--------------------------------------------------
    // AXI wires UART
    //--------------------------------------------------

    wire [31:0] uart_awaddr;
    wire        uart_awvalid;
    wire        uart_awready;

    wire [31:0] uart_wdata;
    wire [3:0]  uart_wstrb;
    wire        uart_wvalid;
    wire        uart_wready;

    wire [1:0]  uart_bresp;
    wire        uart_bvalid;
    wire        uart_bready;

    wire [31:0] uart_araddr;
    wire        uart_arvalid;
    wire        uart_arready;

    wire [31:0] uart_rdata;
    wire [1:0]  uart_rresp;
    wire        uart_rvalid;
    wire        uart_rready;

    //--------------------------------------------------
    // AXI Bridge
    //--------------------------------------------------

    wire        axi_ready;
    wire [31:0] axi_rdata;

    axi_bridge axi_bridge_inst (
        .clk(clk_stable),
        .reset(sys_reset),

        .cpu_valid(sel_axi),
        .cpu_addr(mem_addr),
        .cpu_wdata(mem_wdata),
        .cpu_wstrb(mem_wstrb),
        .cpu_ready(axi_ready),
        .cpu_rdata(axi_rdata),

        .gpio_awaddr(gpio_awaddr),
        .gpio_awvalid(gpio_awvalid),
        .gpio_awready(gpio_awready),
        .gpio_wdata(gpio_wdata),
        .gpio_wstrb(gpio_wstrb),
        .gpio_wvalid(gpio_wvalid),
        .gpio_wready(gpio_wready),
        .gpio_bresp(gpio_bresp),
        .gpio_bvalid(gpio_bvalid),
        .gpio_bready(gpio_bready),
        .gpio_araddr(gpio_araddr),
        .gpio_arvalid(gpio_arvalid),
        .gpio_arready(gpio_arready),
        .gpio_rdata(gpio_rdata),
        .gpio_rresp(gpio_rresp),
        .gpio_rvalid(gpio_rvalid),
        .gpio_rready(gpio_rready),

        .uart_awaddr(uart_awaddr),
        .uart_awvalid(uart_awvalid),
        .uart_awready(uart_awready),
        .uart_wdata(uart_wdata),
        .uart_wstrb(uart_wstrb),
        .uart_wvalid(uart_wvalid),
        .uart_wready(uart_wready),
        .uart_bresp(uart_bresp),
        .uart_bvalid(uart_bvalid),
        .uart_bready(uart_bready),
        .uart_araddr(uart_araddr),
        .uart_arvalid(uart_arvalid),
        .uart_arready(uart_arready),
        .uart_rdata(uart_rdata),
        .uart_rresp(uart_rresp),
        .uart_rvalid(uart_rvalid),
        .uart_rready(uart_rready)
    );

    //--------------------------------------------------
    // AXI GPIO Slave
    //--------------------------------------------------

    axi_gpio_slave gpio_slave_inst (
        .ACLK(clk_stable),
        .ARESETN(~sys_reset),

        .S_AXI_AWADDR(gpio_awaddr),
        .S_AXI_AWVALID(gpio_awvalid),
        .S_AXI_AWREADY(gpio_awready),

        .S_AXI_WDATA(gpio_wdata),
        .S_AXI_WSTRB(gpio_wstrb),
        .S_AXI_WVALID(gpio_wvalid),
        .S_AXI_WREADY(gpio_wready),

        .S_AXI_BRESP(gpio_bresp),
        .S_AXI_BVALID(gpio_bvalid),
        .S_AXI_BREADY(gpio_bready),

        .S_AXI_ARADDR(gpio_araddr),
        .S_AXI_ARVALID(gpio_arvalid),
        .S_AXI_ARREADY(gpio_arready),

        .S_AXI_RDATA(gpio_rdata),
        .S_AXI_RRESP(gpio_rresp),
        .S_AXI_RVALID(gpio_rvalid),
        .S_AXI_RREADY(gpio_rready),

        .leds(leds)
    );

    //--------------------------------------------------
    // AXI UART Slave
    //--------------------------------------------------

    axi_uart_slave uart_slave_inst (
        .ACLK(clk_stable),
        .ARESETN(~sys_reset),

        .S_AXI_AWADDR(uart_awaddr),
        .S_AXI_AWVALID(uart_awvalid),
        .S_AXI_AWREADY(uart_awready),

        .S_AXI_WDATA(uart_wdata),
        .S_AXI_WSTRB(uart_wstrb),
        .S_AXI_WVALID(uart_wvalid),
        .S_AXI_WREADY(uart_wready),

        .S_AXI_BRESP(uart_bresp),
        .S_AXI_BVALID(uart_bvalid),
        .S_AXI_BREADY(uart_bready),

        .S_AXI_ARADDR(uart_araddr),
        .S_AXI_ARVALID(uart_arvalid),
        .S_AXI_ARREADY(uart_arready),

        .S_AXI_RDATA(uart_rdata),
        .S_AXI_RRESP(uart_rresp),
        .S_AXI_RVALID(uart_rvalid),
        .S_AXI_RREADY(uart_rready),

        .uart_rx(uart_rx),
        .uart_tx(uart_tx)
    );

    //--------------------------------------------------
    // SPI ADXL362 nativo
    //--------------------------------------------------

    wire [31:0] spi_rdata;
    wire        spi_ready;

    spi_adxl362 #(
        .CLK_FREQ(100_000_000),
        .SPI_FREQ(1_000_000)
    ) spi_inst (
        .clk(clk_stable),
        .resetn(~sys_reset),

        .mem_valid(sel_spi),
        .mem_addr(mem_addr),
        .mem_wdata(mem_wdata),
        .mem_wstrb(mem_wstrb),
        .mem_rdata(spi_rdata),
        .mem_ready(spi_ready),

        .spi_sclk(acl_sclk),
        .spi_mosi(acl_mosi),
        .spi_miso(acl_miso),
        .spi_cs_n(acl_csn)
    );

    //--------------------------------------------------
    // PicoRV32 memory response mux
    //--------------------------------------------------

    always @(*) begin
        mem_ready = 1'b0;
        mem_rdata = 32'd0;

        if (mem_valid) begin

            if (sel_rom) begin
                mem_ready = 1'b1;
                mem_rdata = rom_data;
            end

            else if (sel_ram) begin
                if (|mem_wstrb) begin
                    mem_ready = 1'b1;
                    mem_rdata = 32'd0;
                end else begin
                    mem_ready = ram_pending;
                    mem_rdata = ram_rdata;
                end
            end

            else if (sel_sw) begin
                mem_ready = 1'b1;
                mem_rdata = {16'd0, sw0};
            end

            else if (sel_axi) begin
                mem_ready = axi_ready;
                mem_rdata = axi_rdata;
            end

            else if (sel_spi) begin
                mem_ready = spi_ready;
                mem_rdata = spi_rdata;
            end

            else begin
                mem_ready = 1'b1;
                mem_rdata = 32'd0;
            end
        end
    end

endmodule