
`timescale 1ns / 1ps

module If_Else_3(
    input wire [3:0] A,
    output reg result
    );
    
//Test****************************************
//    reg [3:0] A = 4'h0;
//    always begin
//    #10
//    A=A+1;
//    end
//********************************************

    always@ (A)
    begin
        if(A==5) begin
            result=1'b1;
        end
        
        else if (A==2) begin
            result=1'b1;
        end
        
        else begin
            result=1'b0;
        end
    end
endmodule



//**************************************************2************************************************
//`timescale 1ns / 1ps
//module If_Else_3(
////    input wire A,
////    input wire B,
////    input wire C,
//    output reg F
//    );
//    reg F_v;
    
//    //testbench************************************************************
//    reg A=1'b0;
//    reg B=1'b0;
//    reg C=1'b0;
//    initial begin
//        #10 F_v=1'b0;
//    end
//    //*********************************************************************
//    always@(A,B,C) begin
//        if (A==1'b0 && B==1'b0 && C==1'b0) begin
//        F_v=1;
//        end
//        else if (A==1'b0 && B==1'b1 && C==1'b0) begin
//        F_v=1;
//        end
//        else if (A==1'b1 && B==1'b1 && C==1'b0) begin
//        F_v=1;
//        end
//        else begin
//        F_v=0;
//        end
//    end
//endmodule

