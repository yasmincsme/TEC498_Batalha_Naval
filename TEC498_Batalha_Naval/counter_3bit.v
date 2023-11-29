module counter_3bit(input clk, output [2:0]X);

	flipflop_T fft0(.clk(clk), .t(1'b1), .q(X[0]));
	flipflop_T fft1(.clk(X[0]), .t(1'b1), .q(X[1]));
	flipflop_T fft2(.clk(X[1]), .t(1'b1), .q(X[2]));


endmodule 