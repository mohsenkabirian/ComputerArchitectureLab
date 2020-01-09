module registerBank(register1 ,register2 ,register3 ,datain ,clk ,regwrite ,dataout1 ,dataout2);
input[4:0] Readregister1;
input[4:0] Readregister2;
input[4:0] writeregister;
input[63:0] datain;
input clk;
input regwrite;

output[63:0] dataout1;
output[63:0] dataout2;

reg [63:0] Bank [0:31];

integer  i;
initial 
begin
	for( i = 0; i < 32; i = i + 1) 
		Bank[i] = i;
end
always @ (posedge clk ) 
begin
	Bank[writeregister] <= (regwrite == 1'b1)? datain : Bank[writeregister];
end

assign dataout1 = Bank[Readregister1];
assign dataout2 = Bank[Readregister2];

endmodule 
