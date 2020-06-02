`timescale 	1ns	/ 100ps
`include "Demux1a2_descp_condL2.v"
`include "probadordemux_L2.v" 
module BancoPruebasDemuxL2; 
    //entradas
    wire clk_2f;
	wire clk;
    wire clk_4f;
    wire reset_L;
    wire selectorL2;
    wire valid;
    wire [7:0] data_in0_demuxL2;   
    //salidas
    wire validout0;
    wire validout1;
    wire [7:0] dataout0_demuxL2;
    wire [7:0] dataout1_demuxL2;
    demux2a1_descp_condL2 demuxL2(     
                //entradas
                .clk_2f (clk_2f),
                .reset_L (reset_L),
                .selectorL2 (selectorL2),
                .valid (valid),
                .data_in0_demuxL2 (data_in0_demuxL2),   
                //salidas
                .validout0 (validout0),
                .validout1 (validout1),
                .dataout0_demuxL2 (dataout0_demuxL2),
                .dataout1_demuxL2 (dataout1_demuxL2)
    );

    probadordemuxL2 prueba(
                //entradas
                .clk_2f (clk_2f),
                .clk (clk),
                .clk_4f (clk_4f),
                .reset_L (reset_L),
                .selectorL2 (selectorL2),
                .valid (valid),
                .data_in0_demuxL2 (data_in0_demuxL2),   
                //salidas
                .validout0 (validout0),
                .validout1 (validout1),
                .dataout0_demuxL2 (dataout0_demuxL2),
                .dataout1_demuxL2 (dataout1_demuxL2)


    );
endmodule