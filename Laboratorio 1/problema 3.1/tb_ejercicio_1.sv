
module tb_ejercicio_1;

    reg  [3:0] SW;  // "reg: Variable que puede almacenar un valor"
    wire [3:0] LED;  //"wire: Conxión física"
    
    // Instancia del módulo a probar
    ejercicio_3_1 uut (
        .SW(SW),
        .LED(LED)
    );

    initial begin //Inicia en cero y se ejecuta una vez
     
        // Caso 1:  SW = 0000 -> comp2 = 0000
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
        
        // Caso 6: SW = 0111 -> comp2 = 1001
        SW   = 4'b0111;
        #10;
         
        $finish; //Termina la simulación
    end // Cierra bloque de código {}   
endmodule
