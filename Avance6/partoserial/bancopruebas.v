`timescale 1ns /100 ps

`include "probador.v"
`include "partoserial.v"
`include "partoserialSynth.v"

module bancopruebas;
    wire[7:0] data_in;
    wire clk_4f,clk_32f,reset,valid_in,data_out_conduc,data_out_estruct;
    
    
	partoserial modul_cond(/*AUTOINST*/
			       // Outputs
			       .data_out	(data_out_conduc),
			       // Inputs
			       .data_in		(data_in[7:0]),
			       .valid_in	(valid_in),
			       .reset		(reset),
			       .clk_32f		(clk_32f)); 
	partoserialSynth modul_estruct(/*AUTOINST*/
				       // Outputs
				       .data_out	(data_out_estruct),
				       // Inputs
				       .clk_32f		(clk_32f),
				       .data_in		(data_in[7:0]),
				       .reset		(reset),
				       .valid_in	(valid_in));  
	probador mi_probador(/*AUTOINST*/
			     // Outputs
			     .data_in		(data_in[7:0]),
			     .valid_in		(valid_in),
			     .reset		(reset),
			     .clk_32f		(clk_32f),
			     // Inputs
			     .data_out_conduc	(data_out_conduc),
			     .data_out_estruct	(data_out_estruct));
endmodule
