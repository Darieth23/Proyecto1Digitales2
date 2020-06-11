module probador(
    //entradas
    input [7:0] outp0,
    input [7:0] outp1,
    input [7:0] outp2,
    input [7:0] outp3,
    input [7:0] outdemux0,
    input [7:0] outdemux1,
    input [7:0] outdemux2,
    input [7:0] outdemux3,
    input val_out0p,
    input val_out1p,
    input val_out2p,
    input val_out3p,
    input val_outdemux0,
    input val_outdemux1,
    input val_outdemux2,
    input val_outdemux3,
    //salidas
    output reg clk_32f, 
	//output reg IDLE,
    output reg rst,
    output reg reset_L,
    //entradas
    output reg [7:0] in0,
    output reg [7:0] in1,
    output reg [7:0] in2,
    output reg [7:0] in3,
    output reg valid_in0,
    output reg valid_in1,
    output reg valid_in2,
    output reg valid_in3);

    reg clk_4f;
    reg clk_2f;
    reg clk_f;

initial begin
    $dumpfile("bancopruebas.vcd");
    $dumpvars;
 
    rst<='b0;
    reset_L <='b0;
    valid_in0<=1;
    valid_in1<=1;
    valid_in2<=1;
    valid_in3<=1;
    //IDLE<= 'hBC; 
    in0<='hAA;
    in1<='hCC;
    in2<='hEE;
    in3<='h11;




    @(posedge clk_f);
	 //IDLE<= 'hDA; 
	 in0<= 'hBB;
   	 in1<= 'hDD;
	 in2<= 'hFF;
   	 in3<= 'h22;
    @(posedge clk_f);
   	// IDLE<= 'h3C; 

	 in0<='hAA;
  	 in1<='hCC;
   	 in2<='hEE;
   	 in3<='h11;
@(posedge clk_f);
	 //IDLE<= 'hDA; 
	 in0<= 'hBB;
   	 in1<= 'hDD;
	 in2<= 'hFF;
   	 in3<= 'h22;
	 rst <= 1;
    @(posedge clk_f);
   	// IDLE<= 'h3C; 

	 in0<='hAA;
  	 in1<='hCC;
   	 in2<='hEE;
   	 in3<='h11;
 	 reset_L <= 1;
@(posedge clk_f);
	 //IDLE<= 'hDA; 
	 in0<= 'hBB;
   	 in1<= 'hDD;
	 in2<= 'hFF;
   	 in3<= 'h22;
	 
    @(posedge clk_f);
   	// IDLE<= 'h3C; 

	 in0<='hAA;
  	 in1<='hCC;
   	 in2<='hEE;
   	 in3<='h11;
@(posedge clk_f);
	 //IDLE<= 'hDA; 
	 in0<= 'hBB;
   	 in1<= 'hDD;
	 in2<= 'hFF;
   	 in3<= 'h22;
    @(posedge clk_f);
   	// IDLE<= 'h3C; 

	 in0<='hAA;
  	 in1<='hCC;
   	 in2<='hEE;
   	 in3<='h11;
@(posedge clk_f);
	 //IDLE<= 'hDA; 
	 in0<= 'hBB;
   	 in1<= 'hDD;
	 in2<= 'hFF;
   	 in3<= 'h22;
    @(posedge clk_f);
   	// IDLE<= 'h3C; 

	 in0<='hAA;
  	 in1<='hCC;
   	 in2<='hEE;
   	 in3<='h11;
@(posedge clk_f);
	 //IDLE<= 'hDA; 
	 in0<= 'hBB;
   	 in1<= 'hDD;
	 in2<= 'hFF;
   	 in3<= 'h22;
    @(posedge clk_f);
   	// IDLE<= 'h3C; 

	 in0<='hAA;
  	 in1<='hCC;
   	 in2<='hEE;
   	 in3<='h11;
@(posedge clk_f);
	 //IDLE<= 'hDA; 
	 in0<= 'hBB;
   	 in1<= 'hDD;
	 in2<= 'hFF;
   	 in3<= 'h22;
    @(posedge clk_f);
   	// IDLE<= 'h3C; 

	 in0<='hAA;
  	 in1<='hCC;
   	 in2<='hEE;
   	 in3<='h11;
   @(posedge clk_f);
	 //IDLE<= 'hDA; 
	 in0<= 'hBB;
   	 in1<= 'hDD;
	 in2<= 'hFF;
   	 in3<= 'h22;
    @(posedge clk_f);
   	// IDLE<= 'h3C; 

	 in0<='hAA;
  	 in1<='hCC;
   	 in2<='hEE;
   	 in3<='h11;
    @(posedge clk_f);
	 //IDLE<= 'hDA; 
	 in0<= 'hBB;
   	 in1<= 'hDD;
	 in2<= 'hFF;
   	 in3<= 'h22;
    @(posedge clk_f);
   	// IDLE<= 'h3C; 

	 in0<='hAA;
  	 in1<='hCC;
   	 in2<='hEE;
   	 in3<='h11;

    

    $finish;
   end

    initial begin
    clk_32f <=0;
    end

    always #2 clk_32f <=~clk_32f;

initial begin
    clk_f <=0;
    end

    always #64 clk_f <=~clk_f;
  
  


   

  
endmodule
