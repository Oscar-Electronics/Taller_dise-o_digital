`timescale 1ns / 1ps

module top_microprocesador (
    input  wire CLK100MHZ,
    input  wire reset_n,
    input  wire btn_n17,
    input  wire uart_rx,
   output wire uart_tx
);


  //clk
    wire clk_stable;
    wire locked;
    wire sys_reset;

    clk_wiz_0 clk_inst (
      	  .clk_out1(clk_stable),
        .resetn(reset_n),
        .locked(locked),
        .clk_in1(CLK100MHZ)
    );

    assign sys_reset = ~locked;

    //señales pocorv32
    wire        mem_valid;
    wire        mem_instr;
    reg         mem_ready;
    wire [31:0] mem_addr;
    wire [31:0] mem_wdata;
    wire [3:0]  mem_wstrb;
    reg  [31:0] mem_rdata;
    wire        trap;

   //señales  UART
    reg  [7:0] uart_tx_data;
    reg        uart_tx_req;
    reg        uart_rx_req;
    wire [7:0] uart_rx_data;
    wire       uart_rx_rdy;
    wire       uart_tx_rdy;

   //LEDS
    reg [31:0] leds_reg;

   //mapa de memoria
    wire sel_rom       = mem_valid && (mem_addr >= 32'h0000_0000) && (mem_addr <= 32'h0000_07FC);
    wire sel_sw_btn    = mem_valid && (mem_addr == 32'h0000_2000);
    wire sel_leds      = mem_valid && (mem_addr == 32'h0000_2004);
    wire sel_uart_ctrl = mem_valid && (mem_addr == 32'h0000_2010);
    wire sel_uart_data = mem_valid && (mem_addr == 32'h0000_2018);
    wire sel_ram       = mem_valid && (mem_addr >= 32'h0004_0000) && (mem_addr <= 32'h0005_FFFC);

   
    reg [31:0] mem_addr_q;
    reg        rom_sel_q;
    reg        ram_sel_q;

    always @(posedge clk_stable or posedge sys_reset) begin
        if (sys_reset) begin
          	  mem_addr_q <= 32'h0;
            rom_sel_q  <= 1'b0;
            ram_sel_q  <= 1'b0;
        end else begin
          	  mem_addr_q <= mem_addr;
            rom_sel_q  <= sel_rom;
            ram_sel_q  <= sel_ram;
    end
    end

//cpu
    picorv32 cpu (
        .clk       (clk_stable),
        .resetn    (~sys_reset),
        .trap      (trap),
        .mem_valid (mem_valid),
        .mem_instr (mem_instr),
        .mem_ready (mem_ready),
        .mem_addr  (mem_addr),
        .mem_wdata (mem_wdata),
        .mem_wstrb (mem_wstrb),
        .mem_rdata (mem_rdata),
        .irq       (32'b0),
        .eoi       ()
    );

   //uart
    uart #(
        .SystemClockFreq (100_000_000),
        .BaudRate        (9600)
    ) uart_inst (
        .i_rst_n    (~sys_reset),
        .i_clk      (clk_stable),
        .i_tx_data  (uart_tx_data),
        .o_rx_data  (uart_rx_data),
        .i_tx_req   (uart_tx_req),
        .i_rx_req   (uart_rx_req),
        .o_rx_rdy   (uart_rx_rdy),
        .o_tx_rdy   (uart_tx_rdy),
        .i_rx       (uart_rx),
        .o_tx       (uart_tx),
         .i_cts      (1'b0),
        .o_rts      ()
    );

  //leds
    always @(posedge clk_stable or posedge sys_reset) begin
        if (sys_reset)
            leds_reg <= 32'h0;
  	      else if (sel_leds && |mem_wstrb)
            leds_reg <= mem_wdata;
   end

   //rom
    wire [31:0] rom_data;

    blk_mem_gen_0 rom (
        .clka  (clk_stable),
        .ena   (1'b1),
        .addra (mem_addr_q[11:2]),
        .douta (rom_data)
    );

   /ram
    wire [31:0] ram_rdata;
    wire [3:0]  ram_we;
    wire [31:0] ram_addr_word_q;

    assign ram_we          = (sel_ram && |mem_wstrb) ? mem_wstrb : 4'b0000;
    assign ram_addr_word_q = (mem_addr_q - 32'h0004_0000) >> 2;

    blk_mem_gen_1 ram (
        .clka  (clk_stable),
        .ena   (1'b1),
        .wea   (ram_we),
        .addra (ram_addr_word_q[14:0]),
        .dina  (mem_wdata),
        .douta (ram_rdata)
    );

 //controlador de memoria
    always @(*) begin
        mem_ready    = 1'b0;
        mem_rdata    = 32'h0000_0000;
        uart_tx_data = 8'h00;
        uart_tx_req  = 1'b0;
        uart_rx_req  = 1'b0;

        if (mem_valid) begin


            if (rom_sel_q) begin
                mem_ready = 1'b1;
                mem_rdata = rom_data;
      	      end
	
            
            else if (ram_sel_q) begin
                mem_ready = 1'b1;
                mem_rdata = ram_rdata;
            end

            
            else if (sel_sw_btn) begin
                mem_ready = 1'b1;
                mem_rdata = {31'b0, ~btn_n17};
            end

            
            else if (sel_leds) begin
                mem_ready = 1'b1;
                mem_rdata = leds_reg;
            end

            
            else if (sel_uart_ctrl) begin
                mem_ready = 1'b1;
                mem_rdata = {28'b0, 2'b00, uart_rx_rdy, uart_tx_rdy};
            end

            
            else if (sel_uart_data) begin
                mem_ready = 1'b1;

                if (|mem_wstrb) begin
                    uart_tx_data = mem_wdata[7:0];
                   uart_tx_req  = 1'b1;
                end else begin
                    mem_rdata   = {24'h0, uart_rx_data};
                    uart_rx_req = 1'b1;
                end
            end

            // defult
            else begin
                mem_ready = 1'b1;
                mem_rdata = 32'h0000_0000;
            end
        end
    end

endmodule