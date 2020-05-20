`include "Mux2a1_ochobits.v"
module mux4a1_descp_condL2(
    //entradas
    input clk_4f,
    input reset_L,
    input selectorL2,
    input valid0,
    input valid1,
    input [7:0] data_in0_muxL2,
    input [7:0] data_in1_muxL2,   
    //salidas
    output wire validout,
    output wire [7:0] dataout_muxL2
    );   
    mux_descp_cond_mux2a1cuatrobits mux2a1_4bitunoL2(reset_L,selectorL2,valid0,valid1,data_in0_mux3,data_in1_mux3,validout,dataout_muxL2);
endmodule