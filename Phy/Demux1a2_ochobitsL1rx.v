`include  "Demux1a2_cuatrobitsL1rx.v"
module demux1a2ochobits_descp_condL1(
    //entradas
    input clk_2f,
    input clk_32f,
    input reset_L,
    input valid,
    input [7:0] data_in,
    //salidas
    output wire validout0,
    output wire validout1,
    output wire [7:0] dataout_demux1a2dosbits0,
    output wire [7:0] dataout_demux1a2dosbits1
);
    wire temp0, temp1;
    demux1a2dosbits_descp_condL1 demux1a2ochobits_uno(clk_2f,clk_32f,reset_L,valid,data_in[3:0],validout0,validout1,dataout_demux1a2dosbits0[3:0],dataout_demux1a2dosbits1[3:0]);
    demux1a2dosbits_descp_condL1 demux1a2ochobits_dos(clk_2f,clk_32f,reset_L,valid,data_in[7:4],temp0,temp1,dataout_demux1a2dosbits0[7:4],dataout_demux1a2dosbits1[7:4]);
endmodule