`include  "Demux1a2_dosbits.v"
module demux1a2ochobits_descp_cond(
    //entradas
    input reset_L,
    input selector,
    input valid,
    input [7:0] data_in,
    //salidas
    output reg validout0,
    output reg validout1,
    output reg [7:0] dataout_demux1a2dosbits0,
    output reg [7:0] dataout_demux1a2dosbits1
);
    demux1a2dosbits_descp_cond demux1a2ochobits_uno(reset_L,selector,valid,data_in[1:0],validout0,validout1,dataout_demux1a2dosbits0[1:0],dataout_demux1a2dosbits1[1:0]);
    demux1a2dosbits_descp_cond demux1a2ochobits_dos(reset_L,selector,valid,data_in[3:2],validout0,validout1,dataout_demux1a2dosbits0[3:2],dataout_demux1a2dosbits1[3:2]);
    demux1a2dosbits_descp_cond demux1a2ochobits_tres(reset_L,selector,valid,data_in[5:4],validout0,validout1,dataout_demux1a2dosbits0[5:4],dataout_demux1a2dosbits1[5:4]);
    demux1a2dosbits_descp_cond demux1a2ochobits_cuatro(reset_L,selector,valid,data_in[7:6],validout0,validout1,dataout_demux1a2dosbits0[7:6],dataout_demux1a2dosbits1[7:6]);

endmodule