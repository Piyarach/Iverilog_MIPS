`include "../src/alu_32_bit.v"
module alu_tb;
	
	reg signed [31:0] a , b;
	reg [3:0] aluCode;
	wire signed [31:0] result;
	wire zero;
	
	alu_32_bit alu1(aluCode,a,b,result,zero);
	initial begin
		$monitor("aluCode = %b \n a = %b ( %d ) ,b = %b ( %d ) \n result %b ( %d ) ,zero = %b \n ",aluCode,a,a,b,b,result,result,zero);
		aluCode = 4'b0010; a = 7; b = 6; // add
		#1 aluCode = 4'b0010; a = 5; b = 6; // add
		#1 aluCode = 4'b0110; a = 7; b = 6; // sub
		#1 aluCode = 4'b0110; a = -7; b = 6; // sub
		#1 aluCode = 4'b0110; a = -7; b = -6; // sub
		#1 aluCode = 4'b0110; a = 6; b = 7; // sub
		#1 aluCode = 4'b0111; a = 7; b = 6; // slt
		#1 aluCode = 4'b0111; a = -7; b = 6; // slt
		#1 aluCode = 4'b0111; a = -7; b = -6; // slt
		#1 aluCode = 4'b0111; a = 6; b = 7; // slt
		#1 aluCode = 4'b0111; a = -6; b = -7; // slt
		#1 aluCode = 4'b0111; a = 7; b = 7; // slt
		#1 aluCode = 4'b0000; a = 32'b00000000000000000000000001001111; b = 32'b00000000000000000000000001111111; // AND
		#1 aluCode = 4'b0001; a = 32'b00000000000000000000000001001111; b = 32'b00000000000000000000000001111111; // OR
		#1 $finish;
		
	end
endmodule
