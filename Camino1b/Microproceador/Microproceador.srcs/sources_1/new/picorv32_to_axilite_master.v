`timescale 1ns / 1ps

module picorv32_to_axilite_master (
    input  wire        clk,
    input  wire        resetn,

    // Interfaz nativa PicoRV32
    input  wire        mem_valid,
    input  wire        mem_instr,
    output reg         mem_ready,
    input  wire [31:0] mem_addr,
    input  wire [31:0] mem_wdata,
    input  wire [ 3:0] mem_wstrb,
    output reg  [31:0] mem_rdata,

    // AXI4-Lite Master
    output reg  [31:0] M_AXI_AWADDR,
    output reg  [ 2:0] M_AXI_AWPROT,
    output reg         M_AXI_AWVALID,
    input  wire        M_AXI_AWREADY,

    output reg  [31:0] M_AXI_WDATA,
    output reg  [ 3:0] M_AXI_WSTRB,
    output reg         M_AXI_WVALID,
    input  wire        M_AXI_WREADY,

    input  wire [ 1:0] M_AXI_BRESP,
    input  wire        M_AXI_BVALID,
    output reg         M_AXI_BREADY,

    output reg  [31:0] M_AXI_ARADDR,
    output reg  [ 2:0] M_AXI_ARPROT,
    output reg         M_AXI_ARVALID,
    input  wire        M_AXI_ARREADY,

    input  wire [31:0] M_AXI_RDATA,
    input  wire [ 1:0] M_AXI_RRESP,
    input  wire        M_AXI_RVALID,
    output reg         M_AXI_RREADY
);

    localparam ST_IDLE        = 3'd0;
    localparam ST_READ_ADDR   = 3'd1;
    localparam ST_READ_DATA   = 3'd2;
    localparam ST_WRITE_ADDR  = 3'd3;
    localparam ST_WRITE_RESP  = 3'd4;
    localparam ST_DONE        = 3'd5;

    reg [2:0] state;

    wire is_read;
    wire is_write;

    assign is_read  = mem_valid && (mem_wstrb == 4'b0000);
    assign is_write = mem_valid && (mem_wstrb != 4'b0000);

    always @(posedge clk or negedge resetn) begin
        if (!resetn) begin
            state <= ST_IDLE;
            mem_ready <= 1'b0;
            mem_rdata <= 32'h0000_0000;

            M_AXI_AWADDR  <= 32'h0000_0000;
            M_AXI_AWPROT  <= 3'b000;
            M_AXI_AWVALID <= 1'b0;

            M_AXI_WDATA   <= 32'h0000_0000;
            M_AXI_WSTRB   <= 4'b0000;
            M_AXI_WVALID  <= 1'b0;

            M_AXI_BREADY  <= 1'b0;

            M_AXI_ARADDR  <= 32'h0000_0000;
            M_AXI_ARPROT  <= 3'b000;
            M_AXI_ARVALID <= 1'b0;

            M_AXI_RREADY  <= 1'b0;
        end else begin
            mem_ready <= 1'b0;

            case (state)
                ST_IDLE: begin
                    M_AXI_AWVALID <= 1'b0;
                    M_AXI_WVALID  <= 1'b0;
                    M_AXI_BREADY  <= 1'b0;
                    M_AXI_ARVALID <= 1'b0;
                    M_AXI_RREADY  <= 1'b0;

                    if (is_read) begin
                        M_AXI_ARADDR  <= mem_addr;
                        M_AXI_ARPROT  <= 3'b000;
                        M_AXI_ARVALID <= 1'b1;
                        state <= ST_READ_ADDR;
                    end else if (is_write) begin
                        M_AXI_AWADDR  <= mem_addr;
                        M_AXI_AWPROT  <= 3'b000;
                        M_AXI_AWVALID <= 1'b1;

                        M_AXI_WDATA   <= mem_wdata;
                        M_AXI_WSTRB   <= mem_wstrb;
                        M_AXI_WVALID  <= 1'b1;

                        state <= ST_WRITE_ADDR;
                    end
                end

                ST_READ_ADDR: begin
                    if (M_AXI_ARREADY) begin
                        M_AXI_ARVALID <= 1'b0;
                        M_AXI_RREADY  <= 1'b1;
                        state <= ST_READ_DATA;
                    end
                end

                ST_READ_DATA: begin
                    if (M_AXI_RVALID) begin
                        mem_rdata    <= M_AXI_RDATA;
                        M_AXI_RREADY <= 1'b0;
                        mem_ready    <= 1'b1;
                        state <= ST_DONE;
                    end
                end

                ST_WRITE_ADDR: begin
                    if (M_AXI_AWREADY)
                        M_AXI_AWVALID <= 1'b0;

                    if (M_AXI_WREADY)
                        M_AXI_WVALID <= 1'b0;

                    if ((!M_AXI_AWVALID) && (!M_AXI_WVALID)) begin
                        M_AXI_BREADY <= 1'b1;
                        state <= ST_WRITE_RESP;
                    end
                end

                ST_WRITE_RESP: begin
                    if (M_AXI_BVALID) begin
                        M_AXI_BREADY <= 1'b0;
                        mem_ready    <= 1'b1;
                        state <= ST_DONE;
                    end
                end

                ST_DONE: begin
                    state <= ST_IDLE;
                end

                default: begin
                    state <= ST_IDLE;
                end
            endcase
        end
    end

endmodule