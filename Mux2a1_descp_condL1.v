`include "Mux2a1_ochobits.v"
module mux4a1_descp_condL1(
    //entradas
    input clk_2f,
    input reset_L,
    input selectorL1,
    input valid0,
    input valid1,
    input valid2,
    input valid3,
    input [7:0] data_in0_muxL1,
    input [7:0] data_in1_muxL1,
    input [7:0] data_in2_muxL1,
    input [7:0] data_in3_muxL1,    
    //salidas
    output wire validout0,
    output wire validout1,
    output wire [7:0] dataout0_muxL1,
    output wire [7:0] dataout1_muxL1,
    );   
    mux_descp_cond_mux2a1cuatrobits mux2a1_4bituno(reset_L,selectorL1,valid0,valid1,data_in0_muxL1,data_in1_muxL1,validout0,dataout0_muxL1);
    mux_descp_cond_mux2a1cuatrobits mux2a1_4bitdos(reset_L,selectorL1,valid2,valid3,data_in2_muxL1,data_in3_muxL1,validout1,dataout1_muxL1);
endmodule