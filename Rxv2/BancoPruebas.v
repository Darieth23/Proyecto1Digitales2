`timescale 1ns /100 ps

`include "probador.v"
`include "phy_rx.v"
//`include "phy_rxSynth.v"
module bancopruebas;
    wire salida_rx;
    wire [7:0] out0;
    wire [7:0] out1;
    wire [7:0] out2;
    wire [7:0] out3;
    wire val_out0;
    wire val_out1;
    wire val_out2;
    wire val_out3;
    wire clk_32f;
    wire rst;
    wire entrada_tx;
    wire reset_L;

    phy_rx phy_condrx(/*autoinst*/
		    // Outputs
		    .salida_rx	(salida_rx),
		    .out0 (out0 [7:0]),
            .out1 (out1 [7:0]),
            .out2 (out2 [7:0]),
            .out3 (out3 [7:0]),
            .val_out0 (val_out0),
            .val_out1 (val_out1),
            .val_out2 (val_out2),
            .val_out3 (val_out3),
		    // Inputs
            .clk_32f (clk_32f),
            .rst (rst),
            .entrada_tx(entrada_tx),
            .reset_L (reset_L)
    );

    probador probadorinst(/*autoinst*/
		    // Outputs
            .clk_32f (clk_32f),
            .rst (rst),
            .entrada_tx(entrada_tx), 
            .reset_L (reset_L),   
		    // Inputs
		    .salida_rx	(salida_rx),
		    .out0 (out0 [7:0]),
            .out1 (out1 [7:0]),
            .out2 (out2 [7:0]),
            .out3 (out3 [7:0]),
            .val_out0 (val_out0),
            .val_out1 (val_out1),
            .val_out2 (val_out2),
            .val_out3 (val_out3)
    );
endmodule
