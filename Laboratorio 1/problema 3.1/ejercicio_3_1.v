`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/* Ejercicio_3_1
Calcular el complemento a 2 del valor de los switches */
//////////////////////////////////////////////////////////////////////////////////

module ejercicio_3_1(
   input  [3:0] SW,
   output [3:0] LED
    );
    
    wire [3:0] comp2;
    assign comp2 = ~SW + 4'b0001 ; // se invierten los valores de los switches y se suma 1
    assign LED = comp2;            // para obtener el complemento a 2

    
endmodule
