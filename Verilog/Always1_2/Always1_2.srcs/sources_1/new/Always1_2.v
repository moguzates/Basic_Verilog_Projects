////******************************************************************************************************************************
//`timescale 1ns / 1ns
//module Always1_2(

//output reg d,  //TB ler i�eride yaz�ld��� i�in input yok
//output reg c

//);

//reg clk=0; //normalde input bu olmal�yd� fakat burada �imdilik kod veTB i�ieride yaz�l�yor

//always begin 

//#10 clk=~clk;

//end
//endmodule

////`timescale 1ns / 1ns

////module Always1_2(
////);
////reg clk;

////always begin

////#10 clk=1'b0;
////#10 clk=1'b1;

////end

////endmodule
////******************************************************************************************************************************



////******************************************************************************************************************************
`timescale 1ns / 1ns

module Always1_2(
    output reg d,
    output reg c
    );
    
    reg a=0;
    reg b=0;
    reg e=0;
    
    always@ (a,b,e) begin  //sentezleme kodlar� yani FPGA i�erisine atabilirm demek   
    c=a&b;
    d=e;
    end
    
    //testbench
    initial begin
    #100
    a=1;
    b=1;
    c=1;
    end   
endmodule


//`timescale 1ns / 1ns

//module Always1_2(
//output reg a=0,
//output reg b=0
//);
   
//    reg d=0;
//    reg c=0;
    
    
//always@ (a,b)
//begin
    
//    #10 c=a&b;
//    #10 c=a^b;

//end

//    always begin
//    #50 d=~d;
//    end

//initial begin
//    #100
//    a=1;
//    b=1;
//    c=1;
    
//end

//endmodule

//`timescale 1ns / 1ns

//module Always1_2(
//    input wire a,b,e,
//    output reg d,
//    output reg c
//    );
    
//    always@ (a,b,e) begin  //sentezleme kodlar� yani FPGA i�erisine atabilirm demek   
//    c=a&b;
//    d=~e;
//    end

//endmodules
