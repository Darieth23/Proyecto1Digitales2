module probadorcirculacion(
    
	output reg IDLE,
	output reg clk,

	output reg valid_in0,
    	output reg valid_in1,
	output reg valid_in2,
   	output reg valid_in3,

	//entradas de datos
	output reg [7:0] in0,
	output reg [7:0] in1,
	output reg [7:0] in2,
	output reg [7:0] in3,
	
    //valids salidas probador
   	input valid_outp0,
	input valid_outp1,
	input valid_outp2,
	input valid_outp3,

	//salidas probador
	input [7:0] outp0,
	input [7:0] outp1,
	input [7:0] outp2,
	input [7:0] outp3,
	
	//valids salidas flops
	input valid_outf0,
	input valid_outf1,
	input valid_outf2,
	input valid_outf3,
	
	//salidas flops
	input [7:0] outf0,
	input [7:0] outf1,
	input [7:0] outf2,
	input [7:0] outf3

	);
	
   
    initial begin
        $dumpfile("circulacion.vcd");
        $dumpvars;
		
		
		valid_in0 <= 0;
		valid_in1 <= 0;
		valid_in2 <= 0;
		valid_in3 <= 0;

		IDLE <= 0;

		/* PRUEBAS VALORES INICIALES FALLIDA
		outf2 <= 8'b0;
		outf3 <= 8'b0;

		outp0 <= 8'b0;
		outp1 <= 8'b0;
		outp2 <= 8'b0;
		outp3 <= 8'b0;*/
       
        @(posedge clk);
        in0 <= 8'b0;
        in1 <= 8'b0;
        in2 <= 8'b0;
        in3 <= 8'b0;
	IDLE <= 1;
		
        valid_in0 <= 1;
		valid_in1 <= 1;
		valid_in2 <= 1;
		valid_in3 <= 1;
		
        @(posedge clk);
		
        in0 <= 'b1;
		in1 <= 'b1;
		in2 <= 'b0;
		in3 <= 'b0;
        
		@(posedge clk);
		
		in0 <= 'b0;
		in1 <= 'b0;
		in2 <= 'b1;
		in3 <= 'b1;
		
		@(posedge clk);
		IDLE <= 0;
		
		@(posedge clk);
		
        $finish;

    end
    initial clk <= 0;
    always #100 clk <= ~clk; 
    //initial clk_2f <= 0;
    //always #50 clk_2f <= ~clk_2f;
    //initial clk_4f <= 0;
    //always #25 clk_4f <= ~clk_4f;    
endmodule
