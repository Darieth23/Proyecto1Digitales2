`include  "Demux1a2_cuatrobits.v"
module demux1a2ochobits_descp_cond(
    //entradas
    input reset_L,
    input selector,
    input valid,
    input [7:0] data_in,
    //salidas
    output wire validout0,
    output wire validout1,
    output wire [7:0] dataout_demux1a2dosbits0,
    output wire [7:0] dataout_demux1a2dosbits1
);
    wire temp0, temp1;
    demux1a2dosbits_descp_cond demux1a2ochobits_uno(reset_L,selector,valid,data_in[3:0],validout0,validout1,dataout_demux1a2dosbits0[3:0],dataout_demux1a2dosbits1[3:0]);
    demux1a2dosbits_descp_cond demux1a2ochobits_dos(reset_L,selector,valid,data_in[7:4],temp0,temp1,dataout_demux1a2dosbits0[7:4],dataout_demux1a2dosbits1[7:4]);
   
endmodule