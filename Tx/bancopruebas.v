`timescale 1ns /100 ps

`include "probador.v"
`include "phy_tx.v"
//`include "phy_txSynth.v"
module bancopruebas;
/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
    //relojes
    wire clk_32f;
    wire rst;
    wire selector_2f;
    //entradas
    wire IDLE;

	//valids entradas
    wire valid_in0;
    wire valid_in1;
    wire valid_in2;
    wire valid_in3;

	//entradas de datos
    wire [7:0] in0;
    wire [7:0] in1;
    wire [7:0] in2;
    wire [7:0] in3;
    wire salida_tx;
// End of automatics
    phy_tx phy_cond(/*autoinst*/
		    // Outputs
		    .salida_tx	(salida_tx),
		    
		    // Inputs
		    .IDLE		(IDLE),
		    .rst		(rst),
		    .clk_32f		(clk_32f),
		    .valid_in0		(valid_in0),
		    .valid_in1		(valid_in1),
		    .valid_in2		(valid_in2),
		    .valid_in3		(valid_in3),
		    .selector_2f        (selector_2f),
		    .in0		(in0[7:0]),
		    .in1		(in1[7:0]),
		    .in2		(in2[7:0]),
		    .in3		(in3[7:0])
);
    /*phy_txSynth phy_estruct(
			    // Outputs
			    .tx_out_0_estruct	(tx_out_0_estruct),
			    .tx_out_1_estruct	(tx_out_1_estruct),
			    // Inputs
			    .clk_32f		(clk_32f),
			    .data_in_0		(data_in_0[7:0]),
			    .data_in_1		(data_in_1[7:0]),
			    .enable		(enable),
			    .reset_L		(reset_L),
			    .valid_data_0	(valid_data_0),
			    .valid_data_1	(valid_data_1));*/
    probador probadorinst(/*autoinst*/
		    // Outputs
		    .salida_tx	(salida_tx),
		    
		    // Inputs
		    .IDLE		(IDLE),
		    .rst		(rst),
		    .clk_32f		(clk_32f),
		    .valid_in0		(valid_in0),
		    .valid_in1		(valid_in1),
		    .valid_in2		(valid_in2),
		    .valid_in3		(valid_in3),
		    .selector_2f        (selector_2f),
		    .in0		(in0[7:0]),
		    .in1		(in1[7:0]),
		    .in2		(in2[7:0]),
		    .in3		(in3[7:0]));
endmodule
