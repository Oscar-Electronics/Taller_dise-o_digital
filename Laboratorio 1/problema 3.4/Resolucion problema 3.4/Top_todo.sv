`timescale 1ns / 1ps

module Top_todo (
    input  logic        clk,
    input  logic        rx,
    output logic        tx,
    input  logic        btn_send,   // activo bajo
    output logic [15:0]  led
);
    //esta lista contiene el mensaje de hola mundo que hay que mandar a la computadora, ya que no caben todos los bits en una sola transmisión, 8'h0D = \r  ,  8'h0A = \n; esto es para que en tera term pase a la siguiente linea.
    localparam int MSG_LEN = 12;
    localparam logic [7:0] MSG [0:MSG_LEN-1] = '{
        "H", "o", "l", "a", " ", "m", "u", "n", "d", "o", 8'h0D, 8'h0A
    };  
	logic [7:0] por_counter = 8'h00;//comienza el contador en 00000000
	logic reset_int;
		always_ff @(posedge clk)
		//se suma hatas que el bit mas significativo sea 1
 		if (!por_counter[7]) por_counter <= por_counter + 1'b1;
		assign reset_int = por_counter[7];//una vez que el contador llegue a 10000000, la señal reset_int va a tener un 1, esto es para que la maquina de estqados en la fpga empiece a correr y no se quede en idle siempre, le da tiempo a la fpga de iniciar   
    // señales UART	   
 	 logic [7:0] uart_tx_data; // bits a transmitir
	 logic       uart_tx_start;
     logic       uart_tx_rdy;
     logic       uart_tx_empty;
 	 logic [7:0] uart_rx_data; //bits recividos
     logic       uart_rx_rdy;
      
    // instanciar UART 
    uart #(
      .DataLength(8), //que tantos bits tiene cada dato
      .BaudRate(9600), //boud rate
      .FifoDepth(8), // tamaño de la fifo
      .SystemClockFreq(100_000_000), // reloj del sistema
      .FlowControl(0)
      
      //entradas y salidas de la UART
    ) uart_inst (
        .i_clk      (clk),
        .i_rst_n    (reset_int),
        .i_rx       (rx),
        .o_tx       (tx),
        .i_tx_data  (uart_tx_data),
        .i_tx_req   (uart_tx_start),
        .o_tx_rdy   (uart_tx_rdy),
        .o_tx_empty (uart_tx_empty),   
        .o_rx_data  (uart_rx_data),
        .o_rx_rdy   (uart_rx_rdy),
        .o_rx_error (),
        .i_rx_req   (uart_rx_rdy),     
        .i_cts      (1'b1),
        .o_rts      ()
    );
  assign led[15] = ~btn_send;   // apaga el led cuando  se presiona el boton para enviar un mensaje.
  		assign led[14] = uart_tx_rdy;  //enciende cuando la UART esta lista para transmitir
  
  //este bloque se encarga de detectar cuando se preciona el  boton , 
  //que es asegurarse que se mande el mensaje solo 1 vez , ya que detecta solo el momento del push del boton
  	logic btn_prev;
    logic btn_pulse;
//para el flanco de subida
    always_ff @(posedge clk) begin
        if (!reset_int) btn_prev <= 1'b0;//boton sin presionar
      else 
          btn_prev <= btn_send;
        end

  	//para el flanco de  bajada  
  	assign btn_pulse = (btn_prev == 1'b1 && btn_send == 1'b0);//boton previo funciona ocmo una memoria, asi que guarda el valor anterior de botno send.
  	//por eso funciona, porque detecta flancos

  
  //maquina de estados para transmisiones
  typedef enum logic [1:0] {
        IDLE       = 2'b00,
        LOAD       = 2'b01,
        WAIT_EMPTY = 2'b10
    } tx_state_t;

    tx_state_t             tx_state;
    logic [$clog2(MSG_LEN)-1:0] char_index;

    always_ff @(posedge clk ) begin
        //si no se esta en reset el estado default es idle y el resto de los valores de la transmicion son 0 ya que todavía no se a cargado  el mensaje
      if (!reset_int) begin
            tx_state      <= IDLE;
            char_index    <= '0;
            uart_tx_start <= 1'b0;
            uart_tx_data  <= 8'h00;
        end
      
      else begin
            uart_tx_start <= 1'b0;  // pulso de 1 ciclo por defecto
          //casos
            case (tx_state)
                // en idle el index del simbolo a pasar se mantiene en 0, si se presiona el boton de transmisión pasa al estado de load (carga), si no se mantiene en idel.
                IDLE: begin
                    char_index <= '0;
                    if (btn_pulse)
                        tx_state <= LOAD;
                end
              //en el estado de load se carga el valor del simbolo del mensaje en la fifo de envio para poder enviar el dato, y pasa al siguiente estado de  WAIT_EMPTY
                LOAD: begin
                  if (uart_tx_rdy) begin          // se asegura que la fifo de transmision este lista para resivir caracteres
                    uart_tx_data  <= MSG[char_index]; // carga el valor del simbolo en uart_tx_data
                        uart_tx_start <= 1'b1;      // pulso para empezar a transmitir
                        tx_state      <= WAIT_EMPTY;
                    end
                   
                end
                //aqui se le da tiempo a la UART de transmitir el simbolo, una vez que se sabe que la fifo esta vacia se devuelve a load o si ya se envio el mensaje completo va a idel a esperar a enviar otro mensaje. 
                WAIT_EMPTY: begin
                    if (uart_tx_empty) begin
                        if (char_index == MSG_LEN - 1) begin
                            tx_state <= IDLE;           
                        end else begin
                            char_index <= char_index + 1'b1;
                            tx_state   <= LOAD;         
                        end
                    end
                end
                default: tx_state <= IDLE;// idel es el estado predeterminado o default
            endcase
        end
    end

  //resepcion de datos
    always_ff @(posedge clk) begin
        if (!reset_int) begin
            led[7:0] <= 8'b0;
          //normalmente se mantienen todos los leds de mensaje apagados
          
          //si la fifo de uart de recepción esta lista, es decir que se recibio un dato, el valor binario de este dato es representado en los primeros 8 leds de la placa
        end else if (uart_rx_rdy) begin
            led[7:0] <= uart_rx_data[7:0];
        end
    end
endmodule