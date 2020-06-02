module serialtopar(
	//output reg[7:0]	IDLE_out,			// salida en paralelo de 8b
	output reg [7:0]		IDLE_out,		// bit de valid de la salida
	input 			clk_4f,			// señal de clock del modulo
	input			clk_32f,			// señal de clock a 8f
	input 			reset_L,		// señal de reset del modulo
	input [7:0]			IDL 		// entrada de datos serial
	);
	reg 			active;		 	// regs internos de 1 bit
	reg [7:0]		temp;			// reg desplazante que recibe los datos
	reg [3:0]		bc_cnt;			// reg que cuenta la cantidad de datos de control bc

	always @(*) begin			// bloque sincrono
		if (!reset_L) begin			// reset de los flops 
			temp = 0;
		
		end
		else begin
			temp = IDL;
		end
    end	

    always @(posedge clk_32f) begin			// bloque sincrono
		if (!reset_L) begin			// reset de los flops 
			//IDLE_out <= 0;
			IDLE_out<=0;
			bc_cnt <= 0;
			active <= 0;
		end
		else begin					// asignacion de los flops de manera sincrona			
			if (temp==8'hBC)begin
				bc_cnt <= bc_cnt +1;
				IDLE_out <= 0;
			end
			else begin
				bc_cnt <= 0;
			end
			if (bc_cnt >= 4) begin
				active = 1;
			end
			if (active && temp==8'h7C)begin //Active = 1 & IDL = 7C 
			IDLE_out <= 1;	
			end
		end	
    end
endmodule 
