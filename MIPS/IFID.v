`timescale 1ns / 100 ps

module IFID(clk, ifid_en, flush, instr, pc_plus2in, pc_plus2reg, instr_reg);
	input clk, flush;
	input ifid_en;
	input[15:0] instr, pc_plus2in;
	output[15:0] instr_reg, pc_plus2reg;
	
	reg[15:0] instr_reg, pc_plus2reg;
	
	always@(posedge clk)
	begin
//		if(flush)
//		begin
//			instr_reg <= 0;
//			pc_plus2reg <= 0;
//		end
		if(ifid_en)
		begin
			instr_reg <= instr;
			pc_plus2reg <= pc_plus2in;
		end
//		else if(ifid_en == 0)
//		begin
//			instr_reg <= instr;
//			pc_plus2reg <= 0;
//		end
		
	end

endmodule
