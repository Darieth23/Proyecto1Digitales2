module probador (
	output reg 					clk_4f,			// generador del clock
	output reg 					clk_32f,			// generador del clock
	output reg 					reset_L,		// generador de reset
	output reg					data_in,		// generador de la entrada de dato 0
	input [7:0]					data_out_c,		// monitor de salida de datos cond
	input [7:0]					data_out_e,		// monitor de salida de datos estr
	input 						valid_out_c, 		// monitor de salida del bit valido cond
	input 						valid_out_e 		// monitor de salida del bit valido estr
	);

	initial begin
		$dumpfile("s2p.vcd");				// archivo "dump"
		$dumpvars;					// dumping de variables

		// Pruebas
		data_in <= 0; 					
		// Pruebas #1: Reset bajo. 
		reset_L <= 0;
		// Prueba #2: Reset alto. Valido primer dato
		@(posedge clk_4f);
		reset_L <= 1;
		// Prueba #3: Envía BC 4 veces
		repeat(4) begin
			@(posedge clk_32f);
			data_in <= 1;
			@(posedge clk_32f);
			data_in <= 0;
			@(posedge clk_32f);
			data_in <= 1;
			@(posedge clk_32f);
			data_in <= 1;
			@(posedge clk_32f);
			data_in <= 1;
			@(posedge clk_32f);
			data_in <= 1;
			@(posedge clk_32f);
			data_in <= 0;
			@(posedge clk_32f);
			data_in <= 0;
		end
		// Prueba #4: Envía 3 datos validos
		repeat(8) begin // envía FF
			@(posedge clk_32f);
			data_in <= 1;
		end
		// envia EE
		repeat(2) begin
			@(posedge clk_32f);
			data_in <= 1;
			@(posedge clk_32f);
			data_in <= 1;
			@(posedge clk_32f);
			data_in <= 1;
			@(posedge clk_32f);
			data_in <= 0;
		end
		//envia DD
		repeat(2) begin
			@(posedge clk_32f);
			data_in <= 1;
			@(posedge clk_32f);
			data_in <= 1;
			@(posedge clk_32f);
			data_in <= 0;
			@(posedge clk_32f);
			data_in <= 1;
		end
		// Prueba #5: Envía BC de nuevo. Se espera valid_out = 0
		@(posedge clk_32f);
		data_in <= 1;
		@(posedge clk_32f);
		data_in <= 0;
		@(posedge clk_32f);
		data_in <= 1;
		@(posedge clk_32f);
		data_in <= 1;
		@(posedge clk_32f);
		data_in <= 1;
		@(posedge clk_32f);
		data_in <= 1;
		@(posedge clk_32f);
		data_in <= 0;
		@(posedge clk_32f);
		data_in <= 0;
		// Prueba 6: Vuelve a enviar otro dato valido
		// envia AA
		repeat(4) begin
			@(posedge clk_32f);
			data_in <= 1;
			@(posedge clk_32f);
			data_in <= 0;
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
