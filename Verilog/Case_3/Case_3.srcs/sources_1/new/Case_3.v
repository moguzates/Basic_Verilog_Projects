//Case bir değeri o durumda ne olacağını söyleyen fonksiyondur. IF else de yaptığımız örnek ile case nin alttaki hali aynıdır. 


//`timescale 1ns / 1ps

//module Case_3(
//    output reg result
//    );
    
//    reg [3:0] A=4'h0; 
    
//    always begin
//    #10
//    A=A+1;
//    end
    
//    always@ (A) begin
        
//        case (A)
//            4'h5: begin
//                   result=1;
//                  end
//            4'h3: begin
//                    result=1;
//                  end   
//        default  begin
//                    result=0;
//                  end
//        endcase
//    end
//endmodule



//*******************************************************************************************

`timescale 1ns / 1ps

module Case_3(
    input wire A,B,C,
    output wire F
    );
    
    reg F_v; 
    
          always@ (A) 
               begin    
                    case ({A,B,C})              //3 bitlik bir sayı elde ediyor.
                       3'b000 : F_v = 1'b1;        
                       3'b001 : F_v = 1'b0;
                       3'b010 : F_v = 1'b1;
                       3'b011 : F_v = 1'b0;
                       3'b100 : F_v = 1'b0;
                       3'b101 : F_v = 1'b0;
                       3'b110 : F_v = 1'b1;
                       3'b111 : F_v = 1'b0;
                       default : F_v = 1'bX;    //diğer durumlarda ne olacağını belirtir.
                    endcase
               end
    assign F=F_v;            //reg'i wire yapıyor aslında.   
endmodule
