module mux_conductualL1(
	input selector,
	input reset_L,
	input [3:0] in0,
	input [3:0] in1,
	input valid_bit0,
	input valid_bit1,
	output reg valid_bit_out,
	output reg [3:0] data_out
	);
	reg [3:0] A;
	reg validotemporal;
	always @(*) begin
	A = 4'b00; 
	validotemporal = 4'b00; 
		if (selector==0) begin
			validotemporal = valid_bit0;
			if (valid_bit0)
				A = in0;
			else
				A = 4'b00;
		end
		else begin
			validotemporal = valid_bit1;
			if (valid_bit1)
				A = in1;
			else
				A = 4'b00;
		end

	end
	always @ (*) begin
		valid_bit_out<=validotemporal;
		if (reset_L==0)
			data_out <= 4'b00;
		else
			data_out <= A;
	end
endmodule
