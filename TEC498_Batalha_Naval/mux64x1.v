module mux64x1(input A0, A1, A2, A3, A4, A5, A6, A7,
	input B0, B1, B2, B3, B4, B5, B6, B7,
	input C0, C1, C2, C3, C4, C5, C6, C7,
	input D0, D1, D2, D3, D4, D5, D6, D7,
	input E0, E1, E2, E3, E4, E5, E6, E7, 
	input F0, F1, F2, F3, F4, F5, F6, F7, 
	input G0, G1, G2, G3, G4, G5, G6, G7, 
	input H0, H1, H2, H3, H4, H5, H6, H7,	
	input S5, S4, S3, S2, S1, S0,
	output X);
	
	wire wire_0, wire_1, wire_2, wire_3, wire_4, wire_5, wire_6, wire_7; 
	
	mux8x1 mux8x1_01(.S0(S3), .S1(S4), .S2(S5), .A(A0), .B(B0), .C(C0), .D(D0), .E(E0), .F(F0), .G(G0), .H(H0), .X(wire_0));
	mux8x1 mux8x1_02(.S0(S3), .S1(S4), .S2(S5), .A(A1), .B(B1), .C(C1), .D(D1), .E(E1), .F(F1), .G(G1), .H(H1), .X(wire_1));
	mux8x1 mux8x1_03(.S0(S3), .S1(S4), .S2(S5), .A(A2), .B(B2), .C(C2), .D(D2), .E(E2), .F(F2), .G(G2), .H(H2), .X(wire_2));
	mux8x1 mux8x1_04(.S0(S3), .S1(S4), .S2(S5), .A(A3), .B(B3), .C(C3), .D(D3), .E(E3), .F(F3), .G(G3), .H(H3), .X(wire_3));
	mux8x1 mux8x1_05(.S0(S3), .S1(S4), .S2(S5), .A(A4), .B(B4), .C(C4), .D(D4), .E(E4), .F(F4), .G(G4), .H(H4), .X(wire_4));
	mux8x1 mux8x1_06(.S0(S3), .S1(S4), .S2(S5), .A(A5), .B(B5), .C(C5), .D(D5), .E(E5), .F(F5), .G(G5), .H(H5), .X(wire_5));
	mux8x1 mux8x1_07(.S0(S3), .S1(S4), .S2(S5), .A(A6), .B(B6), .C(C6), .D(D6), .E(E6), .F(F6), .G(G6), .H(H6), .X(wire_6));
	mux8x1 mux8x1_08(.S0(S3), .S1(S4), .S2(S5), .A(A7), .B(B7), .C(C7), .D(D7), .E(E7), .F(F7), .G(G7), .H(H7), .X(wire_7));
	
	mux8x1 mux8x1_09(.S0(S0), .S1(S1), .S2(S2), .A(wire_0), .B(wire_1), .C(wire_2), .D(wire_3), .E(wire_4), .F(wire_5), .G(wire_6), .H(wire_7), .X(X));

	
endmodule	