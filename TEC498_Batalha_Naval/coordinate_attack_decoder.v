module coordinate_attack_decoder(input [2:0]A, output [3:0]X);//Decodificador para coordenadas de ataque - colunas
	
	and And0(X[3], 1'b1, 1'b1);
	and And1(X[2], A[2], 1'b1);
	
	and And2(X[1], !A[2], A[1]);
	and And3(X[0], !A[2], A[0]);
	
endmodule 