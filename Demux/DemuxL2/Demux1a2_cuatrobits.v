module demux1a2dosbits_descp_cond (
    //entradas
    input reset_L,
    input selector,
    input valid,
    input [3:0] data_in,
    //salidas
    output reg validout0,
    output reg validout1,
    output reg [3:0] dataout_demux1a2dosbits0,
    output reg [3:0] dataout_demux1a2dosbits1
    );
    reg [3:0] temp1, temp2;
    always @ (*) begin
        temp1 = 0;
        temp2 = 0;
        if (selector == 1) begin
            temp1 = data_in;
            validout1 = valid;
            validout0 = validout0;
        end    
        else begin
            temp1 = data_in;
            validout0 = valid;
            validout1 = validout1;
        end
    end
    always @ (*) begin
        if(valid == 1)
            temp2 = temp1;
        else
            temp2 = 4'b00;
    end
    always @ (*) begin
        if(reset_L == 0) begin
            dataout_demux1a2dosbits0 = 4'b0;
            dataout_demux1a2dosbits1 = 4'b0;
            validout0 = 0;
            validout1 = 0;
        end    
        else begin
            if(selector == 1) begin 
                dataout_demux1a2dosbits1 = temp2;
                dataout_demux1a2dosbits0 = dataout_demux1a2dosbits0;
            end
            else begin
                dataout_demux1a2dosbits0 = temp2;
                dataout_demux1a2dosbits1 = dataout_demux1a2dosbits1;
            end 
        end
    end
endmodule
