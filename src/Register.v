//- Register
		//Input { RegWrite(1bit),ReadRegister1(5bit) , ReadRegister2(5bit), WriteRegiter(5bit), //WriteData(32bit)}
		//Output {ReadData1(32bit),ReadData2(32bit)}
		
module Register(ReadRegister1,ReadRegister2,WriteRegiter,RegWrite,WriteData,ReadData1,ReadData2);
	input [4:0] ReadRegister1 , ReadRegister2, WriteRegiter;
	input RegWrite;
	input [31:0] WriteData;
	output reg [31:0] ReadData1 , ReadData2;
	
	reg [0:31][31:0] memoryInReg;
	
	always @ ( posedge RegWrite)
	begin
		case(WriteRegiter) 
			5'b00000 : memoryInReg[0] = WriteData;
			5'b00001 : memoryInReg[1] = WriteData;
			5'b00010 : memoryInReg[2] = WriteData;
			5'b00011 : memoryInReg[3] = WriteData;
			5'b00100 : memoryInReg[4] = WriteData;
			5'b00101 : memoryInReg[5] = WriteData;
			5'b00110 : memoryInReg[6] = WriteData;
			5'b00111 : memoryInReg[7] = WriteData;
			5'b01000 : memoryInReg[8] = WriteData;
			5'b01001 : memoryInReg[9] = WriteData;
			5'b01010 : memoryInReg[10] = WriteData;
			5'b01011 : memoryInReg[11] = WriteData;
			5'b01100 : memoryInReg[12] = WriteData;
			5'b01101 : memoryInReg[13] = WriteData;
			5'b01110 : memoryInReg[14] = WriteData;
			5'b01111 : memoryInReg[15] = WriteData;
			5'b10000 : memoryInReg[16] = WriteData;
			5'b10001 : memoryInReg[17] = WriteData;
			5'b10010 : memoryInReg[18] = WriteData;
			5'b10011 : memoryInReg[19] = WriteData;
			5'b10100 : memoryInReg[20] = WriteData;
			5'b10101 : memoryInReg[21] = WriteData;
			5'b10110 : memoryInReg[22] = WriteData;
			5'b10111 : memoryInReg[23] = WriteData;
			5'b11000 : memoryInReg[24] = WriteData;
			5'b11001 : memoryInReg[25] = WriteData;
			5'b11010 : memoryInReg[26] = WriteData;
			5'b11011 : memoryInReg[27] = WriteData;
			5'b11100 : memoryInReg[28] = WriteData;
			5'b11101 : memoryInReg[29] = WriteData;
			5'b11110 : memoryInReg[30] = WriteData;
			5'b11111 : memoryInReg[31] = WriteData;
		endcase
		ReadData1 = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
		ReadData2 = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	end
	
	always @(RegWrite == 0)
	begin
		case (ReadRegister1)
			5'b00000 : ReadData1 = memoryInReg[0];
			5'b00001 : ReadData1 = memoryInReg[1];
			5'b00010 : ReadData1 = memoryInReg[2];
			5'b00011 : ReadData1 = memoryInReg[3];
			5'b00100 : ReadData1 = memoryInReg[4];
			5'b00101 : ReadData1 = memoryInReg[5];
			5'b00110 : ReadData1 = memoryInReg[6];
			5'b00111 : ReadData1 = memoryInReg[7];
			5'b01000 : ReadData1 = memoryInReg[8];
			5'b01001 : ReadData1 = memoryInReg[9];
			5'b01010 : ReadData1 = memoryInReg[10];
			5'b01011 : ReadData1 = memoryInReg[11];
			5'b01100 : ReadData1 = memoryInReg[12];
			5'b01101 : ReadData1 = memoryInReg[13];
			5'b01110 : ReadData1 = memoryInReg[14];
			5'b01111 : ReadData1 = memoryInReg[15];
			5'b10000 : ReadData1 = memoryInReg[16];
			5'b10001 : ReadData1 = memoryInReg[17];
			5'b10010 : ReadData1 = memoryInReg[18];
			5'b10011 : ReadData1 = memoryInReg[19];
			5'b10100 : ReadData1 = memoryInReg[20];
			5'b10101 : ReadData1 = memoryInReg[21];
			5'b10110 : ReadData1 = memoryInReg[22];
			5'b10111 : ReadData1 = memoryInReg[23];
			5'b11000 : ReadData1 = memoryInReg[24];
			5'b11001 : ReadData1 = memoryInReg[25];
			5'b11010 : ReadData1 = memoryInReg[26];
			5'b11011 : ReadData1 = memoryInReg[27];
			5'b11100 : ReadData1 = memoryInReg[28];
			5'b11101 : ReadData1 = memoryInReg[29];
			5'b11110 : ReadData1 = memoryInReg[30];
			5'b11111 : ReadData1 = memoryInReg[31];
		endcase
		case (ReadRegister2)
			5'b00000 : ReadData2 = memoryInReg[0];
			5'b00001 : ReadData2 = memoryInReg[1];
			5'b00010 : ReadData2 = memoryInReg[2];
			5'b00011 : ReadData2 = memoryInReg[3];
			5'b00100 : ReadData2 = memoryInReg[4];
			5'b00101 : ReadData2 = memoryInReg[5];
			5'b00110 : ReadData2 = memoryInReg[6];
			5'b00111 : ReadData2 = memoryInReg[7];
			5'b01000 : ReadData2 = memoryInReg[8];
			5'b01001 : ReadData2 = memoryInReg[9];
			5'b01010 : ReadData2 = memoryInReg[10];
			5'b01011 : ReadData2 = memoryInReg[11];
			5'b01100 : ReadData2 = memoryInReg[12];
			5'b01101 : ReadData2 = memoryInReg[13];
			5'b01110 : ReadData2 = memoryInReg[14];
			5'b01111 : ReadData2 = memoryInReg[15];
			5'b10000 : ReadData2 = memoryInReg[16];
			5'b10001 : ReadData2 = memoryInReg[17];
			5'b10010 : ReadData2 = memoryInReg[18];
			5'b10011 : ReadData2 = memoryInReg[19];
			5'b10100 : ReadData2 = memoryInReg[20];
			5'b10101 : ReadData2 = memoryInReg[21];
			5'b10110 : ReadData2 = memoryInReg[22];
			5'b10111 : ReadData2 = memoryInReg[23];
			5'b11000 : ReadData2 = memoryInReg[24];
			5'b11001 : ReadData2 = memoryInReg[25];
			5'b11010 : ReadData2 = memoryInReg[26];
			5'b11011 : ReadData2 = memoryInReg[27];
			5'b11100 : ReadData2 = memoryInReg[28];
			5'b11101 : ReadData2 = memoryInReg[29];
			5'b11110 : ReadData2 = memoryInReg[30];
			5'b11111 : ReadData2 = memoryInReg[31];
		endcase
	end
endmodule
