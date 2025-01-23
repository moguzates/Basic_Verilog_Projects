`timescale 10ns / 1ns

module Creating_Timing_2();

reg reset_value;
reg [3:0] data = 4'ha;

initial begin
    reset_value=1;
    #10;
    reset_value=0;
    #10;
    reset_value=1;
end

initial begin
    #10;
    data=4'b0010;
    #10;
    data=4'b1111;
end

//initial begin  //BURADA 2 KERE AYNI REG KULLANILAMADI. SEBEBI IKI MUSLUK YETMEDI.
//    reset_value=1;
//    #10;
//    reset_value=0;
//    #100;
//    reset_value=1;
//end  

endmodule