module demux1a2dosbits_descp_cond (
    //entradas
    input reset_L,
    input selector,
    input valid,
    input [1:0] data_in,
    //salidas
    output reg validout0,
    output reg validout1,
    output reg [1:0] dataout_demux1a2dosbits0,
    output reg [1:0] dataout_demux1a2dosbits1
    );
    reg [1:0] temp1, temp2;
    always @ (*) begin
        temp1 = 0;
        temp2 = 0;
        if (selector == 1)
            temp1 = data_in;
            validout1 = valid;
            validout0 = 0;
        else
            temp1 = data_in;
            validout0 = valid;
            validout1 = 0;
    end
    always @ (*) begin
        if(valid == 1)
            temp2 = temp1;
        else
            temp2 = 2'bxx;
    end
    always @ (*) begin
        if(reset_L == 0)
            dataout_demux1a2dosbits0 = 2'b0;
            dataout_demux1a2dosbits1 = 2'b0;
            validout0 = 0;
            validout1 = 0;
        else
            if(selector == 1)
                dataout_demux1a2dosbits1 = temp2;
                dataout_demux1a2dosbits0 = 2'bxx;
            else
                dataout_demux1a2dosbits0 = temp2;
                dataout_demux1a2dosbits1 = 2'bxx;
    end
  

endmodule