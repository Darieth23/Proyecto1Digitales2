`timescale 1ns /100 ps

`include "probador.v"
`include "phy_tx.v"
`include "txEst.v"
`include "cmos_cells.v"
module bancopruebas;
/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
    //relojes
    wire clk_32f;
    wire rst;
    wire selector_2f;
    //entradas
    wire [7:0] IDLE;

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
    wire salida_txEst;
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
    phy_tx_Est phy_estruct(
		    // Outputs
		    .salida_txEst	(salida_txEst),
		    
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


   probador probadorinst(/*autoinst*/
		    // Outputs
		    .salida_tx	(salida_tx),
		    .salida_txEst (salida_txEst),
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
