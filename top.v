module top(
    input [3:0] A, B;
    input Cin, MS;
    output [3:0] Anode;
    output [7:0] Seg;
);

//Declare intermediate wires
wire [3:0] S;
wire Cout;
wire [3:0] MO;

//Instantate 4-bit CLA
CLA4bit adder (.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));



endmodule