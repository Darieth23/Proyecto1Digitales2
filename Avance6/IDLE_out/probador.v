module probador (
	output reg 					clk_4f,			// generador del clock
	output reg 					clk_32f,			// generador del clock
	output reg 					reset_L,		// generador de reset
	output reg [7:0]					IDL,		// generador de la entrada de dato 0
	input [7:0]					IDLE_out_c, 		// monitor de salida del bit valido cond
	input [7:0]					IDLE_out_e 		// monitor de salida del bit valido estr
	);

	initial begin
		$dumpfile("s2p.vcd");				// archivo "dump"
		$dumpvars;					// dumping de variables

		// Pruebas
		IDL <= 0; 					
		// Pruebas #1: Reset bajo. 
		reset_L <= 0;
		// Prueba #2: Reset alto. Valido primer dato

		// Prueba #3: Envía BC 4 veces

			@(posedge clk_32f);
			IDL <= 8'hBC;
			reset_L <= 0;
			@(posedge clk_32f);
			IDL <= 8'hBC;
			@(posedge clk_32f);
			IDL <= 8'hBC;
			@(posedge clk_32f);
			IDL <= 8'hBC;
			@(posedge clk_32f);
			IDL <= 8'h7C;
			@(posedge clk_4f);
			reset_L <= 1;
			@(posedge clk_32f);
			IDL <= 8'hBC;
			@(posedge clk_32f);
			IDL <= 8'hBC;
			@(posedge clk_32f);
			IDL <= 8'hBC;
			@(posedge clk_32f);
			IDL <= 8'hBC;
			@(posedge clk_32f);
			@(posedge clk_32f);
			IDL <= 8'h7C;
			@(posedge clk_32f);
			IDL <= 8'hBC;
			@(posedge clk_32f);
			IDL <= 8'hBC;
		
		// Prueba #4: Envía 3 datos validos
		repeat(8) begin // envía FF
			@(posedge clk_32f);
			IDL <= 8'h7C;
		end
		// envia EE
		repeat(2) begin
			@(posedge clk_32f);
			IDL <= 8'h7C;
			@(posedge clk_32f);
			IDL <= 8'h7C;
			@(posedge clk_32f);
			IDL <= 8'h7C;
			@(posedge clk_32f);
			IDL <= 8'hBC;
		end
		//envia DD
		repeat(2) begin
			@(posedge clk_32f);
			IDL <= 8'h7C;
			@(posedge clk_32f);
			IDL <= 8'h7C;
			@(posedge clk_32f);
			IDL <= 8'hBC;
			@(posedge clk_32f);
			IDL <= 8'h7C;
		end
		// Prueba #5: Envía BC de nuevo. Se espera IDLE_out = 0
		@(posedge clk_32f);
		IDL <= 8'h7C;
		@(posedge clk_32f);
		IDL <= 8'hBC;
		@(posedge clk_32f);
		IDL <= 8'h7C;
		@(posedge clk_32f);
		IDL <= 8'h7C;
		@(posedge clk_32f);
		IDL <= 8'h7C;
		@(posedge clk_32f);
		IDL <= 8'h7C;
		@(posedge clk_32f);
		IDL <= 8'hBC;
		@(posedge clk_32f);
		IDL <= 8'hBC;
		// Prueba 6: Vuelve a enviar otro dato valido
		// envia AA
		repeat(4) begin
			@(posedge clk_32f);
			IDL <= 8'h7C;
			@(posedge clk_32f);
			IDL <= 8'hBC;
		end
		// Prueba 7: Reset alto y termina de almacenar señales
		repeat(7) begin
			@(posedge clk_32f);
		end
		reset_L <= 0;
		@(posedge clk_4f);
		$finish;	
	end
	// Generador del clk
	initial	begin
		clk_4f <= 0;				// Valor inicial del clk_4f
		clk_32f <= 0;				// Valor inicial del clk_32f
	end
	always #1 clk_32f <= ~clk_32f;		// toggle cada 1ns -> 8f = 500MHz
	always #8 clk_4f <= ~clk_4f;			// toggle cada 8ns -> f = 62,5MHz
endmodule
