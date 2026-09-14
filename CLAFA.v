module CLAFA(A, B, C, P, G, S);

    //Inputs and outputs
    input A, B, C;
    output P, G, S;

    //Propagation and Generated signals 
    assign P = A ^ B;
    assign G = A & B;

    //Sum bit
    assign S = P ^ C;
endmodule