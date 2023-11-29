module demux1x2(input A, S, output X, Y);

	and And0(X, !S, A);
	and And1(Y, S, A);
	
endmodule
