module probador_mux(
    //entradas
    output reg reset_L,
    output reg clk_2f,
    output reg clk_4f,
    output reg valid0,
    output reg valid1,
    output reg valid2,
    output reg valid3,
    output reg [7:0] data_in0_mux,
    output reg [7:0] data_in1_mux,
    output reg [7:0] data_in2_mux,
    output reg [7:0] data_in3_mux, 
    //salidas
    input validout0,
    input validout1,
    input validout,
    input [7:0] dataout_mux      
    );
    reg clk;
    initial begin
        $dumpfile("mux.vcd");
        $dumpvars;
        reset_L <= 0;
        @(posedge clk);
        @(posedge clk);
        data_in1_mux<= 8'b0;
        data_in0_mux <= 8'b0;
        data_in3_mux <= 8'b0;
        data_in2_mux <= 8'b0;
        valid3 <= 0;
        valid2 <= 0;
        valid1 <= 0;
        valid0 <= 0;
        @(posedge clk);
        reset_L <= 1;
        @(posedge clk);//segundo pulso
        data_in0_mux <= 8'hFF;
        data_in1_mux <= 8'hEE;
        data_in2_mux <= 8'hDD;
        data_in3_mux <= 8'hCC;
        valid3 <= 1;
        valid2 <= 1;
        valid1 <= 1;
        valid0 <= 1;       
        @(posedge clk);
        data_in0_mux <= 8'hBB;
        data_in1_mux <= 8'hAA;
        data_in2_mux <= 8'h99;
        data_in3_mux <= 8'h88;
        valid3 <= 1;
        valid2 <= 1;
        valid1 <= 1;
        valid0 <= 1;       
        @(posedge clk);
        data_in0_mux <= 8'hx;
        data_in1_mux <= 8'hx;
        data_in2_mux <= 8'h77;
        data_in3_mux <= 8'hx;
        valid3 <= 0;
        valid2 <= 0;
        valid1 <= 1;
        valid0 <= 0;       
        @(posedge clk);
        data_in2_mux <= 8'hX;
        valid1 <= 0;
        @(posedge clk);
        $finish;

    end
    initial clk <= 0;
    always #100 clk <= ~clk; 
    initial clk_2f <= 0;
    always #50 clk_2f <= ~clk_2f;
    initial clk_4f <= 0;
    always #25 clk_4f <= ~clk_4f;    
endmodule
