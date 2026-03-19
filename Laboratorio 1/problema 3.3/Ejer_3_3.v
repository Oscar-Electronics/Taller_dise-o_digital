`timescale 1ns / 1ps


module Ejer_3_3(           //Se definen entradas y salidas
    input wire CLK100MHZ,
    input wire [3:0] SW, 
    output wire LED16_G

    );
    
     // 1 ms con reloj de 100 MHz = 100000 ciclos 
  parameter PERIOD = 100000;
  
   // Contador del período PWM
    reg [16:0] counter = 0; 
    
    // Umbral de comparación
    wire [16:0] threshold; 
    
    // Calcula cuántas cuentas debe durar el pulso en alto 
    // threshold = (SW / 16) * PERIOD
     assign threshold = (SW * PERIOD) >> 4; 
     
     // Contador ascendente
      always @(posedge CLK100MHZ) begin 
      if (counter == PERIOD - 1) 
      counter <= 0; 
      else counter <= counter + 1; 
      end
      
       // LED RGB de la Nexys 4 DDR: activo en bajo
       assign LED16_G = (counter < threshold);

    
endmodule
