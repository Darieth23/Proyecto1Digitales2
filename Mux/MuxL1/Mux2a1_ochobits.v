`include "Mux2a1_cuatrobits.v"
module  mux_2to1_4bits (
	input selector,
	input reset_L,
	input [7:0] in0,
	input [7:0] in1,
	input valid_bit0,
	input valid_bit1,
	output wire valid_bit_out,
	output wire [7:0] data_out
	);
	wire bittemporal;
  	mux_conductual  mux1 (selector,reset_L,in0[3:0],in1[3:0],valid_bit0,valid_bit1,valid_bit_out,data_out[3:0]);
	mux_conductual  mux2 (selector,reset_L,in0[7:4],in1[7:4],valid_bit0,valid_bit1,bittemporal,data_out[7:4]);
endmodule
