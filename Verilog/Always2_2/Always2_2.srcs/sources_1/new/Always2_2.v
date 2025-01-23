////*************************************************Always Combinational Logic*************************************************************

//////yöntem 1 ********************
////`timescale 1ns / 1ps
////module Always2_2(
////    input wire a,
////    input wire b,
////    input wire c,
////    output wire d
////    );
////    assign d=(a&b)|c;
////endmodule


////yöntem 2 ********************
//`timescale 1ns / 1ps
//module Always2_2(
//    output reg d
//    );

//  //TestBench
//    reg a,b,c;
//    initial begin
//    a=0;
//    b=0;
//    c=0;
//    #10;
//    c=1;
//    end
    
//    always@(a,b,c) begin
//        d=(a&b)|c;
//    end
//endmodule


//////yöntem 3 ********************
////`timescale 1ns / 1ps
////module Always2_2(
////    output reg d
////    );
    
////    //TestBench
////    reg a,b,c;
////    initial begin
////    a=1;
////    b=0;
////    c=0;
////    #10;
////    c=1;
////    end
    
////   always@(a,b,c) begin
////   d=(a|b)& c;
////   end
   
////endmodule


//*************************************************Always Sequential Logic (SIRALI)*************************************************************
`timescale 1ns / 1ps

module Always2_2(
    output reg D
    );
    
    //Clock Generate --------------------------------------------- 
    reg clk=1'b0;
    always begin
        #5 clk=~clk;
    end
    //--------------------------------------------------------------
    
    //Sequantiel Logic --------------------------------------------    
    reg A,B,C;
    always@ (posedge (clk)) begin 
        B <= A;
        C <= B;
        D <= C;
    end
    //--------------------------------------------------------------
    
    //TestBench ---------------------------------------------------
    initial begin
        A=0;
        B=0;
        C=0;
        
        #10;
        A=1;
        #10;
        A=0;        
     end
    //--------------------------------------------------------------
    
endmodule


////SENTEZLENM�� HAL�**************************************************
//`timescale 1ns / 1ps

//module Always2_2(
//    input wire A, clk, 
//    output reg D
//    );
    
//    //Sequantiel Logic --------------------------------------------    
//    reg B,C;
//    always@ (posedge (clk)) begin
//        B <= A;
//        C <= B;
//        D <= C;
//    end
//    //--------------------------------------------------------------
    
//  endmodule






