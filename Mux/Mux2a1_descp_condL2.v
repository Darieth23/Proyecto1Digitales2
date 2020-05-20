
module mux2a1_descp_condL2(
    //entradas
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
    mux2a1ochobits_descp_cond mux2a1_8bitunoL2(reset_L,selectorL2,valid0,valid1,data_in0_mux3,data_in1_mux3,validout,dataout_muxL2);
endmodule