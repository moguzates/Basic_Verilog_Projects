//BIRLESTIRME OPERATORUDUR. 

module Concatenation_Opeartor_1(
    input wire control,
    output wire F
    );
    
    wire [5:0] a=6'b111111;
    wire [5:0] b=6'b100000; 
    wire [11:0] c;
    
    assign c = {a,b};
    
endmodule
