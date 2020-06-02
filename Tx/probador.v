module probador(
    input salida_tx,
    output reg IDLE,
    output reg rst,
    output reg clk_32f,
    output reg [7:0]    in0,
    output reg [7:0]    in1,
    output reg [7:0]    in2,
    output reg [7:0]    in3,
    output reg valid_in0,
    output reg valid_in1,
    output reg valid_in2,
    output reg valid_in3,  
    output reg selector_2f
);

    reg clk_4f;
    reg clk_2f;
    reg clk_f;

   initial begin
    $dumpfile("bancopruebas.vcd");
    $dumpvars;
 
    rst<='b0;
    valid_in0<=0;
    valid_in1<=0;
    valid_in2<=0;
    valid_in3<=0;
    IDLE<= 1; 
    in0<='b0;
    in1<='h0;
    in2<='b0;
    in3<='h0;
    selector_2f = 0;

 #8;
    @(posedge clk_32f);
	rst<='b1;
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

         valid_in0<='b1;
   	 valid_in1<='b1;
   	 valid_in2<='b1;
   	 valid_in3<='b1;
	 in0<= 'hFF;
   	 in1<= 'hFA;
	 in2<= 'hBA;
   	 in3<= 'hFF;


 #8;
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
	rst<='b1;
	 in0<= 0;
   	 in1<= 0;
	 in2<= 0;
   	 in3<= 0;

 #8;
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
	 rst<='b1;
	 in0<= 'hFF;
   	 in1<= 'hFA;
	 in2<= 'hBA;
   	 in3<= 'hFF;

 #8;
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
	rst<='b1;
         valid_in0<='b1;
   	 valid_in1<='b1;
   	 valid_in2<='b1;
   	 valid_in3<='b1;
	 in0<= 'hFF;
   	 in1<= 'hFA;
	 in2<= 'hBA;
   	 in3<= 'hFF;

 #8;
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
	rst<='b1;
	 in0<= 'hFF;
   	 in1<= 'hFA;
	 in2<= 'hBA;
   	 in3<= 'hFF;

 #8;
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
	 rst<='b1;
	 in0<= 'hFF;
   	 in1<= 'hFA;
	 in2<= 'hBA;
   	 in3<= 'hFF;

#1000;
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
    always #64  selector_2f <= ~selector_2f;

   

  
endmodule

