`include "Demux1a2_ochobits.v"
module demux2a1_descp_condL2(
     //entradas
    input clk_2f,
    input reset_L,
    input selectorL2,
    input valid,
    input [7:0] data_in0_demuxL2,   
    //salidas
    output wire validout0,
    output wire validout1,
    output wire [7:0] dataout0_demuxL2,
    output wire [7:0] dataout1_demuxL2
);
    demux1a2ochobits_descp_cond demux1a2_8bitunoL2(reset_L,clk_2f,valid,data_in0_demuxL2,validout0,validout1,dataout0_demuxL2,dataout1_demuxL2);
endmodule