`timescale 1ns / 100 ps

module IDEX(clk, idex_en, memtoreg, reg_write, mem_read, mem_write, reg_dst, alusrc_a, alusrc_b, aluop, pc_plus2, branch, jump, halt, word_en, ld_en,
			read_data1, read_data2, branch_label,sign_extend, rs, instr_rt, instr_rd, jump_addr, memtoreg_reg, reg_write_reg, branch_reg, jump_reg,
			mem_read_reg, mem_write_reg, reg_dst_reg, alusrc_a_reg, alusrc_b_reg, aluop_reg, pc_plus2_reg, read_data1_reg,
			halt_reg, read_data2_reg, branch_label_reg, sign_extend_reg, rs_reg, instr_rt_reg, instr_rd_reg, jump_addr_reg, word_en_reg, ld_en_reg);
			
			input clk, memtoreg, reg_write, mem_read, mem_write, reg_dst, alusrc_a, branch, jump, halt, word_en, ld_en, idex_en;
			input[1:0] alusrc_b;
			input[2:0] aluop;
			input[11:0] jump_addr;
			input[5:0] branch_label;
			input[15:0] pc_plus2, read_data1, read_data2, sign_extend;
			input[2:0] instr_rt, instr_rd, rs;
			output memtoreg_reg, reg_write_reg, mem_read_reg, mem_write_reg, reg_dst_reg, alusrc_a_reg, branch_reg, jump_reg, halt_reg, word_en_reg, ld_en_reg;
			output[2:0] aluop_reg;
			output[5:0] branch_label_reg;
			output[15:0] pc_plus2_reg, read_data1_reg, read_data2_reg, sign_extend_reg;
			output[2:0] instr_rt_reg, instr_rd_reg, rs_reg;
			output[1:0] alusrc_b_reg;
			output[11:0] jump_addr_reg;
			
			reg memtoreg_reg, reg_write_reg, mem_read_reg, mem_write_reg, reg_dst_reg, alusrc_a_reg, branch_reg, jump_reg, halt_reg, word_en_reg, ld_en_reg;
			reg[2:0] aluop_reg;
			reg[5:0] branch_label_reg;
			reg[15:0] pc_plus2_reg, read_data1_reg, read_data2_reg, sign_extend_reg;
			reg[2:0] instr_rt_reg, instr_rd_reg, rs_reg;
			reg[1:0] alusrc_b_reg;
			reg[11:0] jump_addr_reg;
			
//			initial
//			begin
//				memtoreg_reg = 0;
//				reg_write_reg = 0;
//				mem_read_reg = 0;
//				mem_write_reg = 0;
//				reg_dst_reg = 0;
//				alusrc_a_reg = 0;
//				aluop_reg = 0;
//				pc_plus2_reg = 0;
//				read_data1_reg = 0;
//				read_data2_reg = 0;
//				sign_extend_reg = 0;
//				instr_rt_reg = 0;
//				instr_rd_reg = 0;
//				branch_reg = 0;
//			end
			
			always @(posedge clk)
			begin
			if(idex_en)
			begin
				memtoreg_reg <= memtoreg;
				reg_write_reg <= reg_write;
				mem_read_reg <= mem_read;
				mem_write_reg <= mem_write;
				reg_dst_reg <= reg_dst;
				alusrc_a_reg <= alusrc_a;
				aluop_reg <= aluop;
				pc_plus2_reg <= pc_plus2;
				read_data1_reg <= read_data1;
				read_data2_reg <= read_data2;
				sign_extend_reg <= sign_extend;
				rs_reg <= rs;
				instr_rt_reg <= instr_rt;
				instr_rd_reg <= instr_rd;
				branch_reg <= branch;
				jump_reg <= jump;
				alusrc_b_reg <= alusrc_b;
				jump_addr_reg <= jump_addr;
				halt_reg <= halt;
				branch_label_reg <= branch_label;
				word_en_reg <=word_en;
				ld_en_reg <= ld_en;
			end
			else
			begin
				instr_rt_reg <= 0;
				instr_rd_reg <= 0;
			end
			end
endmodule
