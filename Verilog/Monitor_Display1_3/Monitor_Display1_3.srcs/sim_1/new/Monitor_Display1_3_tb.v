`timescale 1ns / 1ps
module Monitor_Display1_3_tb();
reg A_tb        ;
reg B_tb        ;
reg C_tb        ;
wire F_tb       ;
wire [2:0] ABC  ;

 Monitor_Display1_3 UDT(
.A(A_tb),
.B(B_tb),
.C(C_tb),
.F(F_tb)
    );
    
  assign ABC = (A_tb, B_tb, C_tb);
  
  
  initial begin 
 ///////////////////////////////////
        A_tb = 1'b0;
        B_tb = 1'b0;
        C_tb = 1'b0;
        #1 $write ("%b | %b , ABC, F_tb");
    if (F_tb==1)
        $display ("pass");
    else
        $display ("fail");  
///////////////////////////////////
        A_tb = 1'b1;
        B_tb = 1'b0;
        C_tb = 1'b0;
        #1 $write ("%b | %b , ABC, F_tb");
    if (F_tb==0)
        $display ("pass");
    else
        $display ("fail");
///////////////////////////////////
        #10 $finish;
  end
endmodule
