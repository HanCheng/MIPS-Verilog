`timescale 1ns / 100 ps

module mips(clk, rst, pc_en, idex_en, ifid_en);

	input clk, rst;
	output pc_en,idex_en, ifid_en;
		
	reg[15:0] pc, next_pc;
	reg[15:0] alu_b_ex;
	reg[3:0] alu_ctrl;
	reg[15:0]  alu_b_in_ex, alu_a_in_ex;
	
	wire pc_en,idex_en, ifid_en;
	wire[1:0] forwardA, forwardB;
	wire flush;
	wire word_en, ld_en, word_en_ex, ld_en_ex, word_en_m, ld_en_m;
	wire memtoreg, reg_write, mem_read, mem_write, reg_dst, alusrc_a, branch, jump, halt;
	wire[1:0] alusrc_b;
	wire[1:0] alusrc_b_ex;
	wire memtoreg_m, reg_write_m,  mem_read_m, mem_write_m, reg_dst_m, alusrc_a_m, branch_m, jump_m, halt_m;
	wire memtoreg_ex, reg_write_ex, mem_read_ex, mem_write_ex, reg_dst_ex, alusrc_a_ex, branch_ex, jump_ex, halt_ex;
	wire memtoreg_wb, reg_write_wb, halt_wb;
	wire [15:0] pc_branch_label;
	wire[5:0] branch_extend;
	wire[5:0] branch_label_id, branch_label_ex;
	wire[2:0] aluop;
	wire[2:0] aluop_ex;
	wire[15:0] pc_plus2_if, pc_plus2_id;
	wire[15:0] pc_branch_m, pc_branch_id;
	wire[15:0] pc_plus2_ex, pc_branch_ex;
	wire pcsrc;
	wire[15:0] wb;
	wire[11:0] jump_addr_id, jump_addr_ex;
	wire zero, zero_m;
	wire[3:0] opcode;
	wire[2:0] rs, rt, rd, rs_ex, rt_ex, rd_ex, dst_ex, dst_m, dst_wb;
	wire[5:0] sign_extend;
	wire[15:0] sign_extended, sign_extended_ex;
	wire[15:0] instr, instr_id, reg_a_id, reg_b_id, reg_a_ex, reg_b_ex, reg_b_m;
	wire[2:0] funct;
	wire[15:0] alu_a_ex, alu_out_ex, alu_out_m, alu_out_wb, mem_out, mem_data, mem_data_wb;
	
	
//stall
haz_detection  	hazard_detection( rt, dst_ex, dst_wb, mem_write, pc_en, ifid_en, idex_en);
//forwarding
forwarding	      forwarding(reg_write_m, dst_m, rs_ex, rt_ex, reg_write_wb, dst_wb, forwardA, forwardB);
//control hazard

	/*  IF Stage      **/
	assign pc_plus2_if = pc + 1;
	assign flush = pcsrc | jump_m;
	always@(pcsrc, jump_ex, next_pc, pc_plus2_if, alu_out_ex, pc_branch_m ,pc_en)
	begin
		if(pc_en)
		begin
			case({pcsrc, jump_ex})
				2'b00 : next_pc = pc_plus2_if;
				2'b01 : 
				begin
					next_pc = alu_out_ex;	//jump
					$display("JUMP to address :%h H ", next_pc);
				end	
				2'b10 : next_pc = pc_branch_m;   //branch
				default : next_pc = pc;
			endcase	
		end	
		else if(pc_en == 0)
		begin
			next_pc = pc;		
		end
	end
	always@(posedge clk, posedge rst)
	begin
		if(rst)
			pc <= 0;
		else if(clk )
			pc <= next_pc;
	end
	
instr_memory	 instr_memory(pc, instr);
//IFID		IFID(clk,  flush, instr, pc_plus2_if, pc_plus2_id, instr_id);
IFID		IFID(clk, ifid_en, flush, instr, pc, pc_plus2_id, instr_id);
	
	/* ID Stage   *****/
	assign opcode = instr_id[15:12];
	assign rs = instr_id[11:9];
	assign rt = instr_id[8:6];
	assign sign_extend = instr_id[5:0];
	assign rd = instr_id[5:3];
	assign jump_addr_id = instr_id[11:0];
	assign branch_label_id = ~sign_extend + 1;

regfile  regfile(clk, rs, rt, dst_wb, wb, reg_write_wb, reg_a_id, reg_b_id);
sign_extender	sign_extender(sign_extend, sign_extended);
control	control(opcode, memtoreg, reg_write, mem_read, mem_write, branch, jump, halt, reg_dst, alusrc_a, alusrc_b, aluop, word_en, ld_en);

IDEX		IDEX(clk,idex_en, memtoreg, reg_write, mem_read, mem_write, reg_dst, alusrc_a, alusrc_b, aluop, pc_plus2_id,
				branch, jump, halt, word_en, ld_en, reg_a_id, reg_b_id, branch_label_id, sign_extended, rs, rt, rd, jump_addr_id, memtoreg_ex, reg_write_ex, branch_ex,
				jump_ex, mem_read_ex, mem_write_ex, reg_dst_ex, alusrc_a_ex, alusrc_b_ex, aluop_ex, pc_plus2_ex, reg_a_ex, halt_ex, 
				reg_b_ex, branch_label_ex, sign_extended_ex, rs_ex, rt_ex, rd_ex, jump_addr_ex, word_en_ex, ld_en_ex);

		/***** EX Stage   *****/
	assign funct = sign_extended_ex[2:0];
	assign branch_extend = (branch_label_ex << 1);
	assign pc_branch_label =  { {10{branch_extend[5]}}, branch_extend[5:0] };
	assign pc_branch_ex = pc_plus2_ex + pc_branch_label; 
	assign alu_a_ex = alusrc_a_ex? pc_plus2_ex : reg_a_ex;	
	assign dst_ex = reg_dst_ex? rd_ex : rt_ex;
	
	always@(forwardA, forwardB, wb, alu_out_m, alu_b_ex, alu_a_ex, alu_b_in_ex, alu_a_in_ex)
	begin
		case(forwardA)
			2'b00 : alu_a_in_ex <= alu_a_ex;
			2'b01 : alu_a_in_ex <= wb;
			2'b10 : alu_a_in_ex <= alu_out_m;
			default: alu_a_in_ex <= 'bz;
		endcase
		
		case(forwardB)
			2'b00 : alu_b_in_ex <= alu_b_ex;
			2'b01 : alu_b_in_ex <= wb;
			2'b10 : alu_b_in_ex <= alu_out_m;
			default: alu_b_in_ex <= 'bz;
		endcase
	end
	
	always@(alusrc_b_ex, alu_b_ex, reg_b_ex, jump_addr_ex, sign_extended_ex)
	begin
		case(alusrc_b_ex)
			2'b00 : alu_b_ex <= reg_b_ex;
			2'b01 : alu_b_ex <= jump_addr_ex;
			2'b11 : alu_b_ex <= sign_extended_ex;
			default : alu_b_ex <= 0;
		endcase
	end
	always @(funct, aluop_ex, alu_ctrl)
	begin
		casex({aluop_ex, funct})
			6'b000??? : alu_ctrl <= 4'b0000;		//LW,SW,LDB,SDB
			6'b010000 : alu_ctrl <= 4'b0000;		//ADD 
			6'b010001 : alu_ctrl <= 4'b0001;		//SUB
			6'b010010 : alu_ctrl <= 4'b0010;		//ASR This is a bug should be 0010
			6'b010011 : alu_ctrl <= 4'b0011;		//LSR This is a bug should be 0011
			6'b010100 : alu_ctrl <= 4'b0100;		//LSL
			6'b010101 : alu_ctrl <= 4'b0101;		//AND
			6'b010110 : alu_ctrl <= 4'b0110;		//OR	This is a bug should be 0110
			6'b010111 : alu_ctrl <= 4'b0111;		//SLT	This is a bug should be 0111
			6'b011000 : alu_ctrl <= 4'b1000;		//INVERT
			6'b011001 : alu_ctrl <= 4'b1001;		//MOVE
			6'b100??? : alu_ctrl <= 4'b1010;		//JUMP
			6'b110??? : alu_ctrl <= 4'b1011;		//BEQ
			6'b111??? : alu_ctrl <= 4'b1100;		//BNE
		endcase
	end

alu 	alu(alu_a_in_ex, alu_b_in_ex, alu_ctrl, zero, alu_out_ex);
EXMEM   EXMEM(clk, memtoreg_ex, reg_write_ex, branch_ex, jump_ex, halt_ex, word_en_ex, ld_en_ex, mem_read_ex, mem_write_ex, pc_branch_ex, zero, alu_out_ex, 
				  reg_b_ex, dst_ex, memtoreg_m, reg_write_m, pcsrc, jump_m, mem_read_m, mem_write_m, pc_branch_m, 
				  alu_out_m, reg_b_m, dst_m, halt_m, word_en_m, ld_en_m);
				  
	/***
		MEM Statge ****/
data_mem		data_mem(alu_out_m, word_en_m, ld_en_m, reg_b_m, mem_write_m, mem_read_m, mem_data);
//ld_select   ld_select(ld_en_m, alu_out_m[0], mem_out, mem_data);
MEMWB			MEMWB(clk, memtoreg_m, reg_write_m, mem_data, alu_out_m, dst_m, halt_m,
						memtoreg_wb, reg_write_wb, mem_data_wb, alu_out_wb, dst_wb, halt_wb);

		
	/***
		WB Statge	****/
	
	assign wb = memtoreg_wb ?  mem_data_wb : alu_out_wb;

endmodule
