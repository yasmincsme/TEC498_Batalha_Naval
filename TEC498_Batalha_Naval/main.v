module main(input CH7, CH6, CH5, CH4, CH3, CH2, CH1, CH0, clock,
	input B1, B2, B3,
	output SEG_A_90, SEG_B_70, SEG_C_41, SEG_D_98, SEG_E_100, SEG_F_92, SEG_G_39, DIG_1_88, DIG_2_66, DIG_3_68, DIG_4_37,
	output MC0_97, MC1_99, MC2_95, MC3_82, MC4_78, ML0_85, ML1_83, ML2_84, ML3_87, ML4_81, ML5_91, ML6_89,
	led_RGB);
	wire [3:0]coded_status; 
	wire [3:0]decoded_coordinate_column;
	wire [3:0]mux_attack_output; 
	wire [1:0]counter_2bit_output; 
	wire debounce_output; 
	wire divclock; 
	
	frequency_divider FreqDiv0(.clk(clock), .divclock(divclock));
	counter_2bit Counter0(.clk(divclock), .X(counter_2bit_output));
	counter_2bit Counter1(.clk(debounce_output), .X(counter_map_output));  
	debounce Debounce0(.ruido(B3),.clk(divclock), .sem_ruido(debounce_output));	
	
	
	
		
	// Multiplexador 4x1 de 4 bits para variacao das informacoes referentes ao ataque
	
	status_decoder Decoder0(.A({CH7, CH6}), .X(coded_status)); 
	
	coordinate_attack_decoder Decoder1(.A({CH2, CH1, CH0}), .X(decoded_coordinate_column));
	
	mux4x1_4bits(.S1(counter_2bit_output[1]), .S0(counter_2bit_output[0]),
	.A(coded_status), 
	.B(4'b0000),
	.C(decoded_coordinate_column),
	.D({1'b0, CH5, CH4, CH3),
	.Y(mux_attack_output)); 
	
	// Multiplexador 4x1 de 4 bits para variacao das informacoes referentes ao posicionamento 
	
	
	
endmodule 
	
	
	
	
	
	
	
