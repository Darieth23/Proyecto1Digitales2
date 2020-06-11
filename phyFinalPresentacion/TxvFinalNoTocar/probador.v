module probador(
    input salida_tx,
    input salida_txEst,
    output reg [7:0] IDLE,
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
    valid_in0<=1;
    valid_in1<=1;
    valid_in2<=1;
    valid_in3<=1;
    IDLE<= 'hBC; 
    in0<='hAA;
    in1<='hBB;
    in2<='hCC;
    in3<='hDD;
    selector_2f = 0;


    @(posedge clk_32f);
	rst<='b1;
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
	IDLE<= 'h7C;
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
    	 IDLE<= 'hDA; 
	 in0<= 'hFF;
   	 in1<= 'hFF;
	 in2<= 'hFF;
   	 in3<= 'hFF;



    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
  	  IDLE<= 'hCC;
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
   	 IDLE<= 'h3C; 
	 rst<='b1;
	 in0<= 'hFF;
   	 in1<= 0;
	 in2<= 'hFF;
   	 in3<= 0;

 
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
   	 IDLE<= 'hBB; 
	 rst<='b1;
	 in0<= 0;
   	 in1<= 'hFF;
	 in2<= 0;
   	 in3<= 'hFF;


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
	 IDLE<= 'h7C; 
	 rst<='b1;
         valid_in0<='b1;
   	 valid_in1<='b1;
   	 valid_in2<='b1;
   	 valid_in3<='b1;
	 in0<= 'hFF;
   	 in1<= 0;
	 in2<= 'hFF;
   	 in3<= 0;

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
   	 IDLE<= 'hBD; 
	 rst<='b1;
	 in0<= 0;
   	 in1<= 'hFF;
	 in2<= 0;
   	 in3<= 'hFF;


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
	 IDLE<= 'h7C; 
	 rst<='b1;
         valid_in0<='b1;
   	 valid_in1<='b1;
   	 valid_in2<='b1;
   	 valid_in3<='b1;
	 in0<= 'hFF;
   	 in1<= 0;
	 in2<= 'hFF;
   	 in3<= 0;

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
   	 IDLE<= 'hFF; 
	 rst<='b1;
	 in0<= 0;
   	 in1<= 'hFF;
	 in2<= 0;
   	 in3<= 'hFF;


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
   	 IDLE<= 'hAA; 	
	 rst<='b1;
	 in0<= 'hFF;
   	 in1<= 0;
	 in2<= 'hFF;
   	 in3<= 0;
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
   	 IDLE<= 'hBC; 
	 rst<='b1;
	 in0<= 0;
   	 in1<= 'hFF;
	 in2<= 0;
   	 in3<= 'hFF;


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
	 IDLE<= 'h7C; 
	 rst<='b1;
         valid_in0<='b1;
   	 valid_in1<='b1;
   	 valid_in2<='b1;
   	 valid_in3<='b1;
	 in0<= 'hFF;
   	 in1<= 0;
	 in2<= 'hFF;
   	 in3<= 0;

    @(posedge clk_32f);
	rst<='b1;
    @(posedge clk_32f);
    @(posedge clk_32f);
   	IDLE<= 'h7C;
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
    	 IDLE<= 'hBC; 
	 in0<= 'hFF;
   	 in1<= 'hFF;
	 in2<= 'hFF;
   	 in3<= 'hFF;


    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
  	  IDLE<= 'h7C;
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
   	 IDLE<= 'h7C; 
	 rst<='b1;
	 in0<= 'hFF;
   	 in1<= 0;
	 in2<= 'hFF;
   	 in3<= 0;

 
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
   	 IDLE<= 'hBC; 
	 rst<='b1;
	 in0<= 0;
   	 in1<= 'hFF;
	 in2<= 0;
   	 in3<= 'hFF;


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
	 IDLE<= 'h7C; 
	 rst<='b1;
         valid_in0<='b1;
   	 valid_in1<='b1;
   	 valid_in2<='b1;
   	 valid_in3<='b1;
	 in0<= 'hFF;
   	 in1<= 0;
	 in2<= 'hFF;
   	 in3<= 0;

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
   	 IDLE<= 'hBC; 
	 rst<='b1;
	 in0<= 0;
   	 in1<= 'hFF;
	 in2<= 0;
   	 in3<= 'hFF;


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
	 IDLE<= 'h7C; 
	 rst<='b1;
         valid_in0<='b1;
   	 valid_in1<='b1;
   	 valid_in2<='b1;
   	 valid_in3<='b1;
	 in0<= 'hFF;
   	 in1<= 0;
	 in2<= 'hFF;
   	 in3<= 0;

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
   	 IDLE<= 'h7C; 
	 rst<='b1;
	 in0<= 0;
   	 in1<= 'hFF;
	 in2<= 0;
   	 in3<= 'hFF;


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
   	 IDLE<= 'hBC; 	
	 rst<='b1;
	 in0<= 'hFF;
   	 in1<= 0;
	 in2<= 'hFF;
   	 in3<= 0;
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
   	 IDLE<= 'hBC; 
	 rst<='b1;
	 in0<= 0;
   	 in1<= 'hFF;
	 in2<= 0;
   	 in3<= 'hFF;


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
	 IDLE<= 'h7C; 
	 rst<='b1;
         valid_in0<='b1;
   	 valid_in1<='b1;
   	 valid_in2<='b1;
   	 valid_in3<='b1;
	 in0<= 'hFF;
   	 in1<= 0;
	 in2<= 'hFF;
   	 in3<= 0;
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

