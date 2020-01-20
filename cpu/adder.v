module adder(x1,x2,out);
	input [63:0] x1;
	input [63:0] x2;
	output [63:0] out;

	assign out = x1+x2 ;
endmodule