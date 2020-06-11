`include "Demux2a4_descp_condL1rx.v"
`include "serialtoparIDLErx.v"
`include "Demux1a2_descp_condL2rx.v"
`include "partoserialIDLErx.v"


module phy_rx(
    //relojes
    input clk_32f,
    input rst,
    input reset_L,
    //entradas
    input entrada_tx,
	//salidas
    output wire salida_rx,
    output reg [7:0] out0,
    output reg [7:0] out1,
    output reg [7:0] out2,
    output reg [7:0] out3,
    output reg val_out0,
    output reg val_out1,
    output reg val_out2,
    output reg val_out3    
);
    //outputs, guardados en FFP.
    //mod1
    reg [7:0] dataout_mod1; 
    reg validout_mod1;
    //mod3
    reg validout0_L2;
    reg validout1_L2;
    reg [7:0] dataout0_mod3;
    reg [7:0] dataout1_mod3;
    //outputs, entran a los FFP.
    //mod1
    wire [7:0] dataout_mod1w;
    wire validout_mod1w;
    //mod2
    wire IDLw; //este no entra a un FFP
    //mod3
    wire validout0_L2w;
    wire validout1_L2w;
    wire [7:0] dataout0_mod3w;
    wire [7:0] dataout1_mod3w;
    //mod4
    wire validout0_L1w;
    wire validout1_L1w;
    wire validout2_L1w;
    wire validout3_L1w;
    wire [7:0] dataout0_mod4w;
    wire [7:0] dataout1_mod4w;
    wire [7:0] dataout2_mod4w;
    wire [7:0] dataout3_mod4w;
    //reloj
    wire reloj_4f;    
    wire reloj_2f;
    wire reloj_f;
    //Instancia clks
    gen_clk clock(/*AUTOINST*/
	      // Outputs
	      .reloj_4f			(reloj_4f),
	      .reloj_2f			(reloj_2f),
	      .reloj_f			(reloj_f),
	      // Inputs
	      .reloj_32f		(clk_32f),
	      .rst			(rst)
    );
    //mod1, entrada de información
    serialtoparrx mod1(/*AUTOINST*/
            // Outputs
            .data_out (dataout_mod1w [7:0]),
            .valid_out (validout_mod1w),
            // Inputs
            .clk_4f (reloj_4f),
            .clk_32f (clk_32f),
            .reset_L (reset_L),
            .data_in (entrada_tx)
    );
    //FFP mod1
    always @ (posedge reloj_4f) begin
        if(rst == 0) begin
            dataout_mod1 = 8'b0;
            validout_mod1 = 0;
        end
        else begin
            dataout_mod1 = dataout_mod1w;
            validout_mod1 = validout_mod1w;
        end
    end
    //mod2, entrada par/ser, va a tx, es el valid (?)
    partoserialrx mod2(/*AUTOINST*/
            // Outputs
            .IDL (salida_rx),
            // Inputs
            .active (validout_mod1),
            .reset (reset_L),
            .clk_32f (clk_32f)
    );
    //mod3, entrada de la etapa L2 de demux
    demux1a2_descp_condL2 mod3(/*AUTOINST*/
            // Outputs
            .validout0 (validout0_L2w),
            .validout1 (validout1_L2w),
            .dataout0_demuxL2 (dataout0_mod3w [7:0]),
            .dataout1_demuxL2 (dataout1_mod3w [7:0]),
            // Inputs
            .clk_4f (reloj_4f),
            .clk_32f (clk_32f),
            .reset_L (reset_L),
            .valid (validout_mod1),
            .data_in0_demuxL2 (dataout_mod1 [7:0])
    );
    //FFP mod3
    always @ (posedge reloj_2f) begin
       if(rst == 0) begin
            validout0_L2 = 0;
            validout1_L2 = 0;
            dataout0_mod3 = 8'b0;
            dataout1_mod3 = 8'b0;
        end
        else begin
            validout0_L2 = validout0_L2w;
            validout1_L2 = validout1_L2w;
            dataout0_mod3 = dataout0_mod3w;
            dataout1_mod3 = dataout1_mod3w;
        end
    end
    //mod4, entrada de la etapa L1 de demux
    demux2a4_descp_condL1 mod4(/*AUTOINST*/
            // Outputs
            .validout0 (validout0_L1w),
            .validout1 (validout1_L1w),
            .validout2 (validout2_L1w),
            .validout3 (validout3_L1w),

            .dataout0_demuxL1 (dataout0_mod4w [7:0]),
            .dataout1_demuxL1 (dataout1_mod4w [7:0]),
            .dataout2_demuxL1 (dataout2_mod4w [7:0]),
            .dataout3_demuxL1 (dataout3_mod4w [7:0]),
            // Inputs
            .clk_2f (reloj_2f),
            .clk_32f (clk_32f),
            .reset_L (reset_L),
            .valid1 (validout0_L2),
            .valid2 (validout1_L2),
            .data_in0_demuxL1 (dataout0_mod3 [7:0]),
            .data_in1_demuxL1 (dataout1_mod3 [7:0])
    );
    //FFP mod4, estas conectando las salidas
    always @ (posedge reloj_f) begin
        if(rst == 0) begin
            val_out0 = 0;
            val_out1 = 0;
            val_out2 = 0;
            val_out3 = 0;
            out0 = 8'b0;
            out1 = 8'b0;
            out2 = 8'b0;
            out3 = 8'b0;
        end
        else begin
            val_out0 = validout0_L1w;
            val_out1 = validout1_L1w;
            val_out2 = validout2_L1w;
            val_out3 = validout3_L1w;
            out0 = dataout0_mod4w;
            out1 = dataout1_mod4w;
            out2 = dataout2_mod4w;
            out3 = dataout3_mod4w;
        end
    end
endmodule