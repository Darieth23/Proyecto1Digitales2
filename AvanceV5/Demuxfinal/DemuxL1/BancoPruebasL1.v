`include "Demux2a4_descp_condL1.v"
`include "probadordemux_L1.v" 
`include "cmos_cells.v" 
//`include "demuxEstructL1.v" 
module BancoPruebasDemuxL1; 
    //entradas
    wire clk_2f;
	wire clk;
    wire clk_4f;
    wire reset_L;
    wire valid1;
    wire valid2;
    wire [7:0] data_in0_demuxL1;
    wire [7:0] data_in1_demuxL1;   
    //salidas
    wire validout0;
    wire validout1;
    wire validout2;
    wire validout3;
    wire validout_Estruct0;
    wire validout_Estruct1;
    wire validout_Estruct2;
    wire validout_Estruct3;
    wire [7:0] dataout0_demuxL1;
    wire [7:0] dataout1_demuxL1;
    wire [7:0] dataout2_demuxL1;
    wire [7:0] dataout3_demuxL1; 
    wire [7:0] dataout0_EstructL1;
    wire [7:0] dataout1_EstructL1;
    wire [7:0] dataout2_EstructL1;
    wire [7:0] dataout3_EstructL1;  


   demux2a1_descp_condL1 inst(/*AUTOINST*/
			      // Outputs
			      .validout0	(validout0),
			      .validout1	(validout1),
			      .validout2	(validout2),
			      .validout3	(validout3),
			      .dataout0_demuxL1	(dataout0_demuxL1[7:0]),
			      .dataout1_demuxL1	(dataout1_demuxL1[7:0]),
			      .dataout2_demuxL1	(dataout2_demuxL1[7:0]),
			      .dataout3_demuxL1	(dataout3_demuxL1[7:0]),
			      // Inputs
			      .clk_2f  	(clk_2f),
			      .reset_L		(reset_L),
			      .valid1		(valid1),
			      .valid2		(valid2),
			      .data_in0_demuxL1	(data_in0_demuxL1[7:0]),
			      .data_in1_demuxL1	(data_in1_demuxL1[7:0]));


    /*demux2a1_descp_EstructL1 demuxEstL1(     
                //entradas
                .clk (clk),
                .reset_L (reset_L),
                .selectorL1 (selectorL1),
                .valid1 (valid1),
                .valid2 (valid2),
                .data_in0_demuxL1 (data_in0_demuxL1[7:0]),
                .data_in1_demuxL1 (data_in1_demuxL1[7:0]),   
                //salidas
                .validout_Estruct0 (validout_Estruct0),
                .validout_Estruct1 (validout_Estruct1),
                .validout_Estruct2 (validout_Estruct2),
                .validout_Estruct3 (validout_Estruct3),
                .dataout0_demuxL1 (dataout0_EstructL1[7:0]),
                .dataout1_demuxL1 (dataout1_EstructL1[7:0]),
                .dataout2_demuxL1 (dataout2_EstructL1[7:0]),
                .dataout3_demuxL1 (dataout3_EstructL1[7:0])
    );*/


    probadordemuxL2 prueba(
                //entradas
                .clk_2f (clk_2f),
                .clk (clk),
                .clk_4f (clk_4f),
                .reset_L (reset_L),
                .valid1 (valid1),
                .valid2 (valid2),
                .data_in0_demuxL1 (data_in0_demuxL1[7:0]),
                .data_in1_demuxL1 (data_in1_demuxL1[7:0]),    
                //salidas
                .validout0 (validout0),
                .validout1 (validout1),
                .validout2 (validout2),
                .validout3 (validout3),
                .validout_Estruct0 (validout_Estruct0),
                .validout_Estruct1 (validout_Estruct1),
                .validout_Estruct2 (validout_Estruct2),
                .validout_Estruct3 (validout_Estruct3),
                .dataout0_demuxL1 (dataout0_demuxL1[7:0]),
                .dataout1_demuxL1 (dataout1_demuxL1[7:0]),
                .dataout2_demuxL1 (dataout2_demuxL1[7:0]),
                .dataout3_demuxL1 (dataout3_demuxL1[7:0]),
                .dataout0_EstructL1 (dataout0_EstructL1[7:0]),
                .dataout1_EstructL1 (dataout1_EstructL1[7:0]),
                .dataout2_EstructL1 (dataout2_EstructL1[7:0]),
                .dataout3_EstructL1 (dataout3_EstructL1[7:0])
    );
endmodule
