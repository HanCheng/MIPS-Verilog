`timescale 1ns / 100 ps

module MEMWB(clk, memtoreg, reg_write, read_data, alu_out, instr_rd, halt,
					memtoreg_reg, reg_write_reg, read_data_reg, alu_out_reg, instr_rd_reg, halt_reg);
					
	input clk, memtoreg, reg_write, halt;
	input[15:0] alu_out, read_data;
	input[2:0] instr_rd;
	output memtoreg_reg, reg_write_reg, halt_reg;
	output[15:0] read_data_reg, alu_out_reg;
	output[2:0] instr_rd_reg;

	reg memtoreg_reg, reg_write_reg, halt_reg;
	reg[15:0] read_data_reg, alu_out_reg;
	reg[2:0] instr_rd_reg;
	
//	initial
//	begin
//		memtoreg_reg <= 0;
//		reg_write_reg <= 0;
//		read_data_reg <= 0;
//		alu_out_reg <= 0;
//		instr_rd_reg <= 0;
//	end
	
	always@(posedge clk)
	begin
		memtoreg_reg <= memtoreg;
		reg_write_reg <= reg_write;
		read_data_reg <= read_data;
		alu_out_reg <= alu_out;
		instr_rd_reg <= instr_rd;
		halt_reg <= halt;
	end
endmodule
