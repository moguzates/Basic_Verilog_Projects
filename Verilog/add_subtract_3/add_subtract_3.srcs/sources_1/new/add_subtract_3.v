`timescale 1ns / 1ps

module add_subtract_3(
    input wire [3:0] A,
    input wire [3:0] B,
    input wire addorsub,
    output reg [4:0] sum,
    output reg [4:0] sub
    );
    
    always @(*)begin
    
        if(addorsub==1'b1)
            begin
                 sum=A+B;
            end
        else 
            begin
                 sub=A-B;
            end
    end
 
endmodule
