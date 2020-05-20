`include "Demux1a2_ochobits.v"
module demux1a2_descp_condL2(
     //entradas
    input reset_L,
    input selectorL2,
    input valid,
    input [7:0] data_in0_demuxL2,   
    //salidas
    output wire validout0,
    output wire validout1,
    output wire [7:0] dataout0_muxL2,
    output wire [7:0] dataout1_muxL2,
);
    demux1a2ochobits_descp_cond demux1a2_8bitunoL2(reset_L,selectorL2,data_in0_demuxL2,validout0,validout1,dataout0_muxL2,dataout1_muxL2);
endmodule