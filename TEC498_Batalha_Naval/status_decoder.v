module status_decoder(input [1:0]A, output [3:0]X);

	or Or0(X[1], A[0], A[1]);
	or Or1(X[0], !A[0], A[1]);
	
	and And0(X[3], 1'b1, 1'b1);
	and And1(X[2], 1'b1, 1'b1);

endmodule
