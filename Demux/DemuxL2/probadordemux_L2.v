module probadordemuxL2( 
     //entradas
	output reg clk_2f,
	output reg clk,
    output reg clk_4f,
    output reg reset_L,
    output reg selectorL2,
    output reg valid,
    output reg [7:0] data_in0_demuxL2,   
    //salidas
    input validout0,
    input validout1,
    input [7:0] dataout0_demuxL2,
    input [7:0] dataout1_demuxL2
    );


	initial begin
		$dumpfile("demux1a2L2.vcd");
		$dumpvars;		
		reset_L= 0;
		valid <= 1;
		data_in0_demuxL2 <= 'b0;
		selectorL2 = 1;
		@(posedge clk_4f);
		@(posedge clk_4f);
		reset_L <= 1;
		@(posedge clk_4f);
        valid <= 0;
		data_in0_demuxL2 <= data_in0_demuxL2 + 16;
			
        @(posedge clk_4f);
		valid <= 1;
		data_in0_demuxL2 <= data_in0_demuxL2 + 2;
		@(posedge clk_4f);

		data_in0_demuxL2 <= 'hA;
		@(posedge clk_4f);
		valid <= 1;
		data_in0_demuxL2 <= data_in0_demuxL2 + 10;
		@(posedge clk_4f);
		valid <= 0;
		data_in0_demuxL2 <= data_in0_demuxL2 + 8;
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
