`timescale 1ns / 1ps

module Monitor_Display1_3_tb();
reg A_TB,B_TB,C_TB;
wire F_TB         ;
wire [2:0] ABC    ;

 Monitor_Display1_3 DUT(
.A(A_TB),
.B(B_TB),
.C(C_TB),
.F(F_TB)
    );
    
  assign ABC ={A_TB,B_TB,C_TB};  //Birleşitmrme operatörü {} curly braces ile gösterilir. ABC 3 bitlik bir sayıyı bilreştirdik.
  
  
  initial begin 
 ///////////////////////////////////
        A_TB = 1'b0;
        B_TB = 1'b0;
        C_TB = 1'b0;
        #1 $write ("%b | %b",ABC, F_TB);  //write yerine display yazılsaydı pass ayzısı aşşağı satıra geçecekti çıktıda. %b ise binary olarak kullanılır.
    if (F_TB==1)
        $display (" pass");
    else
        $display (" fail");  
///////////////////////////////////
        A_TB = 1'b1;
        B_TB = 1'b0;
        C_TB = 1'b0;
        #1 $write ("%b | %b", ABC, F_TB);
    if (F_TB==0)
        $display (" pass");
    else
        $display (" fail");
///////////////////////////////////
        #10 $finish;
  end
endmodule


// "%b | %b":
//Bu yazılacak olan format dizesidir. %b binary biçimde değerin yazılması için kullanılan bir format belirleycisidir.
