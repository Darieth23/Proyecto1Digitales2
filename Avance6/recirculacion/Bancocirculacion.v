`timescale 	1ns				/ 1ns
`include "circulacion.v"
`include "probadorcirculacion.v"
`include "recirculacionEstruct.v"
`include "cmos_cells.v"

module BancoPruebamux;
    wire clk, valid_in0, valid_in1, valid_in2, valid_in3, valid_outp0, valid_outp1, valid_outp2, valid_outp3, valid_outf0, valid_outf1, valid_outf2, valid_outf3;
    wire [7:0] in0, in1, in2, in3, outp0, outp1, outp2, outp3, outf0, outf1, outf2, outf3;
	




circulacion inst_circ (/*AUTOINST*/
		       // Outputs
		       .valid_outp0	(valid_outp0),
		       .valid_outp1	(valid_outp1),
		       .valid_outp2	(valid_outp2),
		       .valid_outp3	(valid_outp3),
		       .outp0		(outp0[7:0]),
		       .outp1		(outp1[7:0]),
		       .outp2		(outp2[7:0]),
		       .outp3		(outp3[7:0]),
		       .valid_outf0	(valid_outf0),
		       .valid_outf1	(valid_outf1),
		       .valid_outf2	(valid_outf2),
		       .valid_outf3	(valid_outf3),
		       .outf0		(outf0[7:0]),
		       .outf1		(outf1[7:0]),
		       .outf2		(outf2[7:0]),
		       .outf3		(outf3[7:0]),
		       // Inputs
		       .IDLE		(IDLE),
		       .valid_in0	(valid_in0),
		       .valid_in1	(valid_in1),
		       .valid_in2	(valid_in2),
		       .valid_in3	(valid_in3),
		       .in0		(in0[7:0]),
		       .in1		(in1[7:0]),
		       .in2		(in2[7:0]),
		       .in3		(in3[7:0]));


circulacionEstruct instEstruct(


		       .valid_outp0	(valid_outp0),
		       .valid_outp1	(valid_outp1),
		       .valid_outp2	(valid_outp2),
		       .valid_outp3	(valid_outp3),
		       .outp0		(outp0[7:0]),
		       .outp1		(outp1[7:0]),
		       .outp2		(outp2[7:0]),
		       .outp3		(outp3[7:0]),
		       .valid_outf0	(valid_outf0),
		       .valid_outf1	(valid_outf1),
		       .valid_outf2	(valid_outf2),
		       .valid_outf3	(valid_outf3),
		       .outf0		(outf0[7:0]),
		       .outf1		(outf1[7:0]),
		       .outf2		(outf2[7:0]),
		       .outf3		(outf3[7:0]),
		       // Inputs
		       .IDLE		(IDLE),
		       .valid_in0	(valid_in0),
		       .valid_in1	(valid_in1),
		       .valid_in2	(valid_in2),
		       .valid_in3	(valid_in3),
		       .in0		(in0[7:0]),
		       .in1		(in1[7:0]),
		       .in2		(in2[7:0]),
		       .in3		(in3[7:0]));



probadorcirculacion inst_probador_circ (
			 // Outputs
			 .IDLE			(IDLE),
			 .clk			(clk),
			 .valid_in0		(valid_in0),
			 .valid_in1		(valid_in1),
			 .valid_in2		(valid_in2),
			 .valid_in3		(valid_in3),
			 .in0			(in0[7:0]),
			 .in1			(in1[7:0]),
			 .in2			(in2[7:0]),
			 .in3			(in3[7:0]));
			/* // Inputs
			 .valid_outp0_Cond	(valid_outp0_Cond),
			 .valid_outp1_Cond	(valid_outp1_Cond),
			 .valid_outp2_Cond	(valid_outp2_Cond),
			 .valid_outp3_Cond	(valid_outp3_Cond),
			 .valid_outp0_Estruct	(valid_outp0_Estruct),
			 .valid_outp1_Estruct	(valid_outp1_Estruct),
			 .valid_outp2_Estruct	(valid_outp2_Estruct),
			 .valid_outp3_Estruct	(valid_outp3_Estruct),
			 .outp0_Cond		(outp0_Cond[7:0]),
			 .outp1_Cond		(outp1_Cond[7:0]),
			 .outp2_Cond		(outp2_Cond[7:0]),
			 .outp3_Cond		(outp3_Cond[7:0]),
			 .outp0_Estruct		(outp0_Estruct[7:0]),
			 .outp1_Estruct		(outp1_Estruct[7:0]),
			 .outp2_Estruct		(outp2_Estruct[7:0]),
			 .outp3_Estruct		(outp3_Estruct[7:0]),
			 .valid_outf0_Cond	(valid_outf0_Cond),
			 .valid_outf1_Cond	(valid_outf1_Cond),
			 .valid_outf2_Cond	(valid_outf2_Cond),
			 .valid_outf3_Cond	(valid_outf3_Cond),
			 .valid_outf0_Estruct	(valid_outf0_Estruct),
			 .valid_outf1_Estruct	(valid_outf1_Estruct),
			 .valid_outf2_Estruct	(valid_outf2_Estruct),
			 .valid_outf3_Estruct	(valid_outf3_Estruct),
			 .outf0_Cond		(outf0_Cond[7:0]),
			 .outf1_Cond		(outf1_Cond[7:0]),
			 .outf2_Cond		(outf2_Cond[7:0]),
			 .outf3_Cond		(outf3_Cond[7:0]),
			 .outf0_Estruct		(outf0_Estruct[7:0]),
			 .outf1_Estruct		(outf1_Estruct[7:0]),
			 .outf2_Estruct		(outf2_Estruct[7:0]),
			 .outf3_Estruct		(outf3_Estruct[7:0]));*/

endmodule
