//ORNEKLEME
module top_m(
input wire in1,
input wire in2,
input wire in3,
output wire out1
    );
    
    wire x;
   
   
   //and icin instantiation
and_m and_m_inst(
.a(in1),
.b(in2),
.c(x)
);

    //or icin instantiation
or_m or_m_inst (
.d(x),
.e(in3),
.f(out1)
);
  
endmodule
