`timescale 1ns /100 ps

`include "probador.v"
`include "phy.v"
//`include "txEst.v"
//`include "cmos_cells.v"
module bancopruebas;
/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
    //relojes
    wire clk_32f;
    wire rst;
    wire reset_L;
    wire selector_2f;
    //entradas
    //wire [7:0] IDLE;

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

    wire [7:0] outp0;
    wire [7:0] outp1;
    wire [7:0] outp2;
    wire [7:0] outp3;
    wire [7:0] outdemux0;
    wire [7:0] outdemux1;
    wire [7:0] outdemux2;
    wire [7:0] outdemux3;
    wire val_out0p;
    wire val_out1p;
    wire val_out2p;
    wire val_out3p;
    wire val_outdemux0;
    wire val_outdemux1;
    wire val_outdemux2;
    wire val_outdemux3;
// End of automatics
    phy phy_cond(/*autoinst*/
		    // Outputs
		        .outp0		(outp0[7:0]),
			.outp1		(outp1[7:0]),
			.outp2		(outp2[7:0]),
			.outp3		(outp3[7:0]),
			.outdemux0	(outdemux0[7:0]),
			.outdemux1	(outdemux1[7:0]),
			.outdemux2	(outdemux2[7:0]),
			.outdemux3	(outdemux3[7:0]),
			.val_out0p	(val_out0p),
			.val_out1p	(val_out1p),
			.val_out2p	(val_out2p),
			.val_out3p	(val_out3p),
			

		    // Inputs

		    .rst		(rst),
		    .reset_L		(reset_L),
		    .clk_32f		(clk_32f),
		    .valid_in0		(valid_in0),
		    .valid_in1		(valid_in1),
		    .valid_in2		(valid_in2),
		    .valid_in3		(valid_in3),
		    .in0		(in0[7:0]),
		    .in1		(in1[7:0]),
		    .in2		(in2[7:0]),
		    .in3		(in3[7:0]));
    /*phy_tx_Est phy_estruct(
		    // Outputs
		    .salida_txEst	(salida_txEst),
		    
		    // Inputs

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
		    .in3		(in3[7:0]));*/


   probador probadorinst(/*autoinst*/
		    // Outputs
		
			.outdemux0	(outdemux0),
			.outdemux1	(outdemux1),
			.outdemux2	(outdemux2),
			.outdemux3	(outdemux3),
		        .outp0		(outp0[7:0]),
			.outp1		(outp1[7:0]),
			.outp2		(outp2[7:0]),
			.outp3		(outp3[7:0]),
			.val_outdemux0	(val_outdemux0),
			.val_outdemux1	(val_outdemux1),
			.val_outdemux2	(val_outdemux2),
			.val_outdemux3	(val_outdemux3),
			.val_out0p	(val_out0p),
			.val_out1p	(val_out1p),
			.val_out2p	(val_out2p),
			.val_out3p	(val_out3p),

		    // Inputs

		    .rst		(rst),
		    .reset_L		(reset_L),
		    .clk_32f		(clk_32f),
		    .valid_in0		(valid_in0),
		    .valid_in1		(valid_in1),
		    .valid_in2		(valid_in2),
		    .valid_in3		(valid_in3),
		    .in0		(in0[7:0]),
		    .in1		(in1[7:0]),
		    .in2		(in2[7:0]),
		    .in3		(in3[7:0]));
endmodule
