module Register_tb;
	
	reg [4:0] ReadRegister1 , ReadRegister2, WriteRegiter;
	reg RegWrite;
	reg [31:0] WriteData;
	wire [31:0] ReadData1 , ReadData2;
	
	
	Register r1(ReadRegister1,ReadRegister2,WriteRegiter,RegWrite,WriteData,ReadData1,ReadData2);
	
	initial begin
		$display("Reg1 \tReg2 \tWReg \tRegWrite \tWriteData \t\t\t\tReadData1 \t\t\t\tReadData2");
		// Write
		RegWrite = 1'b1;
		ReadRegister1 = 5'bxxxxx; ReadRegister2 = 5'bxxxxx;	
		WriteRegiter  = 5'b00000;WriteData = 32'b00000000000000001111111111111111; 
		
		// Read
		#1 RegWrite = 1'b0; WriteData = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx; WriteRegiter  = 5'bxxxxx; ReadRegister1 = 5'b00000; ReadRegister2 = 5'b00001;
		
		// Write
		#1 WriteRegiter  = 5'b00001; WriteData = 32'b10000000000000001111111111111111;  RegWrite = 1'b1;ReadRegister1 = 5'bxxxxx; ReadRegister2 = 5'bxxxxx;	
		
		// Read
		#1 RegWrite = 1'b0; WriteData = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx; WriteRegiter  = 5'bxxxxx; ReadRegister1 = 5'b00000; ReadRegister2 = 5'b00001;
		
		// Write
		#1 WriteRegiter  = 5'b00010; WriteData = 32'b11100000000000001111111111111111; RegWrite = 1'b1;ReadRegister1 = 5'bxxxxx; ReadRegister2 = 5'bxxxxx;	
						
		// Read
		#1 RegWrite = 1'b0; WriteData = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx; WriteRegiter  = 5'bxxxxx; ReadRegister1 = 5'b00001; ReadRegister2 = 5'b00010;
		
		// Write
		#1 RegWrite = 1'b1; WriteRegiter  = 5'b00011; WriteData     = 32'b11111111111111111111111111111111; ReadRegister1 = 5'bxxxxx; ReadRegister2 = 5'bxxxxx;
		
		// Read
		#1 RegWrite = 1'b0; ReadRegister1 = 5'b00010;ReadRegister2 = 5'b00011; WriteData = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx; WriteRegiter  = 5'bxxxxx;
		
		#1 $finish;
	end
	
	always @(1) begin
		$monitor("%b \t%b \t%b \t%b \t\t%b \t%b \t%b",ReadRegister1,ReadRegister2,WriteRegiter, RegWrite, WriteData , ReadData1 , ReadData2);
	end
	
endmodule
