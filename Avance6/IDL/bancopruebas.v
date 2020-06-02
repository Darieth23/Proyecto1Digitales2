`timescale 1ns /100 ps

`include "probador.v"
`include "partoserial.v"
`include "partoserialSynth.v"

module bancopruebas;
    //wire[7:0] data_in;
    wire clk_4f,clk_32f,reset,active,IDL_conduc,IDL_estruct;
    
    
	partoserial modul_cond(/*AUTOINST*/
			       // Outputs
			       .IDL	(IDL_conduc),
			       // Inputs
			       //.data_in		(data_in[7:0]),
			       .active	(active),
			       .reset		(reset),
			       .clk_32f		(clk_32f)); 
	partoserialSynth modul_estruct(/*AUTOINST*/
				       // Outputs
				       .IDL	(IDL_estruct),
				       // Inputs
				       .clk_32f		(clk_32f),
				       //.data_in		(data_in[7:0]),
				       .reset		(reset),
				       .active	(active));  
	probador mi_probador(/*AUTOINST*/
			     // Outputs
			     //.data_in		(data_in[7:0]),
			     .active		(active),
			     .reset		(reset),
			     .clk_32f		(clk_32f),
			     // Inputs
			     .IDL_conduc	(IDL_conduc),
			     .IDL_estruct	(IDL_estruct));
endmodule
