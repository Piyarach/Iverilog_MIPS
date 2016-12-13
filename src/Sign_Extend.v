//- Sign Extend 
		//Input { 16 bit }
		//Output { 32 bit }
		
module Sign_Extend(in,Out);
	input [15:0] in;
	output [31:0] Out;
	
	assign  Out = {{16{in[15]}},in[15:0]};
endmodule