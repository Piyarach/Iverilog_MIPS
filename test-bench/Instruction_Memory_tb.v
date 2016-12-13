module Instruction_Memory_tb;
	reg [31:0] IS;
	wire [15:0] IS_15_0;
	wire [5:0] IS_5_0,IS_31_26;
	wire [4:0] IS_20_16,IS_25_21;
	
	Instruction_Memory memIS1(IS , IS_5_0 , IS_15_0 , IS_20_16 , IS_25_21 , IS_31_26);
	
	initial begin
		#1 IS = 32'b00100000000000000000000000000000;  // addi $0, $0, 0
		#1 $display("addi $0, $0, 0 \t %b \t %b \t %b \t %b \t %b \t %b",IS,IS_15_0,IS_5_0,IS_20_16,IS_25_21,IS_31_26);
		#1 IS = 32'b00100000001000010000000000000001;  // addi $1, $1, 1
		#1 $display("addi $1, $1, 1 \t %b \t %b \t %b \t %b \t %b \t %b",IS,IS_15_0,IS_5_0,IS_20_16,IS_25_21,IS_31_26);
		#1 IS = 32'b00100000010000100000000000000010;  // addi $2, $2, 2
		#1 $display("addi $2, $2, 2 \t %b \t %b \t %b \t %b \t %b \t %b",IS,IS_15_0,IS_5_0,IS_20_16,IS_25_21,IS_31_26);
		#1 IS = 32'b00100000011000110000000000000011;  // addi $3, $3, 3
		#1 $display("addi $3, $3, 3 \t %b \t %b \t %b \t %b \t %b \t %b",IS,IS_15_0,IS_5_0,IS_20_16,IS_25_21,IS_31_26);
		#1 $finish;
	end
	
	
endmodule
