module demux1x8(input A, S2, S1, S0, output X, Y, Z, W, Q, R, S, T);

	wire wire_1, wire_2;

	demux1x2 demux0(.A(A), .S(S2), .X(wire_1), .Y(wire_2));
	demux1x4 demux1(.A(wire_1), .S1(S1), .S0(S0), .X(X), .Y(Y), .Z(Z), .W(W));
	demux1x4 demux2(.A(Wire_2), .S1(S1), .S0(S0), .X(Q), .Y(R), .Z(S), .W(T));
	
endmodule
