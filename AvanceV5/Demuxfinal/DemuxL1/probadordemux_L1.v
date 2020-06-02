module probadordemuxL2( 
     //entradas
	output reg clk_2f,
	output reg clk,
    output reg clk_4f,
    output reg reset_L,
    output reg valid1,
	output reg valid2,
    output reg [7:0] data_in0_demuxL1,
	output reg [7:0] data_in1_demuxL1,	   
    //salidas
    input validout0,
    input validout1,
    input validout2,
    input validout3,
    input validout_Estruct0,
    input validout_Estruct1,
    input validout_Estruct2,
    input validout_Estruct3,
    input [7:0] dataout0_demuxL1,
    input [7:0] dataout1_demuxL1,
    input [7:0] dataout2_demuxL1,
    input [7:0] dataout3_demuxL1,
    input [7:0] dataout0_EstructL1,
    input [7:0] dataout1_EstructL1,
    input [7:0] dataout2_EstructL1,
    input [7:0] dataout3_EstructL1
	);
	initial begin
		$dumpfile("demux2a4L1.vcd");
		$dumpvars;		
		reset_L= 0;
		valid1 <= 1;
		valid2 <= 1;
		data_in0_demuxL1 <= 'b0;
		data_in1_demuxL1 <= 'b0;
		@(posedge clk_2f);
		@(posedge clk_2f);
		reset_L <= 1;
		@(posedge clk_2f);

		data_in0_demuxL1 <= data_in0_demuxL1 + 16;
		data_in1_demuxL1 <= data_in1_demuxL1 + 8;
        @(posedge clk_2f);

		data_in0_demuxL1 <= data_in0_demuxL1 + 15;
		data_in1_demuxL1 <= data_in1_demuxL1 + 9;



		@(posedge clk_2f);
		data_in0_demuxL1 <= data_in0_demuxL1 + 4;
		data_in1_demuxL1 <= data_in1_demuxL1 - 8;

		@(posedge clk_2f);
		data_in0_demuxL1 <= data_in0_demuxL1 + 10;
		data_in1_demuxL1 <= + 9;

		@(posedge clk_2f);

		data_in0_demuxL1 <= data_in0_demuxL1 + 7;
		data_in1_demuxL1 <= data_in1_demuxL1 + 6;

		@(posedge clk_2f);

		data_in0_demuxL1 <= data_in0_demuxL1 + 10;
		data_in1_demuxL1 <= + 20;

		@(posedge clk_2f);

		data_in0_demuxL1 <= data_in0_demuxL1 + 14;
		data_in1_demuxL1 <= data_in1_demuxL1 + 12 ;

		@(posedge clk_2f);

		data_in0_demuxL1 <= data_in0_demuxL1 + 1;
		data_in1_demuxL1 <= data_in1_demuxL1 + 4;

		@(posedge clk_2f);
		data_in0_demuxL1 <= data_in0_demuxL1 + 4;
		data_in1_demuxL1 <= data_in1_demuxL1 + 3;

		repeat (1) begin
            @(posedge clk);
        end
		$finish;	
	end
	// Reloj
	initial	clk <= 0;
	always	#300 clk <= ~clk;
	initial clk_2f 	<= 1;
	always	#150 clk_2f 	<= ~clk_2f;
    initial clk_4f 	<= 1;
	always	#75 clk_4f 	<= ~clk_4f;



endmodule
