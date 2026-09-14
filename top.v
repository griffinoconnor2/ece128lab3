module top(
    input [3:0] A, B,
    input Cin, MS,
    output [3:0] Anode,
    output [7:0] Seg
);

//Enable anode corresponding to rightmost 7SD digit
assign Anode = 4'b1110;

//Declare intermediate wires
wire [3:0] S;
wire Cout;
wire [3:0] MO;

//Instantate 4-bit CLA
CLA4bit adder (.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));

//Instantiate Mux
Mux2to1 mux (.in0(S), .in1(A), .MS(MS), .MO(MO));

//Instantaite BCDto7SD 
BCDto7SD converter (.in(MO), .Seg(Seg));

endmodule