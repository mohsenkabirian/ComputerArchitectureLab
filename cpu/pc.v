module pc(clk, reset, oldpc,newpc);
input clk;
input rst;
input [63:0] oldpc;
output reg [63:0] newpc;

always @(posedge clk)
begin
if(reset)
	newpc<=0;
else
	newpc <= oldpc;
end
endmodule
