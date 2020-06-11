module probador(
    //entradas
    input [7:0] outp0,
    input [7:0] outp1,
    input [7:0] outp2,
    input [7:0] outp3,
    input [7:0] outdemux0,
    input [7:0] outdemux1,
    input [7:0] outdemux2,
    input [7:0] outdemux3,
    input val_out0p,
    input val_out1p,
    input val_out2p,
    input val_out3p,
    input val_outdemux0,
    input val_outdemux1,
    input val_outdemux2,
    input val_outdemux3,
    //salidas
    output reg clk_32f, 

    output reg rst,
    output reg reset_L,
    //entradas
    output reg [7:0] in0,
    output reg [7:0] in1,
    output reg [7:0] in2,
    output reg [7:0] in3,
    output reg valid_in0,
    output reg valid_in1,
    output reg valid_in2,
    output reg valid_in3);


endmodule