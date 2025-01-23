////EXAMPLE 1 *********************************************************************
//module Operators_1(

//    input wire[3:0] cable1,
//    input wire[3:0] cable2,
//    output wire[3:0] c,
//    output wire[3:0] F1,
//    output wire[3:0] F2
//    );
    
//    assign F1 = cable1;
//    assign F2 = cable2;
    
//    assign c = cable1 & cable2;
//    assign c = F1 | F2; 
        
//endmodule







////EXAMPLE 2 *********************************************************************

//module Operators_1(
//    input control,
//    output F
//    );
   
//    assign F = (control == 1'b0) ? 1 : 0;  
////control eger 0 ise bu degere,
//// F'e 1'i ata, eger degil ise 0'i ata demek.
////Inverter gibi sentezlennmis
////eger ki b1 olsaydi buffer gibi davranmis olurdu

//endmodule 



//EXAMPLE 3- REPLICATION OPERATOR (KLONLAMA, KOPYALAMA) *************************************

module Operators_1(
    input wire control,
    output wire F
    );
    
    reg [2:0] a = 3'b101;
    reg [2:0] b = 3'h6;
    reg [3:0] c;
    
    always @(a,b) begin
    c=a+b;
    end
    
endmodule
