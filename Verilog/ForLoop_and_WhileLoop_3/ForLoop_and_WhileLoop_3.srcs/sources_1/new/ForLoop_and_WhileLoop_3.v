//*****************************For Loops***********************************
`timescale 1ns / 1ps
module ForLoop_and_WhileLoop_3(

    );
    integer i;
    integer count;
    integer son;
    
   initial begin                           //initial ile kodu koşturmayı açtık
        for(i = 0 ; i <= 15 ; i=i+1) begin //i eşittir 0 iken eğer 15 sayısından bir küçükse i'yi bir arttır demek.
        count = i;
        #10;
        end
        #10;
        son=i;
    end
endmodule


////*****************************While Loops***********************************
//`timescale 1ns / 1ps
//module ForLoop_and_WhileLoop_3(

//    );
//    reg clk;
//    reg EN=1;
//    initial begin
//    clk=0
//        while (EN==1)       //while 1 iken şdvmoemvmjmvevnvnwlvmilmvmlmvğemvöşvşev,öepmvwvwvimomwv
          
           
//        #10 clk = ~clk;
        
//    end
        
//        endmodule
