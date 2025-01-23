module full_adder(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
    wire x,y,z;
    
    assign x=a^b;
    assign y=a&b;
    assign z=x&cin;
    assign x=x^cin;
    assign cout=z|y;

endmodule
