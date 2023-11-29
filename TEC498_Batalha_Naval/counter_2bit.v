module counter_2bit(input clk, output [1:0]X);

	flipflop_T fft0(.clk(clk), .t(1'b1), .q(X[0]));
	flipflop_T fft1(.clk(X[0]), .t(1'b1), .q(X[1]));

endmodule 