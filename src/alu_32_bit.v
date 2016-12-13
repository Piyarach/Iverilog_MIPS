module alu_32_bit(aluCode,a,b,result,zero);
	input[3:0] aluCode;
	input signed  [31:0] a , b;
	output signed  [31:0] result;
	output zero;
	
	reg signed  [31:0] temp_result;
	reg cin,cout;
	reg temp_zero = 0;

// ## tak Begin ##
// ---------------
// task Adder
	task full_adder_task;
		input a, b, cin;
		output sum, cout;
		begin
			sum = cin ^ a ^ b; // cin XOR a XOR b
			cout = cin & (a ^ b) | (a & b);
		//~cin & a & b | cin & (a | b); // cin'ab + cin(a + b)
		end
	endtask
	
	task adder_task;
		input signed [31:0] a, b;
		input cin;
		output signed [31:0] sum;
		output cout;
		reg carry_x,carry_z;
		integer i;
		begin
			full_adder_task(a[0],b[0],cin,sum[0],carry_x);
			
			for(i=1;i<32;i=i+1)
			begin
				full_adder_task(a[i],b[i],carry_x,sum[i],carry_z);
				carry_x = carry_z;
			end
			cout = carry_x;
		end
		
	endtask

// End task Adder
	
// task SUBTRACT
	task inverter_task;
		input i;
		output o;
		begin
			o = !i;
		end
	endtask

	task subtract_task;
		input signed [31:0] a, b;
		output signed [31:0] sum;
		output cout;
		reg [31:0] temp_invert;
		reg cin;
		integer i;
		// invert b and store to temp_invert
		begin
			for(i=0;i<32;i=i+1)
			begin
				inverter_task(b[i],temp_invert[i]);
			end
			cin = 1'b1;
			// add a and b 
			adder_task(a,temp_invert,cin,sum,cout);
		end
	endtask
// End task SUBTRACT	

// task SLT
	task slt_task;
		input signed [31:0] a, b;
		output signed [31:0] result;
		reg signed [31:0] sum;
		reg cout; // temp cout to call subtract_32_bits
		
		begin 
			subtract_task(a,b,sum,cout);
			
			casex(sum) 
				32'b1???????????????????????????????  : result = 1; // a < b
				default : result = 0;
			endcase 
		end
	endtask
// End task SLT

// task AND
	task and_task;
		input signed [31:0] a, b;
		output signed [31:0] result;
		integer i;
		begin 
			for(i=0;i<32;i=i+1)
			begin
				result[i] = a[i] & b[i];
			end
		end
	endtask
// End task AND

// task OR
	task or_task;
		input signed [31:0] a, b;
		output signed [31:0] result;
		integer i;
		begin 
			for(i=0;i<32;i=i+1)
			begin
				result[i] = a[i] | b[i];
			end
		end
	endtask
// End task OR

// Begin ALU 
	always @ (aluCode,a,b)
		case (aluCode) 
			4'b0010 : begin
							$display("#ADDER"); 
							cin = 1'b0;
							adder_task(a,b,cin,temp_result,cout);
					  end
			4'b0110 : begin
							$display("#SUBTRACT"); 
							subtract_task(a,b,temp_result,cout);
					  end
			4'b0000 : begin
							$display("#AND"); 
							and_task(a,b,temp_result);
					  end
			4'b0001 : begin
							$display("#OR"); 
							or_task(a,b,temp_result);
					  end
			4'b0111 : begin
							$display("#SLT"); 
							slt_task(a,b,temp_result);
							case (temp_result) 
								1 : temp_zero = 1'b1;
								default : temp_zero = 1'b0; 
							endcase
					  end
			
			default : $display("Error in ALUOp"); 
		endcase 
	
	assign result = temp_result;
	assign zero = temp_zero;
	
endmodule
