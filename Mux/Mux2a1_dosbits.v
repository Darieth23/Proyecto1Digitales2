module mux2a1dosbits_descp_cond (
    //entradas
    input reset_L,
    input selector,
    input valid0,
    input valid1,
    input [1:0] data_in0,
    input [1:0] data_in1,
    //salidas
    output reg validout,
    output reg [1:0] dataout_mux2a1dosbits
    );
    //cables intermedios
    reg [1:0] temp1, temp2;
    //etapa de selección, elegí la señal que va a pasar.
    always @ (*) begin
        temp1 = 0;
        temp2 = 0;
        if(selector == 1) begin
            temp1 = data_in1;
            validout = valid1;
        end
        else begin
            temp1 = data_in0;
            validout = valid0;
        end
    end
    //etapa de validación, decide si la señal pasa o no.
    always @ (*) begin
        if(validout == 1)
            temp2 = temp1;
        else
            temp2 = 2'bxx;
    end
    //etapa de reinicio, se encarga de poner un cero en la salida.
    always @ (*) begin
        if(reset_L == 0) begin
            dataout_mux2a1dosbits = 2'b0;
            validout = 0;
        end
        else
            dataout_mux2a1dosbits = temp2;
    end
endmodule