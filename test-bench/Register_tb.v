`include "Register.v"

module Register_tb;
	
	reg [4:0] ReadRegister1 , ReadRegister2, WriteRegiter;
	reg RegWrite;
	reg [31:0] WriteData;
	wire [31:0] ReadData1 , ReadData2;
	
	
	Register r1(ReadRegister1,ReadRegister2,WriteRegiter,RegWrite,WriteData,ReadData1,ReadData2);
	
	initial begin
		$display("Reg1 \tReg2 \tWReg \tRegWrite \tWriteData \t\t\t\tReadData1 \t\t\t\tReadData2");
		ReadRegister1 = 5'b00010; ReadRegister2 = 5'b00011;	WriteRegiter  = 5'b00010; RegWrite = 1'b1;
		WriteData     = 32'b00000000000000001111111111111111;
		#1 RegWrite = 1'b0; 
		#1 RegWrite = 1'b1; WriteRegiter  = 5'b00011; WriteData     = 32'b11111111111111111111111111111111;
		#1 RegWrite = 1'b0; 
		#1 $finish;
	end
	
	always @(1) begin
		$monitor("%b \t%b \t%b \t%b \t\t%b \t%b \t%b",ReadRegister1,ReadRegister2,WriteRegiter, RegWrite, WriteData , ReadData1 , ReadData2);
	end
	
endmodule