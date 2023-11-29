module demux1x4(input A, input S1, S0, output X, Y, Z, W);

	and And0(X, A, !S1, !S0);
	and And1(Y, A, !S1, S0);
	and And2(Z, A, S1, !S0);
	and And3(W, A, S1, S0);
	
endmodule

	
	