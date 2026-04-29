`timescale 1ns / 1ps
//entradas y salidas del modulo

module top_microprocesador (
    input  wire CLK100MHZ,      // Pin E3
  input  wire reset_n,        // Pin C12 (CPU_RESET - activo en bajo)
  input  wire btn_n17,        // Pin N17 (boton central)
    input  wire uart_rx,        // Pin C4
    output wire uart_tx         // Pin D4
);

  //señales internas del top
  
  
  //señales del cloking wizard
    wire clk_stable;    // reloj de salida estable
    wire locked;        // 1 cuando el reloj es estable
    wire sys_reset;     // reset interno
  //se instancia el clocking wizard i se conectan sus señales de entradas y salidas a las señales internas del top
    clk_wiz_0 clk_inst (
       .clk_out1(clk_stable),  // reloj estable
      .resetn(reset_n),       // reset, activo en bajo
        .locked(locked),        // reloj estable
      .clk_in1(CLK100MHZ)     // reloj de la placa
    );

    // el sistema se mantiene en reset, hasta que se estabiliza el reloj
    assign sys_reset = ~locked;

  //señales del picoRV32
    wire        mem_valid;
   wire        mem_instr;
    reg         mem_ready;
    wire [31:0] mem_addr;
    wire [31:0] mem_wdata;
  	  wire [ 3:0] mem_wstrb;
    reg  [31:0] mem_rdata;
     wire        trap;

//señales de la uart
    reg  [7:0]  uart_tx_data;
    reg         uart_tx_req;
    reg         uart_rx_req;
    wire [7:0]  uart_rx_data;
   wire        uart_rx_rdy;
    wire        uart_tx_rdy;
    wire        uart_tx_empty;
    wire        uart_rx_error;
    
  //registro para los leds
    reg  [31:0] leds_reg;
  //se establecen las direcciones de memoria para los distintos modulos y a que corresponden con el mapa de memoria
   //mapa de memoria(basado en el del instructivo)
    wire sel_rom        = mem_valid && (mem_addr >= 32'h0000_0000) && (mem_addr <= 32'h0000_07FC);
    wire sel_sw_btn     = mem_valid && (mem_addr == 32'h0000_2000);
     wire sel_leds       = mem_valid && (mem_addr == 32'h0000_2004);
    wire sel_uart_ctrl  = mem_valid && (mem_addr == 32'h0000_2010);
     wire sel_uart_data1 = mem_valid && (mem_addr == 32'h0000_2018);
    wire sel_ram        = mem_valid && (mem_addr >= 32'h0004_0000);

 //pioeline para la latencia de la RAM y ROM de 1 ciclo
    reg rom_pending;
  reg ram_pending;

    always @(posedge clk_stable or posedge sys_reset) begin
        if (sys_reset) begin
             rom_pending <= 1'b0;
            ram_pending <= 1'b0;
        end else begin
            // logica para la ROM
            if (sel_rom && !rom_pending)
                rom_pending <= 1'b1;
            else
                rom_pending <= 1'b0;

            // logica para RAM
            if (sel_ram && !ram_pending)
                ram_pending <= 1'b1;
            else
                ram_pending <= 1'b0;
        end
    end

 //instanciar los modulos 
  

    //se instancia el picorv32 y se conectan las señales de entrada y salida del modulo de cpu a sus respectivas señales internas del top.
    picorv32 cpu (
        .clk       (clk_stable),
       	 .resetn    (~sys_reset), //se toma un reset, pero como el picorv32 utiliza un reser activo en bajo se invierte.
        .trap      (trap),
        .mem_valid (mem_valid),
       .mem_instr (mem_instr),
       .mem_ready (mem_ready),
       .mem_addr  (mem_addr),
       .mem_wdata (mem_wdata),
       .mem_wstrb (mem_wstrb),
       .mem_rdata (mem_rdata),
        .irq       (32'b0),
        .eoi       ()
    );

    //se instancia la uart
    uart #(
      //se cargan los parametros para las comunicaciones por uart
      .SystemClockFreq (100_000_000), // basado en el reloj del clockin wizard
        .BaudRate        (9600)
      //se conectan las señales de entrada y salida del modulo de uart a sus respectivas señales internas del top.
    ) uart_inst (
        .i_rst_n    (~sys_reset),
        .i_clk      (clk_stable),
         .i_tx_data  (uart_tx_data),
        .o_rx_data  (uart_rx_data),
        .i_tx_req   (uart_tx_req),
         .i_rx_req   (uart_rx_req),
        .o_rx_rdy   (uart_rx_rdy),
        .o_tx_rdy   (uart_tx_rdy),
        .i_rx       (uart_rx),
        .o_tx       (uart_tx),
        .i_cts      (1'b0),
        .o_rts      ()
    );

    //para la escritura de los LEDs
  //despues de un reset se ponen todos los leds en 0, es decir apagados
    always @(posedge clk_stable or posedge sys_reset) begin
        if (sys_reset) 
            leds_reg <= 32'h0;
         //si se seleccionan los leds se carga el valor de escritura a los leds, para determinar cuales se encienden y cuales permanecen apagados.
         
        else if (sel_leds && |mem_wstrb)
            leds_reg <= mem_wdata;
    end

   //rom
  //se instancia la rom y se Conectan sus pines al top
    wire [31:0] rom_data;
    blk_mem_gen_0 rom (
      .clka  (clk_stable),		//reloj estable
        .ena   (1'b1),			// el pin de eneable de la ROM siempre es activo
      .addra (mem_addr[11:2]), // dirreccion de la ROM
        .douta (rom_data)		//datos de la ROM
    );

    // ram
  //se crean señales internas para la RAM
    wire [31:0] ram_rdata;
  
  //se asigna 1 a ram_we si se puede escribir de forma segura a la ram
    wire ram_we = sel_ram && |mem_wstrb;// señal para permitir escribir de la ram
  
  // se instancia la ram y se conectan sus pines a las señales internas del top
    blk_mem_gen_1 ram (
      .clka  (clk_stable),	//reloj estable
      .ena   (1'b1),		// el pin de eneable de la ram siempre es activo
      .wea   (ram_we ? mem_wstrb : 4'b0000),//se asigna 1 a ram_we si se puede escribir de forma segura a la RAM
        .addra ((mem_addr - 32'h0004_0000) >> 2),//se calcula el valor de la direccion de ram basados en la dirreccion de memoria pedida
        .dina  (mem_wdata),
        .douta (ram_rdata)
    );

 
  //selector de memoria 
    always @(*) begin
      // valores por defecto
        mem_ready    = 1'b0;
        mem_rdata    = 32'h0;
       	 uart_tx_data = 8'h0;
       	 uart_tx_req  = 1'b0;
       	 uart_rx_req  = 1'b0;
      
      //si la memoria es valida 

        if (mem_valid) begin
           // ROM
            if (sel_rom) begin
           	     mem_ready = rom_pending;// se confirma que la memoria esta lista
                mem_rdata = rom_data;//se lee el dato de la ROM
            end 
          // switches y botones, dirreccion 0x0000_2000
            else if (sel_sw_btn) begin
                mem_ready = 1'b1;// escritura inmediata
              mem_rdata = {31'b0, ~btn_n17}; //se lee el valor del boton negado.
            end
          //leds, direccion0x0000_2004
            else if (sel_leds) begin
                mem_ready = 1'b1;// escritura inmediata
                mem_rdata = leds_reg;  //se escrive el valor de los leds
         	   end
          //UART
            else if (sel_uart_ctrl) begin
                mem_ready = 1'b1;// escritura inmediata
              mem_rdata = {28'b0, 1'b0, 1'b0, uart_rx_rdy, uart_tx_rdy};// se carga el mensaje que se espera enviar por la UART y las señales de control
              end
          //transmicion de UART
            else if (sel_uart_data1) begin
                mem_ready = 1'b1;// escritura inmediata
                if (|mem_wstrb) begin
                  uart_tx_data = mem_wdata[7:0]; // se cargan los bits del mensaje
                    uart_tx_req  = 1'b1;
                  //resepcion de UART 
                end else begin
                  mem_rdata    = {24'h0, uart_rx_data}; //se lee lo que se lee por la UART
                    uart_rx_req  = 1'b1;
                end
            end
          //ram
            else if (sel_ram) begin
                if (|mem_wstrb) begin
                    mem_ready = 1'b1; // escritura inmediata
                end else begin
                    mem_ready = ram_pending; // lectura con latencia
                    mem_rdata = ram_rdata;  //lee los datos de la ram
                end
            end
          //si se selecciona una direccion de memoria distinta a las especificadas (fallback para las direcciones no mapeadas)
            else begin
                mem_ready = 1'b1; 
            end
        end
    end

endmodule