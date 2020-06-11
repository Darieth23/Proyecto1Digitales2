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
    valid_in0<=0;
    valid_in1<=1;
    valid_in2<=0;
    valid_in3<=0;
    //IDLE<= 'hBC; 
    in0<='hAA;
    in1<='hBB;
    in2<='hCC;
    in3<='hDD;



    @(posedge clk_32f);
	rst<=0;
	reset_L <= 0;
    @(posedge clk_32f);
	rst <= 1;
    @(posedge clk_32f);
	reset_L <= 1;
    @(posedge clk_32f);
    @(posedge clk_32f);
	//IDLE<= 'h7C;
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);


    	 //IDLE<= 'hDA; 
	 in0<= 'hFF;
   	 in1<= 'hFF;
	 in2<= 'hFF;
   	 in3<= 'hFF;



    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
  	  //IDLE<= 'hCC;
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
   	// IDLE<= 'h3C; 
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
   	 //IDLE<= 'hBB; 
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
	 //IDLE<= 'h7C; 
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
   	// IDLE<= 'hBD; 
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
	 //IDLE<= 'h7C; 
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
   	 //IDLE<= 'hFF; 
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
   	// IDLE<= 'hAA; 	
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
   	// IDLE<= 'hBC; 
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
	// IDLE<= 'h7C; 
	 rst<='b1;

	 in0<= 'hFF;
   	 in1<= 0;
	 in2<= 'hFF;
   	 in3<= 0;

    @(posedge clk_32f);
	rst<='b1;
    @(posedge clk_32f);
    @(posedge clk_32f);
   	//IDLE<= 'h7C;
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);


    	// IDLE<= 'hBC; 
	 in0<= 'hFF;
   	 in1<= 'hFF;
	 in2<= 'hFF;
   	 in3<= 'hFF;


    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
  	 // IDLE<= 'h7C;
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
    @(posedge clk_32f);
   	 //IDLE<= 'h7C; 
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
   	 //IDLE<= 'hBC; 
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
	// IDLE<= 'h7C; 
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
   	// IDLE<= 'hBC; 
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
	 //IDLE<= 'h7C; 
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
   	 //IDLE<= 'h7C; 
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
   	// IDLE<= 'hBC; 	
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
   	// IDLE<= 'hBC; 
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
	// IDLE<= 'h7C; 
	 rst<='b1;

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
 


    $finish;
   end

    initial begin
    clk_32f <=0;
    end

    always #2 clk_32f <=~clk_32f;


   

  
endmodule
