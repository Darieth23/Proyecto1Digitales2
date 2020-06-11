`include "Demux1a2_ochobits.v"
module demux1a2_descp_condL2(
     //entradas
    input clk_4f,
    input clk_32f,
    input reset_L,
    input valid,
    input [7:0] data_in0_demuxL2,   
    //salidas
    output wire validout0,
    output wire validout1,
    output wire [7:0] dataout0_demuxL2,
    output wire [7:0] dataout1_demuxL2
);
    demux1a2ochobits_descp_cond demux1a2_8bitunoL2(clk_4f,clk_32f,reset_L,valid,data_in0_demuxL2[7:0],validout0,validout1,dataout0_demuxL2[7:0],dataout1_demuxL2[7:0]);
endmodule