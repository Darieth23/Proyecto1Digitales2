`include "Mux2a1_ochobits.v"
module mux2to1_L2 (
	input clk_4f,
	input selector,
	input reset_L,
	input [7:0] in0,
	input [7:0] in1,
	input valid_bit0,
	input valid_bit1,
	output wire valid_bit_out1,
	output wire [7:0] data_out1
	);
	/*wire valid_bit_mux1;
	wire valid_bit_mux2;
	wire [7:0] outMux1;
	wire [7:0] outMux2;*/
	//Logica para L1: MUX DE 2 A 1
  	mux_2to1_4bits  mux1_L2(clk_4f,reset_L,in0[7:0],in1[7:0],valid_bit0,valid_bit1,valid_bit_out1,data_out1[7:0]);
endmodule
