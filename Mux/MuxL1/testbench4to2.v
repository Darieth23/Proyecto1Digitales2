`timescale 	1ns	/ 100ps
`include "Mux4a2_descp_condL1.v"
`include "probadormux_L1.v"
module bancoPruebas;

    wire clk, clk_2f,reset_L,valid_bit0,valid_bit1,valid_bit2,valid_bit3, valid_bit_out1, valid_bit_out2;
    wire selector;
    wire [7:0] in0;
    wire [7:0] in1;
    wire [7:0] in2;
    wire [7:0] in3;
    wire [7:0] data_out1;
    wire [7:0] data_out2;
    //wire [7:0] data_outyosys1;
    //wire [7:0] data_outyosys2;
  	mux_4to1 mux_4to1(/*AUTOINST*/
			   // Outputs
			   .valid_bit_out1	(valid_bit_out1),
			   .valid_bit_out2	(valid_bit_out2),
			   .data_out1		(data_out1[7:0]),
			   .data_out2		(data_out2[7:0]),
			   // Inputs
			   .clk_2f		(clk_2f),
			   .selector	(selector),
			   .reset_L		(reset_L),
			   .in0			(in0[7:0]),
			   .in1			(in1[7:0]),
         		   .in2			(in2[7:0]),
			   .in3			(in3[7:0]),
			   .valid_bit0		(valid_bit0),
         		   .valid_bit1		(valid_bit1),
         		   .valid_bit2		(valid_bit2),
         		   .valid_bit3		(valid_bit3));
   //mux_4to1_Estruct mux_yosys(/*AUTOINST*/
			   /*// Outputs
			   .valid_bit_out1		(validyosys),
			   //.valid_bit_out2		(validyosys),
			   .data_out1		(data_outyosys[7:0]),
			   // Inputs
			   .clk			(clk),
			   .selector		(selector),
			   .reset_L		(reset_L),
			   .in0			(in0[7:0]),
			   .in1			(in1[7:0]),
        		   .in2			(in2[7:0]),
			   .in3			(in3[7:0]),
			   .valid_bit0		(valid_bit0),
			   .valid_bit1		(valid_bit1),
			   .valid_bit2		(valid_bit2),
			   .valid_bit3		(valid_bit3));*/

			   // Outputs
	//		   .valid_bit_out1	(validyosys1),
	//		   .valid_bit_out2	(validyosys2),
	//		   .data_out1		(data_outyosys1[7:0]),
	//		   .data_out2		(data_outyosys2[7:0]),
			   // Inputs
	//		   .clk			(clk),
	//		   .clk_2f		(clk_2f),
	//		   .selector	(selector),
	//		   .reset_L		(reset_L),
	//		   .in0			(in0[7:0]),
	//		   .in1			(in1[7:0]),
    //   		   .in2			(in2[7:0]),
	//		   .in3			(in3[7:0]),
	//		   .valid_bit0		(valid_bit0),
    //   		   .valid_bit1		(valid_bit1),
    //     		   .valid_bit2		(valid_bit2),
    //     		   .valid_bit3		(valid_bit3));

   probador4to1 mux_prob(/*AUTOINST*/
		     // Outputs
		     .clk		(clk),
		     .clk_2f		(clk_2f),
		     .selector	(selector),
		     .reset_L		(reset_L),
		     .in0		(in0[7:0]),
		     .in1		(in1[7:0]),
         	     .in2		(in2[7:0]),
		     .in3		(in3[7:0]),
         	     .valid_bit0		(valid_bit0),
         	     .valid_bit1		(valid_bit1),
         	     .valid_bit2		(valid_bit2),
         	     .valid_bit3		(valid_bit3),

		     // Inputs
		     .valid_bit_out1		(valid_bit_out1),
		     .valid_bit_out2		(valid_bit_out2),
		     .data_out1			(data_out1[7:0]),
		     .data_out2			(data_out2[7:0])
			   //.validyosys1	(validyosys1),
			   //.validyosys2	(validyosys2),
			   //.data_outyosys1		(data_outyosys1[7:0]),
			   //.data_outyosys2		(data_outyosys2[7:0])
			   );
endmodule
