module probador(
    input IDL_conduc,
    input IDL_estruct,
    //output reg[7:0]data_in,
    output reg active,
    output reg reset,
    output reg clk_32f);

    reg clk_4f;
    reg clk_16f;
    reg clk_8f;
    reg cond;
    reg estruct;
   initial begin
    $dumpfile("bancopruebas.vcd");
    $dumpvars;
    
    reset<='b0;
    //data_in<='b0;
    active<='b0;
    
    @(posedge clk_4f);
	reset<='b1;
   	
	//data_in<=data_in+1;
    
    //repeat (2) begin
    @(posedge clk_4f);
    active<='b1;
    //data_in<= 8'b11111111;

    @(posedge clk_4f);
    active<='b1;
    //data_in<=8'b11101110;



    //end

    @(posedge clk_4f);
    active<='b0;
    //data_in<=data_in+1;

    repeat (2) begin
    @(posedge clk_4f);
    //data_in<=data_in+1;
    end
     
    $finish;
      
   end

    initial begin
    clk_32f <=0;
    clk_16f <=0;
    clk_4f <=0;  
    clk_8f<=0;  
    
    end
    always #2 clk_32f <=~clk_32f;
    
    always @(posedge clk_32f)begin
        clk_16f<=~clk_16f;
    end

    always @(posedge clk_16f)begin
        clk_8f<=~clk_8f;
    end

    always @(posedge clk_8f)begin
        clk_4f<=~clk_4f;
    end


endmodule

