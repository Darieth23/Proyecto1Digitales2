module circulacion (
    //entradas
	input IDLE,
	
	//valids entradas
    input valid_in0,
    input valid_in1,
    input valid_in2,
    input valid_in3,
	
	//entradas de datos
    input [7:0] in0,
    input [7:0] in1,
    input [7:0] in2,
    input [7:0] in3,
	
    //valids salidas probador
        output reg valid_outp0,
	output reg valid_outp1,
	output reg valid_outp2,
	output reg valid_outp3,
	
	//salidas probador
	output reg [7:0] outp0,
	output reg [7:0] outp1,
	output reg [7:0] outp2,
	output reg [7:0] outp3,
	
	//valids salidas flops
	output reg valid_outf0,
	output reg valid_outf1,
	output reg valid_outf2,
	output reg valid_outf3,
	
	//salidas flops
	output reg [7:0] outf0,
	output reg [7:0] outf1,
	output reg [7:0] outf2,
	output reg [7:0] outf3
    );
	
    //etapa de selección, elegí la señal que va a pasar.
	
	
    always @ (*) begin

		if(IDLE == 1) begin
		
			outf0 = in0;
			outp0 = 'b0;
			valid_outf0 = valid_in0;
			valid_outp0 = 'b0;
		
			outf1 = in1;
			outp1 = 'b0;
			valid_outf1 = valid_in1;
			valid_outp1 = 'b0;
			
			outf2 = in2;
			outp2 = 'b0;
			valid_outf2 = valid_in2;
			valid_outp2 = 'b0;
			
			outf3 = in3;
			outp3 = 'b0;
			valid_outf3 = valid_in3;
			valid_outp3 = 'b0;
		end
		
		else begin
			
			outp0 = in0;
			outf0 = 'b0;
			valid_outp0 = valid_in0;
			valid_outf0 = 'b0;
			
			outp1 = in1;
			outf1 = 'b0;
			valid_outp1 = valid_in1;
			valid_outf1 = 'b0;
			
			outp2 = in2;
			outf2 = 'b0;
			valid_outp2 = valid_in2;
			valid_outf2 = 'b0;
		
			outp3 = in3;
			outf3 = 'b0;
			valid_outp3 = valid_in3;
			valid_outf3 = 'b0;
			
			end
	end

	
endmodule
