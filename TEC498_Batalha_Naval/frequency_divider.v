module frequency_divider(input clk, output divclock);
 wire [14:0] W;

 flipflop_T fft0(.clk(clk), .t(1'b1), .q(W[0]));
 flipflop_T fft1(.clk(W[0]), .t(1'b1), .q(W[1]));
 flipflop_T fft2(.clk(W[1]), .t(1'b1), .q(W[2]));
 flipflop_T fft3(.clk(W[2]), .t(1'b1), .q(W[3]));
 flipflop_T fft4(.clk(W[3]), .t(1'b1), .q(W[4]));
 flipflop_T fft5(.clk(W[4]), .t(1'b1), .q(W[5]));
 flipflop_T fft6(.clk(W[5]), .t(1'b1), .q(W[6]));
 flipflop_T fft7(.clk(W[6]), .t(1'b1), .q(W[7]));
 flipflop_T fft8(.clk(W[7]), .t(1'b1), .q(W[8]));
 flipflop_T fft9(.clk(W[8]), .t(1'b1), .q(W[9]));
 flipflop_T fft10(.clk(W[9]), .t(1'b1), .q(W[10]));
 flipflop_T fft11(.clk(W[10]), .t(1'b1), .q(W[11]));
 flipflop_T fft12(.clk(W[11]), .t(1'b1), .q(W[12]));
 flipflop_T fft13(.clk(W[12]), .t(1'b1), .q(W[13]));
 flipflop_T fft14(.clk(W[13]), .t(1'b1), .q(W[14]));
 flipflop_T fft15(.clk(W[14]), .t(1'b1), .q(divclock));

endmodule 