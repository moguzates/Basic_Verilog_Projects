`timescale 1ns / 1ps
module Test_Benches_3_TB();
    reg  tb_A  ;
    reg  tb_B  ;
    reg  tb_C  ;
    wire tb_F  ;
   
Test_Benches_3 DUT(
.A (tb_A),
.B (tb_B),
.C (tb_C),
.F (tb_F)
       );
       
       initial begin
            tb_A=0 ; tb_B=0 ; tb_C=0;
        #10 tb_A=0 ; tb_B=0 ; tb_C=1; 
        #10 tb_A=0 ; tb_B=1 ; tb_C=0;
        #10 tb_A=0 ; tb_B=1 ; tb_C=1; 
        #10 tb_A=1 ; tb_B=0 ; tb_C=0;
        #10 tb_A=1 ; tb_B=0 ; tb_C=1; 
        #10 tb_A=1 ; tb_B=1 ; tb_C=0;
        #10 tb_A=1 ; tb_B=1 ; tb_C=1;
       
       end

endmodule
