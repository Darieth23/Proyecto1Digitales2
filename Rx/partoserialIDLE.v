module partoserialrx(
    //input [7:0]data_in,
    input active,
    input reset,
    input clk_32f,
    output reg IDL
    );
	
reg [7:0]data2send;
reg [3:0]contador;

always @(*)begin //Se verifica si pasa o no el valor dependiendo del bit de válido

    /*if(reset==0)begin //Todo apagado, se pasa el valor por defecto
        data2send='hBC;
    end
    else begin */
   if (active==1)begin
            data2send= 'h7C;
end
   else //Valor por defecto
     data2send='hBC;
 end


always @(posedge clk_32f)begin
    if(reset==0)begin
        IDL<='b0;
        contador<=0;
    end
    else begin    //Lógica para reconocer los valores del arreglo de bits
        IDL<=data2send[7-contador];
        contador<=contador+1;
        if(contador==7)begin
            contador<='b0;
        end
end
end

endmodule
