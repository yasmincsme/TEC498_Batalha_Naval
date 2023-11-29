module demux1x64(input S0, S1, S2, S3, S4, S5, A, output A0, A1, A2, A3, A4, A5, A6, A7, B0, B1, B2, B3, B4, B5, B6, B7, C0, C1, C2, C3, C4, C5, C6, C7, D0, D1, D2, D3, D4, D5, D6, D7, E0, E1, E2, E3, E4, E5, E6, E7, F0, F1, F2, F3, F4, F5, F6, F7, G0, G1, G2, G3, G4, G5, G6, G7, H0, H1, H2, H3, H4, H5, H6, H7);

	wire wire_0, wire_1, wire_2, wire_3, wire_4, wire_5, wire_6, wire_7;

	demux1x8 demux0(.A(A), .S2(S5), .S1(S4), .S0(S3), .X(wire_0), .Y(wire_1), .Z(wire_2), .W(wire_3), .Q(wire_4), .R(wire_5), .S(wire_6), .T(wire_7));
	
	demux1x8 demux1(.A(wire_0), .S2(S2), .S1(S1), .S0(S0), .X(A0), .Y(A1), .Z(A2), .W(A3), .Q(A4), .R(A5), .S(A6), .T(A7));
	demux1x8 demux2(.A(wire_1), .S2(S2), .S1(S1), .S0(S0), .X(B0), .Y(B1), .Z(B2), .W(B3), .Q(B4), .R(B5), .S(B6), .T(B7));
	demux1x8 demux3(.A(wire_2), .S2(S2), .S1(S1), .S0(S0), .X(C0), .Y(C1), .Z(C2), .W(C3), .Q(C4), .R(C5), .S(C6), .T(C7));
	demux1x8 demux4(.A(wire_3), .S2(S2), .S1(S1), .S0(S0), .X(D0), .Y(D1), .Z(D2), .W(D3), .Q(D4), .R(D5), .S(D6), .T(D7));
	demux1x8 demux5(.A(wire_4), .S2(S2), .S1(S1), .S0(S0), .X(E0), .Y(E1), .Z(E2), .W(E3), .Q(E4), .R(E5), .S(E6), .T(E7));
	demux1x8 demux6(.A(wire_5), .S2(S2), .S1(S1), .S0(S0), .X(F0), .Y(F1), .Z(F2), .W(F3), .Q(F4), .R(F5), .S(F6), .T(F7));
	demux1x8 demux7(.A(wire_6), .S2(S2), .S1(S1), .S0(S0), .X(G0), .Y(G1), .Z(G2), .W(G3), .Q(G4), .R(G5), .S(G6), .T(G7));
	demux1x8 demux8(.A(wire_7), .S2(S2), .S1(S1), .S0(S0), .X(H0), .Y(H1), .Z(H2), .W(H3), .Q(H4), .R(H5), .S(H6), .T(H7));

endmodule 



