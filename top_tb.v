`timescale 1ns/1ps

module top_tb;
    //Inputs and outputs
    reg [3:0] A, B;
    reg Cin, MS;
    wire [3:0] Anode;
    wire [6:0] Seg;

    //Creating unit under testing
    top uut(.A(A), .B(B), .Cin(Cin), .MS(MS), .Anode(Anode), .Seg(Seg));


    //Perform various tests
    initial begin

    //Test Case 1: 3 + 4 = 7 (no carry in) (Either displaying input A or Output sum)
    A = 4'b0011; B = 4'b0100; Cin  = 1'b0; MS = 1'b0; #10;
    A = 4'b0011; B = 4'b0100; Cin  = 1'b0; MS = 1'b1; #10;

    //Test Case 2: 3 + 4 + 1 = 8 (w/ carry in)
    A = 4'b0011; B = 4'b0100; Cin  = 1'b1; MS = 1'b0; #10;
    A = 4'b0011; B = 4'b0100; Cin  = 1'b1; MS = 1'b1; #10;

    //Test Case 3: 8 + 8 = 16 (testing if Cout = 1/overflow to S = 0)
    A = 4'b1000; B = 4'b1000; Cin  = 1'b0; MS = 1'b0; #10;
    A = 4'b1000; B = 4'b1000; Cin  = 1'b0; MS = 1'b1; #10;

    //Test Case 4: 0 + 0 = 0 (no carry in)
    A = 4'b0000; B = 4'b0000; Cin  = 1'b0; MS = 1'b0; #10;
    A = 4'b0000; B = 4'b0000; Cin  = 1'b0; MS = 1'b1; #10;

    //Test Case 5: 15 + 15 + 1 (max possible value w/ carry in, expect S = 15 & Cout = 1)
    A = 4'b1111; B = 4'b1111; Cin  = 1'b1; MS = 1'b0; #10;
    A = 4'b1111; B = 4'b1111; Cin  = 1'b1; MS = 1'b1; #10;

    $finish;
    end 

endmodule