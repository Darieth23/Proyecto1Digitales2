`include "Demux1a2_ochobits.v"
module demux2a1_descp_condL1(
     //entradas
    input clk_2f,
    input reset_L,
    input selectorL1,
    input valid0,
    input valid1,
    input [7:0] data_in0_demuxL1,
    input [7:0] data_in1_demuxL1,    
    //salidas
    output wire validout0,
    output wire validout1,
    output wire validout2,
    output wire validout3,
    output wire [7:0] dataout0_muxL1,
    output wire [7:0] dataout1_muxL1,
    output wire [7:0] dataout2_muxL1,
    output wire [7:0] dataout3_muxL1
);
    demux1a2ochobits_descp_cond demux1a2_8bitunoL1(reset_L,selectorL1,valid0,data_in0_demuxL1,validout0,validout1,dataout0_muxL1,dataout1_muxL1);
    demux1a2ochobits_descp_cond demux1a2_8bitdosL1(reset_L,selectorL1,valid1,data_in1_demuxL1,validout2,validout3,dataout2_muxL1,dataout3_muxL1);
endmodule