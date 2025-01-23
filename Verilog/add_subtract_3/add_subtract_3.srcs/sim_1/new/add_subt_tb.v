//`timescale 1ns / 1ns

//module add_subt_tb();

//    reg [3:0] tb_A    ;
//    reg [3:0] tb_B    ;
//    reg tb_addorsub   ;
//    wire [4:0] tb_sum ;
//    wire [4:0] tb_sub ;

//add_subtract_3 DUT(
//.A          (tb_A),
//.B          (tb_B),
//.addorsub   (tb_addorsub),
//.sum        (tb_sum),
//.sub        (tb_sub)
//    );

//    initial begin
//        tb_A=0;
//        tb_B=0;
//        tb_addorsub=0;
//        #10;
//        tb_A=5;
//        tb_B=3;
//        tb_addorsub=1;
//        #10;
//        tb_A=5;
//        tb_B=3;
//        tb_addorsub=0;
//        #10;
//     $finish;
//    end
//endmodule


`timescale 1ns / 1ns

module add_subt_tb();

    reg [3:0] tb_A  =0  ;
    reg [3:0] tb_B  =0  ;
    reg tb_addorsub =0  ;
    wire [4:0] tb_sum ;
    wire [4:0] tb_sub ;

add_subtract_3 DUT(
.A          (tb_A),
.B          (tb_B),
.addorsub   (tb_addorsub),
.sum        (tb_sum),
.sub        (tb_sub)
    );
    
    reg clk=0;
    always begin
         #5 clk=~clk;
    end
    
    always @(posedge (clk)) begin
         tb_A<=tb_A+1;
         tb_B<=tb_B+2;
    end
    
    always begin
    #30 tb_addorsub=~tb_addorsub;
    end
endmodule
