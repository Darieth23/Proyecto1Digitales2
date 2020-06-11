module probador(
	//entradas
    input salida_rx,
    input [7:0] out0,
    input [7:0] out1,
    input [7:0] out2,
    input [7:0] out3,
    input val_out0,
    input val_out1,
    input val_out2,
    input val_out3,
    //relojes
    output reg clk_32f,
    output reg rst,
    output reg reset_L,
    //salidas
    output reg entrada_tx
); 


 initial begin
    $dumpfile("bancopruebasrx.vcd");
    $dumpvars;

    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    rst <= 0;
    entrada_tx <= 0;
    reset_L <= 0;
    @(posedge clk_32f);
	rst <= 'b1;  
    @(posedge clk_32f);
    reset_L <= 'b1;  
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 0;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 0;
    @(posedge clk_32f);
    entrada_tx <= 0;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 0;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 0;
    @(posedge clk_32f);
    entrada_tx <= 0;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 0;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 0;
    @(posedge clk_32f);
    entrada_tx <= 0;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 0;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 0;
    @(posedge clk_32f);
    entrada_tx <= 0;
    //BD
    @(posedge clk_32f);

    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 0;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 0;
    @(posedge clk_32f);
    entrada_tx <= 1;
    //BD
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 0;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 0;
    @(posedge clk_32f);
    entrada_tx <= 1;
    //BA
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 0;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 0;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 0;
    //AB
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 0;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 0;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 0;
    @(posedge clk_32f);
    entrada_tx <= 1;
    @(posedge clk_32f);
    entrada_tx <= 1;

    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);

    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);

    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);

    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);

    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    

    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    

    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    

    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);

    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);

    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);

    rst <= 'b0;
    $finish;
   end
    initial begin
        clk_32f <=0;
    end
    always #2 clk_32f <=~clk_32f;
endmodule

