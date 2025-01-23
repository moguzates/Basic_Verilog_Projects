module Top(
input wire[3:0] A,
input wire[3:0] B, 
input wire[3:0] Cin,
output wire[3:0] S,
output wire[3:0] Cout
    );
    
    wire [2:0] C;
full_adder full_adder_copy0(
.a(A[0]),
.b(B[0]),
.cin(1'b0),
.s(S[0]),
.cout(C[0])
);    

full_adder full_adder_copy1(
.a(A[1]),
.b(C[1]),
.cin(C[0]),
.s(S[1]),
.cout(C[1])
);    

full_adder full_adder_copy2(
.a(A[2]),
.b(B[2]),
.cin(C[1]),
.s(S[2]),
.cout(C[2])
);    
    
full_adder full_adder_copy3(
.a(A[3]),
.b(B[3]),
.cin(C[2]),
.s(S[3]),
.cout(Cout)
);    
    
    
    
    
    
    
    
    
    
    
    
    
endmodule
