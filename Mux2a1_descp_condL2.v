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
    wire [7:0] temp1;
    mux_descp_cond_mux2a1cuatrobits mux2a1_4bituno(reset_L,selectorL2,valid0,valid1,data_in0_mux3,data_in1_mux3,validout,temp1);
    //memoria del mux4a1 L2
    always @ (posedge clk_4f) begin
        if(reset_L == 0)
            dataout_muxL2 <= 8'b0;
        else
            dataout_muxL2 <= temp1;
    end
endmodule