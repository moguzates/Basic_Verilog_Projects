module Puzzle_1(
    input cable1,
    input cable2
    );
reg data = 1'b0;  //1 bitlik 1 0, 0 atandi
wire kablo = 1'b1; //1 bitlik 1 atandi
reg [7:0] dataVector; //8 bitlik sayi, 7 down to 0 datavector degiskeni tanimlandi
wire [1:8] dataVector2; // 1 up to 8 datavector2 degiskeni tanimlandi
reg [2:0] mem[0:1];  //2 bitlik reg degerine mem atandi ve 0 dan 1 e 2 tane mem degiskeni yapildi daha fazla yapilabilir.

     initial begin
     mem[0]=3'b111;  // memin 0. icin 7 degeri atandi
     mem[1]=3'b101;  //memin 1. degerine 5 degeri atandi
     end

     initial begin
     dataVector = 8'h05; //8 bitlik hex 05 de�eri  yani 0000_0101 
     end
         
     assign dataVector2 = 8'b0000_0101;

endmodule
