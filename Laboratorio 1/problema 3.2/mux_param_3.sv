//todo el modulo depoende de un parametro llamado WIDTH, que representa el ancho de banda entre 4,8 o 16 bits.
module mux_param_3 #(parameter WIDTH = 4) (
  input  logic [WIDTH-1:0] in0, in1, in2, in3,//se declaran las entradas, estas tiene que ser parametrizadas para poder haceptar varios bitwiths. 

  input  logic [1:0] sel,// se declara la entrada del selector.
  output logic [WIDTH-1:0] out// se declara la salida, esta tambien debe de ser parametrisada al igual que las entradas.
);

  //casos donde se determina a que entrada se ve en la salida, dependiendo de sel.
always_comb begin
    case(sel)
        2'b00: out = in0;
        2'b01: out = in1;
        2'b10: out = in2;
        2'b11: out = in3;
    endcase
end

endmodule
