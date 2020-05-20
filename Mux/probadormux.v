module probador_mux(
    //entradas
    output reg clk_2f,
    output reg clk_4f,
    output reg reset_L,
    output reg [1:0] selector_mux,
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
    input [7:0] dataout_mux3
);
    initial begin
        $dumpfile("mux2a1.vcd");
        $dumpvars;
        $display ("time\t\tclk\treset_L\tselector\tselector4\tvalid1\tvalid2\tvalid_out\tdata_in0\tdata_in1\tdata_out_cond_mux2a1dosbits\tdata_out_cond_mux2a1cuatrobits\tdata_in0_mux2\tdata_in1_mux2\tdata_in0_mux4\tdata_in1_mux4\tdata_in2_mux4\tdata_in3_mux4\tdata_out_mux4");
        $monitor($time,"\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",clk,reset_L,selector,selector4,valid1,valid2,valid_out,data_in0,data_in1,data_out_cond_mux2a1dosbits,data_in0_mux2,data_in1_mux2,data_out_cond_mux2a1cuatrobits,data_in0_mux4,data_in1_mux4,data_in2_mux4,data_in3_mux4,data_out_mux4);
        reset_L <= 0;
        @(posedge clk);
        data_in0_mux2 <= 4'b0;
        data_in1_mux2 <= 4'b0;
        data_in0 <= 2'b0;
        data_in1 <= 2'b0;
        data_in0_mux4 <= 4'b0;
        data_in1_mux4 <= 4'b0;
        data_in2_mux4 <= 4'b0;
        data_in3_mux4 <= 4'b0;
        selector <= 0;
        selector4 <= 2'b0;
        valid1 <= 0;
        valid2 <= 0; 
        @(posedge clk);
        reset_L <= 1;
        @(posedge clk);//segundo pulso
        data_in0 <= data_in0 + 3;
        data_in1 <= data_in1 + 2;
        data_in0_mux2 <= data_in0_mux2 + 8;
        data_in1_mux2 <= data_in1_mux2 + 11;
        data_in1_mux4 <= data_in1_mux4 + 2;
        data_in0_mux4 <= data_in0_mux4 + 15;
        data_in2_mux4 <= data_in2_mux4 + 8;
        data_in3_mux4 <= data_in3_mux4 + 20;
        selector4 <= selector4 + 1;
        valid1 <= 1;

        @(posedge clk);//tercer pulso
        data_in0 <= data_in0 - 2;
        data_in1 <= data_in1 - 2;
        data_in0_mux2 <= data_in0_mux2 - 8;
        data_in1_mux2 <= data_in1_mux2 + 16;
        data_in0_mux4 <= data_in0_mux4 + 7;
        data_in2_mux4 <= data_in2_mux4 - 12;
        data_in3_mux4 <= data_in3_mux4 + 10;
        valid2 <= 1;
        selector <= 1;

        @(posedge clk);//cuarto pulso
        data_in0 <= data_in0 - 1;
        data_in1 <= data_in1 + 2;
        data_in0_mux2 <= data_in0_mux2 + 11;
        data_in1_mux2 <= data_in1_mux2 - 13;
        selector4 <= selector4 + 2;
        data_in1_mux4 <= data_in1_mux4 + 2;
        data_in0_mux4 <= data_in0_mux4 - 3;
        data_in2_mux4 <= data_in2_mux4 + 12;
        data_in3_mux4 <= data_in3_mux4 + 1;
       

        @(posedge clk);//quinto pulso
        data_in0 <= data_in0 + 3;
        data_in1 <= data_in1 + 1;
        data_in0_mux2 <= data_in0_mux2 + 20;
        data_in1_mux2 <= data_in1_mux2 + 14;
        valid1 <= 1;
        selector <= 0;
        selector4 <= selector4 + 1;
        data_in2_mux4 <= data_in2_mux4 + 2;
        data_in3_mux4 <= data_in3_mux4 - 5;
       
        @(posedge clk);//sexto pulso
        data_in0 <= data_in0 - 3;
        data_in1 <= data_in1 - 2;
        data_in0_mux2 <= data_in0_mux2 + 12;
        data_in1_mux2 <= data_in1_mux2 - 3;
        valid2 <= 1;
        valid1 <= 0;
        selector <= 1;
        data_in1_mux4 <= data_in1_mux4 + 9;
        data_in0_mux4 <= data_in0_mux4 - 13;

        @(posedge clk);//setimo pulso
        data_in0 <= data_in0 + 2;
        data_in1 <= data_in1 - 1;
        data_in0_mux2 <= data_in0_mux2 + 8;
        data_in1_mux2 <= data_in1_mux2 + 5;
        selector <= 0;
        selector4 <= selector4 + 1;
        data_in1_mux4 <= data_in1_mux4 + 20;
        data_in0_mux4 <= data_in0_mux4 - 13;
        data_in2_mux4 <= data_in2_mux4 - 11;
       

        @(posedge clk);//octavo pulso
        data_in0 <= data_in0 + 4;
        data_in1 <= data_in1 - 2;
        data_in0_mux2 <= data_in0_mux2 - 4;
        data_in1_mux2 <= data_in1_mux2 + 8;
        valid1 <= 1;
        data_in1_mux4 <= data_in1_mux4 - 2;
        data_in0_mux4 <= data_in0_mux4 + 5;
        data_in2_mux4 <= data_in2_mux4 - 8;
        data_in3_mux4 <= data_in3_mux4 + 1;
       
        @(posedge clk);//noveno pulso
        data_in0 <= data_in0 - 2;
        data_in1 <= data_in1 + 5;
        data_in0_mux2 <= data_in0_mux2 + 12;
        data_in1_mux2 <= data_in1_mux2 - 10;
        selector4 <= selector4 + 2;
        data_in1_mux4 <= data_in1_mux4 + 2;
        data_in0_mux4 <= data_in0_mux4 - 3;
        data_in2_mux4 <= data_in2_mux4 + 12;
        data_in3_mux4 <= data_in3_mux4 + 1;
       

        @(posedge clk);//octavo pulso
        data_in0 <= data_in0 - 2;
        data_in1 <= data_in1 + 2;
        data_in0_mux2 <= data_in0_mux2 + 9;
        data_in1_mux2 <= data_in1_mux2 + 4;
        valid1 <= 0;
        valid2 <= 0;
        selector <= 1;
        data_in1_mux4 <= data_in1_mux4 + 20;
        data_in0_mux4 <= data_in0_mux4 - 14;
        data_in2_mux4 <= data_in2_mux4 + 5;
        data_in3_mux4 <= data_in3_mux4 - 7;
       
        @(posedge clk);//octavo pulso
        data_in0 <= data_in0 - 2;
        data_in1 <= data_in1 + 3; 
        data_in0_mux2 <= data_in0_mux2 - 8;
        data_in1_mux2 <= data_in1_mux2 + 20;
        selector <= 0;
        valid1 <= 1;
        data_in1_mux4 <= data_in1_mux4 + 8;
        data_in0_mux4 <= data_in0_mux4 - 5;
       
        @(posedge clk);//octavo pulso
        data_in0 <= data_in0 + 7;
        data_in1 <= data_in1 + 4;
        data_in0_mux2 <= data_in0_mux2 + 1;
        data_in1_mux2 <= data_in1_mux2 - 14;
        valid2 <= 1;
        selector <= 1;
        selector4 <= selector4 + 2;
        data_in1_mux4 <= data_in1_mux4 - 7;
        data_in0_mux4 <= data_in0_mux4 + 13;
        data_in2_mux4 <= data_in2_mux4 - 12;
        data_in3_mux4 <= data_in3_mux4 - 1;
       
        @(posedge clk);//octavo pulso
        data_in0 <= data_in0 - 3;
        data_in1 <= data_in1 - 2;
        data_in0_mux2 <= data_in0_mux2 + 6;
        data_in1_mux2 <= data_in1_mux2 + 10;
        selector4 <= selector4 + 1;
        data_in1_mux4 <= data_in1_mux4 + 2;
        data_in0_mux4 <= data_in0_mux4 + 8;
       
        @(posedge clk);//octavo pulso
        @(posedge clk);//octavo pulso
        reset_L <= 0;
        selector <= 0;
        data_in1 <= 'b0;
        data_in0 <= 'b0;
        $finish;
    end 
    initial clk <= 0;
    always #50 clk <= ~clk;//Peor de los casos
endmodule
