`timescale 1ns / 100 ps

module alu(alu_a, alu_b, alu_ctrl, zero, alu_out);
	input [15:0] alu_a, alu_b;
	input [3:0] alu_ctrl;
	output zero;
	output[15:0] alu_out;
	
	reg[15:0] alu_out;
	reg zero = 0;
	
	initial 
	begin
		zero <= 0;
	end
	always @(alu_ctrl, alu_a, alu_b)
	begin
		case(alu_ctrl)
			4'b0000: 
				begin
					alu_out <= alu_a + alu_b;  //addition
	//				$display("%h + % h = %h", alu_a, alu_b, alu_out);
					zero <= 0;
				end
			4'b0001:
				begin
					alu_out <= alu_a - alu_b;	//subtraction
					zero <= 0;
					$display("%h - % h = %h", alu_a, alu_b, alu_out);
				end
			4'b0010: 
				begin
					alu_out <= alu_a >>> alu_b; //ASR 
					zero <= 0;
				end	
			4'b0011:
				begin
					alu_out <= alu_a >> alu_b;	//LSR
					zero <= 0;
				end
			4'b0100: 
			begin	
				alu_out <= alu_a << alu_b;	//LSL
				zero <= 0;
			end	
			4'b0101: 
			begin
				alu_out <= alu_a & alu_b;	//AND
				zero <= 0;
			end	
			4'b0110: 
			begin
				alu_out <= alu_a | alu_b;	//OR
				zero <= 0;
			end	
			4'b0111: 									//SLT
				begin
					if(alu_a < alu_b)
					begin
						alu_out <= 1;
						zero <= 0;
					end	
					else
					begin
						alu_out <= 0;
						zero <= 0;
					end	
				end
			4'b1000: 
			begin
				alu_out <= ~alu_a;			//Invert
				zero <= 0;
			end	
			4'b1001: 
			begin
				alu_out <= alu_b;				//MOV
				zero <= 0;
			end	
			4'b1010: 							//JUMP
			begin
				alu_out <= {0, alu_a[15:13], (alu_b << 1)};		//jump unconditional 		
				zero <= 0;
				
			end	
			4'b1011: 									//BEQ	
				begin
					if(alu_a == alu_b)
						begin
							zero <= 1;
							alu_out <= 0;
						end
				end
			4'b1100: 									//BNE	
				begin
					if(alu_a != alu_b)
						begin
							zero <= 1;
							alu_out <= 0;
						end
				end	
			default: 
			begin
				alu_out <= 0;
				zero <= 0;
			end	
		endcase
	end

endmodule
