module mux2x1_4bits(Y,S,B,A);

	input [3:0]A;
	input [3:0]B;
	input S;
	output [3:0]Y;
	
	wire T1, T2, T3, T4, T5, T6, T7, T8;
	
	and And0(T1, A[0], !S);
	and And1(T2, B[0], S);
	or Or0(Y[0], T1, T2);
	
	and And2(T3, A[1], !S);
	and And3(T4, B[1], S);
	or Or1(Y[1], T3, T4);
	
	and And4(T5, A[2], !S);
	and And5(T6, B[2], S);
	or Or2(Y[2], T5, T6);
	
	and And6(T7, A[3], !S);
	and And7(T8, B[3], S);
	or Or3(Y[3], T7, T8);
	
endmodule 