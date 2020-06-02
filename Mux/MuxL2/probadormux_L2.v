module probador2to1( 
	output reg  clk,
	output reg  clk_2f,
	output reg  clk_4f,
	output reg selector,
	output reg		reset_L,
	output reg [7:0] 	in0,
	output reg [7:0] 	in1,
	//output reg [7:0] 	in2,
	//output reg [7:0] 	in3,
	output reg 		valid_bit0,
	output reg 		valid_bit1,
	//output reg 		valid_bit2,
	//output reg 		valid_bit3,
	input 			valid_bit_out1,
	input 			valid_bit_out2,
	//input 			validyosys1,
	//input 			validyosys2,
	input [7:0] 		data_out1,
	input [7:0] 		data_out2
	//input [7:0] 		data_outyosys1,
	//input [7:0] 		data_outyosys2
	);


	initial begin
		$dumpfile("mux2to1_L2.vcd");
		$dumpvars;		


		reset_L= 0;
		valid_bit0 <= 1;
		valid_bit1 <= 1;
		//valid_bit2 <= 1;
		//valid_bit3 <= 1;
		in0 <= 'b0;
		in1 <= 'b0;
		//in2 <= 'b0;
		//in3 <= 'b0;
		selector =1;
		repeat (1)
		@(posedge clk_4f);
		reset_L <= 1;
		@(posedge clk_4f);
		in0 <= 1;
		in1 <= 2;
		//in2 <= 3;
		//in3 <= 4;
		@(posedge clk_4f);
		in0 <= 'hA;
		in1 <= 'hB;
		//in2 <= 'hc;
		//in3 <= 'hD;
		@(posedge clk_4f);
		in0 <= 5;
		in1 <= 6;
		//in2 <= 7;
		//in3 <= 8;
		@(posedge clk_4f);
		in0 <= 'hFF;
		in1 <= 'hAA;
		//in2 <= 'hBB;
		//in3 <= 'hCC;
		@(posedge clk_4f);
		in0 <= 9;
		in1 <= 1;
		//in2 <= 6;
		//in3 <= 7;
		@(posedge clk_4f);
		in0 <= 'hF1;
		in1 <= 'hA2;
		//in2 <= 'hB3;
		//in3 <= 'hC5;
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
