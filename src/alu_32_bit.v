//`include "adder_32_bit.v"
`include "adder_task.v"
`include "subtract_32_bit.v"
`include "slt_32_bit.v"

module alu_32_bit(aluCode,a,b,result,zero);
	input[3:0] aluCode;
	input signed  [31:0] a , b;
	output signed  [31:0] result;
	output [1:0] zero;
	
	wire cin,cout;
	reg temp_zero;
	
	reg [7:0] temp_out;
	reg [7:0] temp_in;
	task convert;
		begin
			temp_in = 16;
			temp_out = (9/5) *( temp_in + 32);
			$display("temp_out = %b ,temp_in = %b \n",temp_out,temp_in);
		end
	endtask
	assign aluCode = 4'b0010;
	
	//adder_32_bit add(a,b,cin,result,cout);
	
	always @ (aluCode)
		case (aluCode) 
			4'b0010 : begin
							$display("ADD \n"); 
							convert();
							full_adder_task(a,b,cin,result,cout);
							//adder_32_bit add(a,b,cin,result,cout);
					  end
			4'b0110 : begin
							$display("SUBTRACT \n"); 
							//subtract_32_bit sub(a,b,result,cout);
					  end
			4'b0000 : begin
							$display("AND \n"); 
					  end
			4'b0001 : begin
							$display("OR \n"); 
					  end
			4'b0111 : begin
							$display("SLT \n"); 
							//slt_32_bit sub(a,b,result);
							case (result) 
								1 : temp_zero = 1'b1;
								default : temp_zero = 1'b0; 
							endcase
					  end
			
		default : $display("Error in ALUOp"); 
		endcase 
	
	assign zero = temp_zero;
	
endmodule