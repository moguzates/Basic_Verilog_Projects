module Examples2_1(
    input A,
    input B,
    input C,
    output F
    );
    
    assign F= (A == 1'b0) && (B == 1'b0) && (C == 1'b0) ? 1'b1 :
              (A == 1'b0) && (B == 1'b0) && (C == 1'b1) ? 1'b0 :  
              (A == 1'b0) && (B == 1'b1) && (C == 1'b0) ? 1'b1 :
              (A == 1'b0) && (B == 1'b1) && (C == 1'b1) ? 1'b0 :
              
              (A == 1'b1) && (B == 1'b0) && (C == 1'b0) ? 1'b0 :
              (A == 1'b1) && (B == 1'b0) && (C == 1'b1) ? 1'b0 :
              (A == 1'b1) && (B == 1'b1) && (C == 1'b0) ? 1'b1 :
              (A == 1'b1) && (B == 1'b1) && (C == 1'b1) ? 1'b0 :
              1'b0;  //hi� biri olmam��sa 0 basacak sonu�
    
endmodule
