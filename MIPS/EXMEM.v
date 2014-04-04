`timescale 1ns / 100 ps

module EXMEM(clk, memtoreg, reg_write, branch, jump, halt, word_en, ld_en, mem_read, mem_write, pc_branch, zero, alu_out, reg_out, instr_rd,
					memtoreg_reg, reg_write_reg, pcsrc, jump_reg, mem_read_reg, mem_write_reg, pc_branch_reg, alu_out_reg, 
					reg_out_reg, instr_rd_reg, halt_reg, word_en_reg, ld_en_reg);
					
	input clk, reg_write, branch, mem_read, mem_write, zero, memtoreg, jump, halt, word_en, ld_en;
	input[15:0] pc_branch, alu_out, reg_out;
	input[2:0] instr_rd;
	output memtoreg_reg, reg_write_reg, pcsrc, mem_read_reg, mem_write_reg, jump_reg, halt_reg, word_en_reg, ld_en_reg;
	output[15:0] pc_branch_reg, alu_out_reg, reg_out_reg;
	output[2:0] instr_rd_reg;
	
	reg pcsrc;
	reg memtoreg_reg, reg_write_reg, mem_read_reg, mem_write_reg, jump_reg, halt_reg, word_en_reg, ld_en_reg;
	reg[15:0] pc_branch_reg, alu_out_reg, reg_out_reg;
	reg[2:0] instr_rd_reg;
	

	
//	initial 
//	begin
//		branch_reg <= 0;
//		zero_reg <= 0;
//		memtoreg_reg <= 0;
//		reg_write_reg <= 0;
//		mem_read_reg <= 0;
//		mem_write_reg <= 0;
//		pc_branch_reg <= 0;
//		alu_out_reg <= 0;
//		reg_out_reg <= 0;
//		instr_rd_reg <= 0;
//	end
	
	always@(posedge clk)
	begin

		memtoreg_reg <= memtoreg;
		reg_write_reg <= reg_write;
		mem_read_reg <= mem_read;
		mem_write_reg <= mem_write;
		pc_branch_reg <= pc_branch;
		alu_out_reg <= alu_out;
		reg_out_reg <= reg_out;
		instr_rd_reg <= instr_rd;
		jump_reg <= jump;
		halt_reg <= halt;
		word_en_reg <= word_en; 
		ld_en_reg	<= ld_en;
		pcsrc <= branch & zero;
	end


endmodule
 