`timescale 	1ns				/ 100ps		// escala
// includes de archivos de verilog
`include "serialtopar.v"
`include "serialtopar_synth.v"
`include "probador.v"
`include "cmos_cells.v"

module tb(); // Testbench
	//wires de interconexion del modulo y su probador
	wire[7:0] 	IDLE_out_c, IDLE_out_e, IDL;
	wire 		clk_4f, clk_32f, reset_L;


	// Instanciacion de modulos con los parametros definidos
	serialtopar s2p_con(/*autoinst*/
			.IDLE_out(IDLE_out_c[7:0]),
			.clk_4f(clk_4f),
			.clk_32f(clk_32f),
			.reset_L(reset_L),
			.IDL(IDL));

	serialtopar_synth s2p_est(/*autoinst*/
			.IDLE_out(IDLE_out_e[7:0]),
			.clk_32f(clk_32f),
			.clk_4f(clk_4f),
			.IDL(IDL),
			.reset_L(reset_L));
		
	probador test (/*autoinst*/
			.clk_4f(clk_4f),
			.clk_32f(clk_32f),
			.reset_L(reset_L),
			.IDL(IDL),
			.IDLE_out_c(IDLE_out_c[7:0]),
			.IDLE_out_e(IDLE_out_e[7:0]));
endmodule
