module ControlUnit(OpCode,Branch,MemRead,MemtoReg,Aluop, MemWrite, AluSrc, RegWrite
);

  input [6 : 0] OpCode;
  output Branch;
  output MemRead;
  output MemtoReg;
  output [1:0]out;
  output MemWrite;
  output AluSrc;
  output RegWrite;

reg [8:0] out;
assign  {AluSrc ,MemtoReg ,RegWrite ,MemRead ,MemWrite ,Branch } = out[8:2];
always @( OpCode )
casex(OpCode)

	11'b1xx0101x000: out = 9'b000100010;
        11'b11111000010: out = 9'b011110000;
        11'b11111000000: out = 9'b110001000;
        11'b10110100xxx: out = 9'b101000101;
	11'b00000000000: out = 9'b000000000;
endcase
    
endmodule
