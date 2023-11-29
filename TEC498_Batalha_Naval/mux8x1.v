module mux8x1(input S0, S1, S2, input A, B, C, D, input E, F, G, H, output X);

 wire wire_0, wire_1;

 mux4x1 mux0(.S0(S0), .S1(S1), .A(A), .B(B), .C(C), .D(D), .X(wire_0));
 mux4x1 mux1(.S0(S0), .S1(S1), .A(E), .B(F), .C(G), .D(H), .X(wire_1));
 mux2x1 mux2(.S(S2), .A(wire_0), .B(wire_1), .X(X));

endmodule
