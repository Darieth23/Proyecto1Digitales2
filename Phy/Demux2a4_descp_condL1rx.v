`include "Demux1a2_ochobitsL1rx.v"
module demux2a4_descp_condL1(
     //entradas
    input clk_2f,
    input clk_32f,
    input reset_L,
    input valid1,
    input valid2,
    input [7:0] data_in0_demuxL1,
    input [7:0] data_in1_demuxL1,
    //salidas
    output wire validout0,
    output wire validout1,
    output wire validout2,
    output wire validout3,
    output wire [7:0] dataout0_demuxL1,
    output wire [7:0] dataout1_demuxL1,
    output wire [7:0] dataout2_demuxL1,
    output wire [7:0] dataout3_demuxL1
);
    demux1a2ochobits_descp_condL1 demux1a2_8bitunoL2(clk_2f,clk_32f,reset_L,valid1,data_in0_demuxL1,validout0,validout1,dataout0_demuxL1,dataout1_demuxL1);
    demux1a2ochobits_descp_condL1 demux1a2_8bitdosL2(clk_2f,clk_32f,reset_L,valid2,data_in1_demuxL1,validout2,validout3,dataout2_demuxL1,dataout3_demuxL1);
endmodule