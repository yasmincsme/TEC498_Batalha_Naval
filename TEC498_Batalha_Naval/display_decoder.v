module display_decoder(input [3:0]Q, output A, B, C, D, E, F, G); //Decodificador que precede o display
	
	wire A1, A2, A3, A4, A5;
	wire B1, B2, B3, B4, B5;
	wire C1, C2;
	wire D1, D2, D3, D4;
	wire E1, E2;
	wire F1, F2, F3;
	
	
	//Expressao saida A
	and And0(A1, !Q[2], !Q[1], Q[0]);
	and And1(A2, !Q[3], Q[2], !Q[0]);
	and And2(A3, !Q[3], Q[2], Q[1]);
	and And3(A4, Q[3], Q[1], Q[0]);
	and And4(A5, Q[3], !Q[2], Q[1]);
	or Or0(A, A1, A2, A3, A4, A5);
	
	//Expressao saida B
	and And5(B1, !Q[3], Q[1], !Q[0]);
	and And6(B2, !Q[2], Q[1], !Q[0]);
	and And7(B3, !Q[3], Q[2], Q[0]);
	and And8(B4, Q[3], !Q[2], !Q[1], Q[0]);
	and And9(B5, Q[3], Q[2], !Q[1], !Q[0]);
	or Or1(B, B1, B2, B3, B4, B5);
	
	//Expressao saida C
	and And10(C1, !Q[2], Q[1], !Q[0]);
	and And11(C2, Q[3], Q[2], !Q[0]);
	or Or2(C, C1, C2);
	
	//Expressao saida D
	and And12(D1, !Q[3], !Q[2], !Q[1], Q[0]);
	and And13(D2, !Q[3], Q[2], !Q[1], !Q[0]);
	and And14(D3, Q[3], !Q[2], !Q[1], !Q[0]);
	and And15(D4, Q[3], Q[2], Q[1]);
	or Or3(D, D1, D2, D3, D4);
	
	//Expressao saida E
	and And16(E1, !Q[3], !Q[2], Q[0]);
	and And17(E2, !Q[3], Q[2], !Q[1]);
	or Or4(E, E1, E2);
	
	//Expressao saida F
	and And18(F1, !Q[3], !Q[2], Q[0]);
	and And19(F2, !Q[2], Q[1]);
	and And20(F3, Q[3], Q[2], !Q[1], Q[0]);
	or Or5(F, F1, F2, F3);
	
	//Expressao saida G
	and And21(G, !Q[3], !Q[2], !Q[1]);
	
endmodule 