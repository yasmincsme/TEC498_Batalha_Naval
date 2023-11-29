module mux4x1(input S0, input S1, input A, B, C, D, output X);

	wire wire_0;
	wire wire_1;
	
	mux2x1 mux0(.S(S1), .A(A), .B(B), .X(wire_0));
	mux2x1 mux1(.S(S1), .A(D), .B(C), .X(wire_1));
	mux2x1 mux2(.S(S0), .A(wire_0), .B(wire_1), .X(X));

endmodule 