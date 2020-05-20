`include "Demux1a2_ochobits.v"
`include "Demux1a2_ochobits.v"
module demux1a4_descp_cond(
    input reset_L,
    input clk_2f,
    input clk_4f,
    input valid_demux,
    input [7:0] data_in0_demux,
    output wire validout0_L2,
    output wire validout1_L2,
    output wire validout0,
    output wire validout1,
    output wire validout2,
    output wire validout3,
    output wire [7:0] dataout0_demux,
    output wire [7:0] dataout1_demux,
    output wire [7:0] dataout2_demux,
    output wire [7:0] dataout3_demux
);
    reg temp1,temp2;
    demux2a1_descp_condL2 demuxL2(reset_L,clk_4f,valid_demux,data_in0_demux,validout0_L2,validout1_L2,);
    demux2a1_descp_condL1 demuxL1(reset_L,clk_2f,validout0_L2,valirout1_L2,validout0,validout1,validout2,validout3,dataout0_demux,dataout1_demux,dataout2_demux,dataout3_demux);
endmodule