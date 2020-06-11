`timescale 1ns /100 ps

`include "probador.v"
`include "phy_rx.v"
`include "rxEst.v"
`include "cmos_cells.v"
module bancopruebas;
    wire  salida_rx;
    wire  salida_rx_Est;
    wire [7:0] out0;
    wire [7:0] out1;
    wire [7:0] out2;
    wire [7:0] out3;
    wire val_out0;
    wire val_out1;
    wire val_out2;
    wire val_out3;

    wire [7:0] out0_Est;
    wire [7:0] out1_Est;
    wire [7:0] out2_Est;
    wire [7:0] out3_Est;
    wire val_out0_Est;
    wire val_out1_Est;
    wire val_out2_Est;
    wire val_out3_Est;

    wire clk_32f;
    wire rst;
    wire entrada_tx;
    wire reset_L;

    phy_rx phy_condrx(
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

phy_rx_Est phy_Estrx(/*autoinst*/
		    // Outputs
		    .salida_rx_Est	(salida_rx_Est),
		    .out0 (out0_Est [7:0]),
            .out1 (out1_Est [7:0]),
            .out2 (out2_Est [7:0]),
            .out3 (out3_Est [7:0]),
            .val_out0 (val_out0_Est),
            .val_out1 (val_out1_Est),
            .val_out2 (val_out2_Est),
            .val_out3 (val_out3_Est),
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
		   // .salida_rx	(salida_rx),
		    .salida_rx_Est	(salida_rx_Est),
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
