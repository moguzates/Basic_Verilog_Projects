`timescale 1ns / 1ps


module Test_Benches_3(
    input A,
    input B,
    input C,
    output F
    );
    reg F_v;
    always @ (*) begin
        case ({A,B,C})
            3'b000 : F_v=1'b1;
            3'b010 : F_v=1'b1;
            3'b110 : F_v=1'b1;
            default F_v=1'b0;
        endcase
    end
    assign F=F_v;
endmodule
