module Instruction_Memory(IS , IS_5_0 , IS_15_0 , IS_20_16 , IS_25_21 , IS_31_26);
	input [31:0] IS;
	output [15:0] IS_15_0;
	output [5:0] IS_5_0,IS_31_26;
	output [4:0] IS_20_16,IS_25_21;
	
	assign  IS_15_0 = IS[15:0];
	assign  IS_5_0 = IS[5:0];
	assign  IS_20_16 = IS[20:16];
	assign  IS_25_21 = IS[25:21];
	assign  IS_31_26 = IS[31:26];
	
endmodule
