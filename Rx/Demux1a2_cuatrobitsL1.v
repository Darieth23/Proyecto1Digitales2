module demux1a2dosbits_descp_condL1 (
    //entradas
    input clk_2f,
    input reset_L,
    input valid,
    input [3:0] data_in,
    //salidas
    output reg validout0,
    output reg validout1,
    output reg [3:0] dataout_demux1a2cuatrobits0,
    output reg [3:0] dataout_demux1a2cuatrobits1
    );
    reg selector,valid0,valid1,bandera; 
	reg [3:0] data_reg0, data_reg1;

    always @ (*) begin
        dataout_demux1a2cuatrobits0 = 'b0;
        dataout_demux1a2cuatrobits1 = 'b0;
        validout0 = 0;
        validout1 = 0;
        bandera = 1;
        if(reset_L == 0) begin

            selector <= 0;
            dataout_demux1a2cuatrobits0 = 'b0;
            dataout_demux1a2cuatrobits1 = 'b0;
            validout0 = 0;
            validout1 = 0;
            bandera = 0;
        end
        else if (selector == 0 && valid == 1) begin
            dataout_demux1a2cuatrobits0 = data_in;
            dataout_demux1a2cuatrobits1 = data_reg1;
            validout0 = 1;
            validout1 = 1;
            bandera = 0;
        end
        else if (selector == 1 && valid == 1) begin
            dataout_demux1a2cuatrobits1 = data_in;
            dataout_demux1a2cuatrobits0 = data_reg0;
            validout0 = 1;
            validout1 = 1;
            bandera = 0;
        end
        else begin
            dataout_demux1a2cuatrobits1 = data_reg1;
            dataout_demux1a2cuatrobits0 = data_reg0;
            validout0 = valid0;
            validout1 = valid1;
            bandera = 1;
        end
    end


    always @ (posedge clk_2f) begin
        if (reset_L == 0) begin
            data_reg0 <= dataout_demux1a2cuatrobits0;
            data_reg1 <= dataout_demux1a2cuatrobits1;
            valid0 <= 0;
            valid1 <= 0; 
        end
        else begin
            if(bandera == 0) begin
                selector <= ~selector;
            end
            else begin
                selector <= selector;
            end
            data_reg0 <= dataout_demux1a2cuatrobits0;
            data_reg1 <= dataout_demux1a2cuatrobits1;
            valid0 <= validout0;
            valid1 <= validout1;
        end
    end
endmodule

