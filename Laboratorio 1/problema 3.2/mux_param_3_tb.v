
module mux_param_3_tb();

// señales
logic [3:0] in4_0, in4_1, in4_2, in4_3, out4;
logic [7:0] in8_0, in8_1, in8_2, in8_3, out8;
logic [15:0] in16_0, in16_1, in16_2, in16_3, out16;
logic [1:0] sel;

  
// contadores de errores
int errores4 = 0;
int errores8 = 0;
int errores16 = 0;
int i;
integer file;

// instanciar los muxes
  //mux de 4bits
mux_param_3 #(.WIDTH(4)) mux4 (
    .in0(in4_0), .in1(in4_1), .in2(in4_2), .in3(in4_3),
    .sel(sel), .out(out4)
);

  //mux de 8bits
mux_param_3 #(.WIDTH(8)) mux8 (
    .in0(in8_0), .in1(in8_1), .in2(in8_2), .in3(in8_3),
    .sel(sel), .out(out8)
);

  
  //mux de 16bits
mux_param_3 #(.WIDTH(16)) mux16 (
    .in0(in16_0), .in1(in16_1), .in2(in16_2), .in3(in16_3),
    .sel(sel), .out(out16)
);

  
// peueba
initial begin
  
    // abrir archivo
    file = $fopen("resultados_mux_3_texto.txt", "w");
    
  		//presentar en escrito que empiezan las pruebas
  
    $display("PRUEBA DEL MULTIPLEXOR");
   
    $fdisplay(file, "PRUEBA DEL MULTIPLEXOR");
  // valores fijos, se prueva con valores conocidos. 
    in4_0 = 4'hA; in4_1 = 4'hB; in4_2 = 4'hC; in4_3 = 4'hD;
    in8_0 = 8'h11; in8_1 = 8'h22; in8_2 = 8'h44; in8_3 = 8'h88;
    in16_0 = 16'h1111; in16_1 = 16'h2222; in16_2 = 16'h4444; 		in16_3 = 16'h8888;
  
  
    //se representan por escrito los valores fijos esperados
    $display("VALORES FIJOS:");
  	  $display("in4_0=%h, in4_1=%h, in4_2=%h, in4_3=%h", in4_0, 		in4_1, in4_2, in4_3);
  
    	$display("in8_0=%h, in8_1=%h, in8_2=%h, in8_3=%h", 				in8_0, in8_1, in8_2, in8_3);
  
    	$display("in16_0=%h, in16_1=%h, in16_2=%h, in16_3=%h\n", 		in16_0, in16_1, in16_2, in16_3);
    
    $fdisplay(file, "VALORES FIJOS:");
    	$fdisplay(file, "in4_0=%h, in4_1=%h, in4_2=%h, 					in4_3=%h", in4_0, in4_1, in4_2, in4_3);
    	$fdisplay(file, "in8_0=%h, in8_1=%h, in8_2=%h, 					in8_3=%h", in8_0, in8_1, in8_2, in8_3);
    	$fdisplay(file, "in16_0=%h, in16_1=%h, in16_2=%h, 				in16_3=%h\n", in16_0, in16_1, in16_2, in16_3);
    
   
  $display("Sel\tMUX4\tEsperado\tMUX8\t\tEsperado\tMUX16\t\tEsperado\tResultado");
  
 $fdisplay(file, "Sel\tMUX4\tEsperado\tMUX8\t\tEsperado\tMUX16\t\tEsperado\tResultado");
    
    
    // prueba cuando sel=0, entrada 0 a salida
    sel = 0;
    #10;//un delay para esperar que reaccione el circuito.
    if(out4 == in4_0 && out8 == in8_0 && out16 == in16_0) begin
      
        $display("0\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\t OK", out4, 			in4_0, out8, in8_0, out16, in16_0);
      
        $fdisplay(file, "0\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\tOK", 			out4, in4_0, out8, in8_0, out16, in16_0);
      //si se cumple que la  salida corresponde a la entrada indidaca OK, y nos muestra el  valor de la salida seguido del valor de la entrada correspondiente
      
    end else begin
      
        $display("0\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\t ERROR", 			out4, in4_0, out8, in8_0, out16, in16_0);
      
        $fdisplay(file, "0\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\tERROR", out4, in4_0, out8, 			in8_0, out16, in16_0);
      
        errores4++; errores8++; errores16++;
    end
  
    //si no se cumple que la  salida corresponde a la entrada indidaca ERROR, y nos muestra el  valor de la salida seguido del valor de la entrada correspondiente, ademas suma un error al contador de errores de cada bitwith.
  
    // prueba cuando sel=1, es igual al caso anterior solo que estavez se supervisa la entrada 1
    sel = 1;
  
    #10;
  
    if(out4 == in4_1 && out8 == in8_1 && out16 == in16_1) begin
        
      $display("1\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\t OK", out4, 			in4_1, out8, in8_1, out16, in16_1);
      
        $fdisplay(file, "1\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\tOK", 			out4, in4_1, out8, in8_1, out16, in16_1);
    end else begin
      
        $display("1\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\t ERROR", 			out4, in4_1, out8, in8_1, out16, in16_1);
      
        $fdisplay(file, 												"1\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\tERROR", out4, in4_1, 			out8, in8_1, out16, in16_1);
      
        errores4++; errores8++; errores16++;
    end

    // prueba cuando sel=2, es igual al caso anterior solo que estavez se supervisa la entrada 2
    sel = 2;
    #10;
  
    if(out4 == in4_2 && out8 == in8_2 && out16 == in16_2) begin
        $display("2\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\t OK", out4, 			in4_2, out8, in8_2, out16, in16_2);
      
        $fdisplay(file, "2\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\tOK", 			out4, in4_2, out8, in8_2, out16, in16_2);
    end else begin
      
        $display("2\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\t ERROR", 			out4, in4_2, out8, in8_2, out16, in16_2);
      
        $fdisplay(file, 												"2\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\tERROR", out4, in4_2, 			out8, in8_2, out16, in16_2);
      
      
        errores4++; errores8++; errores16++;
    end
    // prueba cuando sel=3, es igual al caso anterior solo que estavez se supervisa la entrada 3
    sel = 3;
    #10;
  
    if(out4 == in4_3 && out8 == in8_3 && out16 == in16_3) begin
        $display("3\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\t OK", out4, 			in4_3, out8, in8_3, out16, in16_3);
      
        $fdisplay(file, "3\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\tOK", 			out4, in4_3, out8, in8_3, out16, in16_3);
      
    end else begin
        $display("3\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\t ERROR", 			out4, in4_3, out8, in8_3, out16, in16_3);
      
        $fdisplay(file, 												"3\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\tERROR", out4, in4_3, 			out8, in8_3, out16, in16_3);
        errores4++; errores8++; errores16++;
    end
    //pruba con 50 datos aleatorios
    
  //presentar en escrito que empiezan las pruebas
    $display("PRUEBA CON 50 DATOS ALEATORIOS");
   
    $fdisplay(file, "PRUEBA CON 50 DATOS ALEATORIOS");
    
    			$display("Ciclo\tSel\tMUX4\tEsperado\tMUX8\t\tEsperado\tMUX16\t\tEsperado\tResultado");  
    
    $fdisplay(file, "Ciclo\tSel\tMUX4\tEsperado\tMUX8\t\tEsperado\tMUX16\t\tEsperado\tResultado");    
    // Probar 50 ciclos
    for(i = 0; i < 50; i++) begin
        // Generar nuevos datos cada 4 ciclos
        if(i % 4 == 0) begin
            in4_0 = $random; in4_1 = $random; in4_2 = $random; 				in4_3 = $random;
          //elije valores aleatorios para las entradas de 4 bits
          
            in8_0 = $random; in8_1 = $random; in8_2 = $random; 				in8_3 = $random;
          //elije valores aleatorios para las entradas de 8 bits
          
            in16_0 = $random; in16_1 = $random; in16_2 = 					$random; in16_3 = $random;
          //elije valores aleatorios para las entradas de 16 bits
        end
  
        // selecciona una entrada aleatoria para la salida
        sel = i % 4;
        #10;  // espera para poder configurar el circuito
        
        // verificar segun la entrada seleccionada
        case(sel)
          //para entrada 0
            0: begin
                if(out4 == in4_0 && out8 == in8_0 && out16 == 						in16_0) begin
                    														$display("%0d\t%0d\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\t 			OK", 
                             i, sel, out4, in4_0, out8, in8_0, 				out16, in16_0);
            
            $fdisplay(file, 												"%0d\t%0d\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\tOK", 
            i, sel, out4, in4_0, out8, in8_0, out16, in16_0);
           //si se cumple que la  salida corresponde a la entrada indidaca OK, y nos muestra el  valor de la salida seguido del valor de la entrada correspondiente
                
            end else begin
                    														$display("%0d\t%0d\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\t 				ERROR",i, sel, out4, in4_0, out8, in8_0, out16, 				in16_0);
            
              $fdisplay(file, 												"%0d\t%0d\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\tERROR", 
             i, sel, out4, in4_0, out8, in8_0, out16, in16_0);
              
                    errores4++; errores8++; errores16++;
              
                end
            end
           //si no se cumple que la  salida corresponde a la entrada indidaca ERROR, y nos muestra el  valor de la salida seguido del valor de la entrada correspondiente, ademas suma un error al contador de errores de cada bitwith.
          
          //trabaja de forma similar a los otros casos de entradas aleatorias, solo que estaves se revisa la entrada 1
          1: begin
                if(out4 == in4_1 && out8 == in8_1 && out16 == 						in16_1)
                  begin
	                    													$display("%0d\t%0d\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\t		 			OK",i, sel, out4, in4_1, out8, in8_1, out16, 					in16_1);
            $fdisplay(file, 												"%0d\t%0d\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\tOK", 
             i, sel, out4, in4_1, out8, in8_1, out16, in16_1);
                end 
            else begin
                    														$display("%0d\t%0d\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\t 				ERROR",i, sel, out4, in4_1, out8, in8_1, out16, 				in16_1);
              
            $fdisplay(file, 												"%0d\t%0d\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\tERROR",i, 				sel, out4, in4_1, out8, in8_1, out16, in16_1);
            errores4++; errores8++; errores16++;
                end
            end
          
          //trabaja de forma similar a los otros casos de entradas aleatorias, solo que estaves se revisa la entrada 2
            2: begin
                if(out4 == in4_2 && out8 == in8_2 && out16 == 						in16_2) begin
              $display("%0d\t%0d\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\t 				OK",i, sel, out4, in4_2, out8, in8_2, out16, 					in16_2);
              
              $fdisplay(file, 													"%0d\t%0d\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\tOK",i, 				sel, out4, in4_2, out8, in8_2, out16, in16_2);
                end        
              else begin
                    														$display("%0d\t%0d\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\t 				ERROR",i, sel, out4, in4_2, out8, in8_2, out16, 				in16_2);
            $fdisplay(file,
             "%0d\t%0d\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\tERROR", 
             i, sel, out4, in4_2, out8, in8_2, out16, in16_2);
                   
                
                errores4++; errores8++; errores16++;
                end
            end

          //trabaja de forma similar a los otros casos de entradas aleatorias, solo que estaves se revisa la entrada 3
            3: begin
                if(out4 == in4_3 && out8 == in8_3 && out16 == 						in16_3) begin
                    														$display("%0d\t%0d\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\t 				OK",i, sel, out4, in4_3, out8, in8_3, out16, 					in16_3);
                    
            $fdisplay(file,													"%0d\t%0d\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\tOK", 
             i, sel, out4, in4_3, out8, in8_3, out16, in16_3);
                end 
              
              else begin
                    														$display("%0d\t%0d\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\t 				ERROR",i, sel, out4, in4_3, out8, in8_3, out16, 				in16_3);
                   
            $fdisplay(file, 												"%0d\t%0d\t%h\t%h\t\t%h\t%h\t\t%h\t%h\t\tERROR", 
             i, sel, out4, in4_3, out8, in8_3, out16, in16_3);
                   
                
                errores4++; errores8++; errores16++;
                end
            end
          
        endcase
      
    end
   //resultados de las pruebas
 
  //escrive el resultado de las pruebas
  $display("RESUlTADOS Finales");
    $display("Errores MUX4 (4 bits):  %0d", errores4);
    $display("Errores MUX8 (8 bits):  %0d", errores8);
    $display("Errores MUX16 (16 bits): %0d", errores16);
  //dice el  numero de errores encontrados en cada prueba, separados por ancho de banda.
    
    if(errores4 == 0 && errores8 == 0 && errores16 == 0)
        $display(" TODAS LAS PRUEBAS PASARON CORRECTAMENTE");
  //si se pasan las  pruebas sin errores dice"TODAS LAS PRUEBAS PASARON CORRECTAMENTE"
    else
        $display(" SE DETECTARON ERRORES");
  //en el  caso de que haya algun error dice"SE DETECTARON ERRORES"
    $fdisplay(file, "RESUMEN FINAL");
    $fdisplay(file, "Errores MUX4 (4 bits):  %0d", errores4);
    $fdisplay(file, "Errores MUX8 (8 bits):  %0d", errores8);
    $fdisplay(file, "Errores MUX16 (16 bits): %0d", errores16);
    
    if(errores4 == 0 && errores8 == 0 && errores16 == 0)
        $fdisplay(file, "\n TODAS LAS PRUEBAS PASARON CORRECTAMENTE");
    else
        $fdisplay(file, "\n SE DETECTARON ERRORES");
    //cierra el archivo de texto con todos los datos de pruebas pasadas y falladas.
   		 $fclose(file);
   		 $display("\nResultados guardados en 								resultados_mux_3_texto.txt");
   		 $finish;
		end

endmodule