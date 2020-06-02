`include "Mux2a1_ochobitsL1.v"
module mux_4to1 (
	input clk_2f,
	input selector,
	input reset_L,
	input [7:0] in0,
	input [7:0] in1,
	input [7:0] in2,
	input [7:0] in3,
	input valid_bit0,
	input valid_bit1,
	input valid_bit2,
	input valid_bit3,
	output wire valid_bit_out1,
	output wire valid_bit_out2,
	output wire [7:0] data_out1,
	output wire [7:0] data_out2
	);
	/*wire valid_bit_mux1;
	wire valid_bit_mux2;
	wire [7:0] outMux1;
	wire [7:0] outMux2;*/
	//Logica para L1: MUX DE 4 A 2
  	mux_2to1_4bits  mux1 (clk_2f,reset_L,in0[7:0],in1[7:0],valid_bit0,valid_bit1,valid_bit_out1,data_out1[7:0]);
	mux_2to1_4bits  mux2 (clk_2f,reset_L,in2[7:0],in3[7:0],valid_bit2,valid_bit3,valid_bit_out2,data_out2[7:0]);
endmodule
