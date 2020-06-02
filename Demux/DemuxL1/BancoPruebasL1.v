`include "Demux2a4_descp_condL1.v"
`include "probadordemux_L1.v" 
module BancoPruebasDemuxL1; 
    //entradas
    wire clk_2f;
	wire clk;
    wire clk_4f;
    wire reset_L;
    wire selectorL1;
    wire valid1;
    wire valid2;
    wire [7:0] data_in0_demuxL1;
    wire [7:0] data_in1_demuxL1;   
    //salidas
    wire validout0;
    wire validout1;
    wire validout2;
    wire validout3;
    wire [7:0] dataout0_demuxL1;
    wire [7:0] dataout1_demuxL1;
    wire [7:0] dataout2_demuxL1;
    wire [7:0] dataout3_demuxL1;   
    demux2a1_descp_condL1 demuxL1(     
                //entradas
                .clk (clk),
                .reset_L (reset_L),
                .selectorL1 (selectorL1),
                .valid1 (valid1),
                .valid2 (valid2),
                .data_in0_demuxL1 (data_in0_demuxL1),
                .data_in1_demuxL1 (data_in1_demuxL1),   
                //salidas
                .validout0 (validout0),
                .validout1 (validout1),
                .validout2 (validout2),
                .validout3 (validout3),
                .dataout0_demuxL1 (dataout0_demuxL1),
                .dataout1_demuxL1 (dataout1_demuxL1),
                .dataout2_demuxL1 (dataout2_demuxL1),
                .dataout3_demuxL1 (dataout3_demuxL1)
    );
    probadordemuxL2 prueba(
                //entradas
                .clk_2f (clk_2f),
                .clk (clk),
                .clk_4f (clk_4f),
                .reset_L (reset_L),
                .selectorL1 (selectorL1),
                .valid1 (valid1),
                .valid2 (valid2),
                .data_in0_demuxL1 (data_in0_demuxL1),
                .data_in1_demuxL1 (data_in1_demuxL1),    
                //salidas
                .validout0 (validout0),
                .validout1 (validout1),
                .validout2 (validout2),
                .validout3 (validout3),
                .dataout0_demuxL1 (dataout0_demuxL1),
                .dataout1_demuxL1 (dataout1_demuxL1),
                .dataout2_demuxL1 (dataout2_demuxL1),
                .dataout3_demuxL1 (dataout3_demuxL1)
    );
endmodule