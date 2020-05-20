`include "Mux2a1_dosbits.v"
module mux2a1ochobits_descp_cond(

    input reset_L,
    input selector,
    input valid0,
    input valid1,
    input [7:0] data_in0_mux2,
    input [7:0] data_in1_mux2,
    
    output wire validout,
    output wire [7:0] dataout_mux2
    );   
    mux2a1dosbits_descp_cond mux2a1dosits_uno(reset_L,selector,valid0,valid1,data_in0_mux2[1:0],data_in1_mux2[1:0],valid_out,dataout_mux2[1:0]);
    mux2a1dosbits_descp_cond mux2a1dosits_dos(reset_L,selector,valid0,valid1,data_in0_mux2[3:2],data_in1_mux2[3:2],valid_out,dataout_mux2[3:2]);
    mux2a1dosbits_descp_cond mux2a1dosits_tres(reset_L,selector,valid0,valid1,data_in0_mux2[4:5],data_in1_mux2[4:5],valid_out,dataout_mux2[4:5]);
    mux2a1dosbits_descp_cond mux2a1dosits_cuatro(reset_L,selector,valid0,valid1,data_in0_mux2[6:7],data_in1_mux2[6:7],valid_out,dataout_mux2[6:7]);    
endmodule