`include "circulacion.v"
`include "Mux2a1_descp_condL2.v"
`include "Mux4a2_descp_condL1.v"
`include "partoserial.v"
`include "serialtopar.v"

//`include "señalesIDLE.v"

module phy_tx(
	 
    //relojes
    input clk_32f,
    input rst,
    //input selector_2f,
    //entradas
    input IDLE,

	//valids entradas
    input valid_in0,
    input valid_in1,
    input valid_in2,
    input valid_in3,

	//entradas de datos
    input [7:0] in0,
    input [7:0] in1,
    input [7:0] in2,
    input [7:0] in3,
	//salidas
    output wire salida_tx,
	//Faltan las salidas de recirculacion que vuelven al probador y sus valids
	//son estas?
	output wire valid_outp0,
	output wire valid_outp1,
	output wire valid_outp2,
	output wire valid_outp3,
	output wire [7:0]outp0,
	output wire [7:0]outp1,
	output wire [7:0]outp2,
	output wire [7:0]outp3
);

reg[7:0]        data_reg_0;
reg[7:0]        data_reg_1;
reg[7:0]        data_reg_2;
reg[7:0]        data_reg_3;
reg             valid_reg_0;
reg             valid_reg_1;
reg             valid_reg_2;
reg             valid_reg_3;

//Wires
/*AUTOREG*/
/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
wire [7:0]		data_out1;		// From MuxL1 of mux4a2_descp_condL1.v
wire [7:0]		data_out2;		// From MuxL1 of mux4a2_descp_condL1.v
wire 			data_out_P2S;		// From P2S of partoserial.v
wire [7:0]		data_out_L2;		// From muxL2 de Mux2a1_descp_condL2.v
wire			valid_bit_out1;		// From MuxL1 of mux4a2_descp_condL1.v
wire			valid_bit_out2;		// From MuxL1 of mux4a2_descp_condL1.v
wire			valid_bit_L2;		// From muxL2 de Mux2a1_descp_condL2.v
wire 			IDLE_out;

wire	valid_outf0;
wire	valid_outf1;
wire	valid_outf2;
wire	valid_outf3;
wire	[7:0]outf0;
wire	[7:0]outf1;
wire	[7:0]outf2;
wire	[7:0]outf3;

/*
wire	valid_outp0;
wire	valid_outp1;
wire	valid_outp2;
wire	valid_outp3;
wire	[7:0]outp0;
wire	[7:0]outp1;
wire	[7:0]outp2;
wire	[7:0]outp3;
*/

// End of automatics
wire out;


wire reloj_4f;
wire reloj_2f;
wire reloj_f;

//Flop de probador a recirculación
always @(posedge reloj_f) begin
    if(~rst) begin
        data_reg_0 <= 8'b0;
        data_reg_1 <= 8'b0;
        data_reg_2 <= 8'b0;
        data_reg_3 <= 8'b0;
        valid_reg_0 <= 0;
        valid_reg_1 <= 0;
        valid_reg_2 <= 0;
        valid_reg_3 <= 0;
    end else begin
        data_reg_0 <= in0;
        data_reg_1 <= in1;
        data_reg_2 <= in2;
        data_reg_3 <= in3;
        valid_reg_0 <= valid_in0;
        valid_reg_1 <= valid_in1;
        valid_reg_2 <= valid_in2;
        valid_reg_3 <= valid_in3;
    end
end



//flop de L2 a Partoserial
/*always @(posedge clk_32f) begin
    if(~rst) begin
        salida_tx <= 0;
    end else begin
        salida_tx <= out;
    end
end*/


//Instancia clks

gen_clk reloj(/*AUTOINST*/
	      // Outputs
	      .reloj_4f			(reloj_4f),
	      .reloj_2f			(reloj_2f),
	      .reloj_f			(reloj_f),
	      // Inputs
	      .reloj_32f		(clk_32f),
	      .rst			(rst));


//Instancia recirculación


 circulacion recirculacion(/*AUTOINST*/
		  // Outputs
		  .valid_outp0		(valid_outp0),
		  .valid_outp1		(valid_outp1),
		  .valid_outp2		(valid_outp2),
		  .valid_outp3		(valid_outp3),
		  .outp0		(outp0[7:0]),
		  .outp1		(outp1[7:0]),
		  .outp2		(outp2[7:0]),
		  .outp3		(outp3[7:0]),
		  .valid_outf0		(valid_outf0),
		  .valid_outf1		(valid_outf1),
		  .valid_outf2		(valid_outf2),
		  .valid_outf3		(valid_outf3),
		  .outf0		(outf0[7:0]),
		  .outf1		(outf1[7:0]),
		  .outf2		(outf2[7:0]),
		  .outf3		(outf3[7:0]),
		  // Inputs
		  .IDLE			(IDLE_out),
		  .valid_in0		(valid_reg_0),
		  .valid_in1		(valid_reg_1),
		  .valid_in2		(valid_reg_2),
		  .valid_in3		(valid_reg_3),
		  .in0			(data_reg_0[7:0]),
		  .in1			(data_reg_1[7:0]),
		  .in2			(data_reg_2[7:0]),
		  .in3			(data_reg_3[7:0]));


//Flops 8 bits+valid x4 @f

//Instancia mux L1

 mux_4to1L1 muxL1(/*autoinst*/
		 // Outputs
		 .valid_bit_out1	(valid_bit_out1),
		 .valid_bit_out2	(valid_bit_out2),
		 .data_out1		(data_out1[7:0]),
		 .data_out2		(data_out2[7:0]),
		 // Inputs
		 .clk_2f		(reloj_f),//Se llama diferente pero es la misma señal  XD
		 //.selector		(selector_2f), //OJO AQUI
		 .reset_L		(rst),
		 .in0			(outf0[7:0]),
		 .in1			(outf1[7:0]),
		 .in2			(outf2[7:0]),
		 .in3			(outf3[7:0]),
		 .valid_bit0		(valid_outf0),
		 .valid_bit1		(valid_outf1),
		 .valid_bit2		(valid_outf2),
		 .valid_bit3		(valid_outf3));

//Flops 8 bits+valid x2 @2f

//Instancia mux L2

   mux2to1_L2 muxL2(/*autoinst*/
		 // Outputs
		 .valid_bit_L2		(valid_bit_L2), 
		 .data_out_L2		(data_out_L2[7:0]),
		 // Inputs
		 .clk_4f		(reloj_2f), //Se llama diferente pero es la misma señal  XD
		 //.selector		(reloj_4f), //OJO AQUI
		 .reset_L		(rst),
		 .in0_L2		(data_out1[7:0]),
		 .in1_L2		(data_out2[7:0]),
		 .valid_bit0		(valid_bit_out1),
		 .valid_bit1		(valid_bit_out2));

//Paralelo a Serial

partoserial par2ser(/*AUTOINST*/
		    // Outputs
		    .data_out_P2S	(salida_tx),
		    // Inputs
		    .data_in		(data_out_L2[7:0]),
		    .valid_in		(valid_bit_L2),
		    .reset		(rst),
		    .clk_32f		(clk_32f));

//Señales de idle

  serialtopar crysal(/*AUTOINST*/
		      // Outputs
		      .IDLE_out		(IDLE_out),
		      // Inputs
		      .clk_4f		(reloj_2f),
		      .clk_32f		(clk_32f),
		      .reset_L		(rst),
		      .IDL		(IDLE));

endmodule

