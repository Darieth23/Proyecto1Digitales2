`timescale 	1ns				/ 1ns
`include "Mux2a1_ochobits.v"
`include "probadormux.v"
`include "Mux4a1_descp_cond"
module BancoPruebamux;
    wire clk_2f, clk_4f, clk, reset_L, valid0, valid1, valid2, valid3, validout0, validout1, validout;
    wire [7:0] data_in0_mux, data_in1_mux, data_in2_mux, data_in3_mux, dataout_mux,
    probador_mux probarmux(reset_L,clk_2f,clk_4f,clk,valid0,valid1,valid2,valid3,data_in0_mux,data_in1_mux,data_in2_mux,data_in3_mux,validout0,validout1,validout,dataout_mux);
    mux4a1_descp_cond probarmux4a1(clk_2f,clk_4f,reset_L,valid0,valid1,valid2,valid3,data_in0_mux,data_in1_mux,data_in2_mux,data_in3_mux,validout0,validout1,validout,dataout_mux);
endmodule
