module Mux2to1(
    input [3:0] in0,
    input [3:0] in1,
    input MS,
    output [3:0] MO
);

//Apply selection logic using conditional operator (display in1 MS = 1, in0 if MS = 0)
assign MO = MS ? in1 : in0;

endmodule