`include "Mux2a1_descp_condL1"
`include "Mux2a1_descp_condL2"
module mux4a1_descp_condL2(
    //entradas
    input clk_2f,
    input clk_4f,
    input reset_L,
    input [1:0] selector_mux,
    input valid0,
    input valid1,
    input valid2,
    input valid3,
    input [7:0] data_in0_mux,
    input [7:0] data_in1_mux,
    input [7:0] data_in2_mux,
    input [7:0] data_in3_mux,    
    //salidas
    output wire validout0,
    output wire validout1,
    output wire validout,
    output wire [7:0] dataout_mux3
    );   
    wire [7:0] temp1, temp2;
    mux4a1_descp_condL1 muxL1(clk_2f,reset_L,selector_mux[0],valid0,valid1,valid2,valid3,data_in0_mux,data_in1_mux,data_in2_mux,data_in3_mux,validout0,validout1,temp1,temp2);
    mux4a1_descp_condL2 muxL2(clk_4f,reset_L,selector_mux[1],validout0,validout1,temp1,temp2,validout,dataout_mux3);
endmodule