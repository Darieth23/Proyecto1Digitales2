`timescale 	1ns				/ 100ps		// escala
// includes de archivos de verilog
`include "serialtopar.v"
`include "serialtopar_synth.v"
`include "probador.v"
`include "cmos_cells.v"

module tb(); // Testbench
	//wires de interconexion del modulo y su probador
	wire[7:0] 	data_out_c, data_out_e;
	wire 		clk_4f, clk_32f, reset_L, data_in, valid_out_c, valid_out_e;

	// Instanciacion de modulos con los parametros definidos
	serialtopar s2p_con(/*autoinst*/
			.data_out(data_out_c[7:0]),
			.valid_out(valid_out_c),
			.clk_4f(clk_4f),
			.clk_32f(clk_32f),
			.reset_L(reset_L),
			.data_in(data_in));

	serialtopar_synth s2p_est(/*autoinst*/
			.data_out(data_out_e[7:0]),
			.valid_out(valid_out_e),
			.clk_32f(clk_32f),
			.clk_4f(clk_4f),
			.data_in(data_in),
			.reset_L(reset_L));
		
	probador test (/*autoinst*/
			.clk_4f(clk_4f),
			.clk_32f(clk_32f),
			.reset_L(reset_L),
			.data_in(data_in),
			.data_out_c(data_out_c[7:0]),
			.data_out_e(data_out_e[7:0]),
			.valid_out_c(valid_out_c),
			.valid_out_e(valid_out_e));
endmodule
