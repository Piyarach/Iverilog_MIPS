`include "Sign_Extend.v"
module Sign_Extend_tb;
	
	reg [15:0] in;
	wire [31:0] Out;
	
	Sign_Extend s1(in,Out);
	initial begin
		#1 in = 16'b0000000000000000;
		#1 in = 16'b1000000000000000;
		#1 $finish;
	end
	
	always @(in) begin
		$monitor("%b \t %b",in,Out);
	end
endmodule