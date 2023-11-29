module main();

	input CH7, CH6, CH5, CH4, CH3, CH2, CH1, CH0;
	
	status_decoder status_decoder0(.A({CH7, CH6}), .X(coded_status));
	coordinate_attack_decoder coordinate_attack_decoder0(.A({CH2, CH1, CH0}), .X(coded_coordinate_column));
	counter_2bit counter0(input clk, output [1:0]X)
	
	mux4x1 mux0(input S0, input S1, .A(coded_status), .B({1'b0, CH5, CH4, CH3}), .C(coded_coordinate_column), .D(4'b0000), output X);
	
	
endmodule	
	
	
	
	
	
	
	
	
	