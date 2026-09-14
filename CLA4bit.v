module CLA4bit(A, B, Cin, S, Cout);
    //Inputs
    input Cin;
    input [3:0] A, B;

    //Outputs
    output Cout;
    output [3:0] S;

    //Connections 
    wire [3:0] P, G;
    wire [4:0] C;


    //Getting the carry bits
    assign C[0] = Cin;
    assign C[1] = G[0] | (P[0] & C[0]);
    assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & C[0]);
    assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & C[0]);
    assign C[4] = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & C[0]);

    //Using the 1-bit full adders
    CLAFA fa0 (.A(A[0]), .B(B[0]), .C(C[0]), .S(S[0]), .P(P[0]), .G(G[0]));
    CLAFA fa1 (.A(A[1]), .B(B[1]), .C(C[1]), .S(S[1]), .P(P[1]), .G(G[1]));
    CLAFA fa2 (.A(A[2]), .B(B[2]), .C(C[2]), .S(S[2]), .P(P[2]), .G(G[2]));
    CLAFA fa3 (.A(A[3]), .B(B[3]), .C(C[3]), .S(S[3]), .P(P[3]), .G(G[3]));

    assign Cout = C[4];

    
endmodule