`include "phy_rx.v"
`include "phy_tx.v"
`include "clks.v"
module phy(
    //relojes
    input clk_32f,
    input rst,
    input reset_L,
    //entradas
    input [7:0] in0,
    input [7:0] in1,
    input [7:0] in2,
    input [7:0] in3,
    input valid_in0,
    input valid_in1,
    input valid_in2,
    input valid_in3,
    //salidas
    output wire [7:0] outp0,
    output wire [7:0] outp1,
    output wire [7:0] outp2,
    output wire [7:0] outp3,
    output wire val_out0p,
    output wire val_out1p,
    output wire val_out2p,
    output wire val_out3p,
    
    output wire [7:0] outdemux0,
    output wire [7:0] outdemux1,
    output wire [7:0] outdemux2,
    output wire [7:0] outdemux3,
    output wire val_outdemux0,
    output wire val_outdemux1,
    output wire val_outdemux2,
    output wire val_outdemux3
);
    //output Tx
    wire salida_tx;
    //ouput Rx
    wire salida_rx,val_out0,val_out1,val_out2,val_out3;
    wire [7:0] out0, out1, out2, out3;
    //módulos
    phy_tx modtx(
            //Outputs
            .salida_tx (salida_tx),
            .valid_outp0 (val_out0p),
            .valid_outp1 (val_out1p),
            .valid_outp2 (val_out2p),
            .valid_outp3 (val_out3p),
            .outp0 (outp0[7:0]),
            .outp1 (outp1[7:0]),
            .outp2 (outp2[7:0]),
            .outp3 (outp3[7:0]),
            //Inputs
            .clk_32f (clk_32f),
            .rst (rst),
            .IDLE (salida_rx),
            .valid_in0 (valid_in0),
            .valid_in1 (valid_in1),
            .valid_in2 (valid_in2),
            .valid_in3 (valid_in3),
            .in0 (in0[7:0]),
            .in1 (in1[7:0]),
            .in2 (in2[7:0]),
            .in3 (in3[7:0])
    );
    phy_rx modrx(
            ///Outputs
            .salida_rx (salida_rx),
            .out0 (out0[7:0]),
            .out1 (out1[7:0]),
            .out2 (out2[7:0]),
            .out3 (out3[7:0]),
            .val_out0 (val_out0),
            .val_out1 (val_out1),
            .val_out2 (val_out2),
            .val_out3 (val_out3),
            //Inputs
            .clk_32f (clk_32f),
            .rst (rst),
            .reset_L (reset_L),
            .entrada_tx (salida_tx)
    );
endmodule