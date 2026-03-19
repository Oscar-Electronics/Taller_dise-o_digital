`timescale 1ns / 1ps

module Ejer_3_3tb;
   // Señales del testbench
    logic        CLK100MHZ;
    logic [3:0]  SW;
    wire         LED16_G;

    // Instancia del DUT (Device Under Test)
    Ejer_3_3 uut(

        .CLK100MHZ(CLK100MHZ),
        .SW(SW),
        .LED16_G(LED16_G)
        
    );
    
 // Generación de reloj de 100 MHz
    // Periodo = 10 ns
    initial begin
        CLK100MHZ = 0;   //Inicio el reloj en cero
        forever #5 CLK100MHZ = ~CLK100MHZ; //El reloj tiene un retardo de 5 ns, periodo de 10 ns y 
    end                                    // frecuencia de 100 MHz

    initial begin

        // Probar distintos ciclos de trabajo
        SW = 4'b0000;   // 0/16   -> 0%
        #1000000;

        SW = 4'b0001;   // 1/16   -> 6.25%
        #1000000;

        SW = 4'b0100;   // 4/16   -> 25%
        #1000000;

        SW = 4'b0110;   //6/16    -> 37%
        #1000000;

        SW = 4'b1000;   // 8/16   -> 50%
        #1000000;
        
        SW = 4'b1010;   //10/16   ->62%
        #1000000;

        SW = 4'b1100;   // 12/16  -> 75%
        #1000000;

        SW = 4'b1101;   //13/16   ->80%
        #1000000;

        SW = 4'b1111;   // 15/16  -> 93.75%
        #1000000;

        $finish;
    end
    
endmodule
