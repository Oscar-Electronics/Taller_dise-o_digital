
module tb_ejercicio_3_1(
    wire  [3:0] SW; 
    wire        BTNC;
    wire [3:0] LED;
    
    // Instancia del módulo a probar
    ejercicio_3_1 uut (
        .SW(SW),
        .BTNC(BTNC),
        .LED(LED)
    );
    initial begin
        // Caso 0: reset activo
        SW   = 4'b0000;
        BTNC = 1'b0;
        #10;

        // Caso 1: sin reset, SW = 0000 -> comp2 = 0000
        BTNC = 1'b1;
        SW   = 4'b0000;
        #10;

        // Caso 2: SW = 0001 -> comp2 = 1111
        SW = 4'b0001;
        #10;

        // Caso 3: SW = 0010 -> comp2 = 1110
        SW = 4'b0010;
        #10;

        // Caso 4: SW = 0011 -> comp2 = 1101
        SW = 4'b0011;
        #10;

        // Caso 5: SW = 0100 -> comp2 = 1100
        SW = 4'b0100;
        #10;

        // Caso 6: presionar botón otra vez -> LED = 0000
        BTNC = 1'b0;
        #10;

        // Caso 7: liberar botón, SW = 0111 -> comp2 = 1001
        BTNC = 1'b1;
        SW   = 4'b0111;
        #10; //Espera de 10 unidades de tiempo

        $finish;
    end

endmodule
