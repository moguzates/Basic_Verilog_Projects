////************************************************1. Example********************************************************
//`timescale 1ns / 1ps

//module Always_Examples_2(
//    input wire A,
//    input wire B,
//    input wire C,
//    output wire s
//    );
    
//    reg nl, s_v;
    
//    always@(A,B,C) begin
//    nl=A^B;
//    s_v=nl^C;
//    end
    
//    assign s=s_v;
    
//endmodule


//************************************************2. Example********************************************************
//MUX yaptık
`timescale 1ns / 1ps
module Always_Examples_2(
    input wire A,
    input wire wr_en,
    input wire rd_en,
    output reg F
    );
  always@(*)
    begin
        if(wr_en==1)
            begin
                if(rd_en==1) //if else arasında farklı if else varsa begin end ekelnir tekrardan
                F=A;
                else
                F=0;
            end
        else
        F=0;
    end
endmodule



