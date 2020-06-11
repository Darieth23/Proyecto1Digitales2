module flop(
    input clk,
    input datainflop,
    input reset,
    output reg dataoutflop
);

reg [1:0] temp;
always @(posedge clk)begin
    if (reset==0) begin
    dataoutflop<=0;
    temp<=0;
    end else begin
    //temp[0]<=datainflop;
    //temp[1]<=temp[0];
    //temp[2]<=temp[1];
    //temp[3]<=temp[2];
    //temp[4]<=temp[3];
    //temp[5]<=temp[4];
    //dataoutflop<=temp[0];
	dataoutflop<=datainflop;
    end
end

endmodule
