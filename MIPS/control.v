`timescale 1ns / 100 ps

module control(opcode, memtoreg, reg_write, mem_read, mem_write, branch, jump, halt, 
								reg_dst, alusrc_a, alusrc_b, aluop, word_en, ld_en);
	
	input[3:0] opcode;
	output memtoreg, reg_write, mem_read, mem_write, branch, reg_dst, alusrc_a, jump, halt, word_en, ld_en;
	output[2:0] aluop;
	output[1:0] alusrc_b;
	
	reg memtoreg=0, reg_write=0, mem_read=0, mem_write=0, branch=0, reg_dst=0, alusrc,jump=0, alusrc_a=0, halt=0;
	reg word_en, ld_en;
	reg[2:0] aluop=0;
	reg[1:0] alusrc_b=0;
	
	always@(*)
	begin
		case(opcode)
			4'b0000 :    // R-Format
				begin
					reg_dst <= 1;
					alusrc_a <= 0;
					alusrc_b <= 'b00;
					memtoreg <= 0;
					reg_write <= 1;
					mem_read <= 0;
					mem_write <= 0;
					branch <= 0;
					jump <= 0;
					halt <= 0;
					word_en <= 1;
					ld_en <= 1;
					aluop <= 3'b010;
				end
			4'b0001:		//R-Format
				begin
					reg_dst <= 1;
					alusrc_a <= 0;
					alusrc_b <= 'b00;
					memtoreg <= 0;
					reg_write <= 1;
					mem_read <= 0;
					mem_write <= 0;
					branch <= 0;
					jump <= 0;
					halt <= 0;
					word_en <= 1;
					ld_en <= 1;
					aluop <= 3'b011;
				end
			4'b1010:  	//LW    This is a bug ,should be 0010
				begin
					reg_dst <= 0;
					alusrc_a <= 0;
					alusrc_b <= 'b11;
					memtoreg <= 1;
					reg_write <= 1;
					mem_read <= 1;
					mem_write <= 0;
					branch <= 0;
					jump <= 0;
					halt <= 0;
					word_en <= 1;
					ld_en <= 1;
					aluop <= 3'b000;
				end
			4'b1011:  	//LB  This is a bug ,should be 0011
				begin
					reg_dst <= 0;
					alusrc_a <= 0;
					alusrc_b <= 'b11;
					memtoreg <= 1;
					reg_write <= 1;
					mem_read <= 1;
					mem_write <= 0;
					branch <= 0;
					jump <= 0;
					halt <= 0;
					word_en <= 1;
					ld_en <= 0;
					aluop <= 3'b000;
				end	
			4'b0100:		//SB
				begin
					reg_dst <= 1'b0;
					alusrc_a <= 0;
					alusrc_b <= 'b11;
					memtoreg <= 1'bx;
					reg_write <= 0;
					mem_read <= 0;
					mem_write <= 1;
					branch <= 0;
					jump <= 0;
					halt <= 0;
					word_en <= 0;
					ld_en <= 1;
					aluop <= 3'b000;
				end
			4'b0101:		//SW
				begin
					reg_dst <= 1'b0;
					alusrc_a <= 0;
					alusrc_b <= 'b11;
					memtoreg <= 1'bx;
					reg_write <= 0;
					mem_read <= 0;
					mem_write <= 1;
					branch <= 0;
					jump <= 0;
					halt <= 0;
					word_en <= 1;
					ld_en <= 1;
					aluop <= 3'b000;
				end	
		  4'b1110:   		//BEQ   This is a bug ,should be 0110
				begin
					reg_dst <= 1'bx;
					alusrc_a <= 0;
					alusrc_b <= 'b00;
					memtoreg <= 1'bx;
					reg_write <= 0;
					mem_read <= 0;
					mem_write <= 0;
					branch <= 1;
					jump <= 0;
					halt <= 0;
					word_en <= 1;
					ld_en <= 1;
					aluop <= 3'b110;
				end	
			4'b1111 :			//BNE  This is a bug ,should be 0111
				begin
					reg_dst <= 1'bx;
					alusrc_a <= 0;
					alusrc_b <= 'b00;
					memtoreg <= 1'bx;
					reg_write <= 0;
					mem_read <= 0;
					mem_write <= 0;
					branch <= 1;
					jump <= 0;
					halt <= 0;
					word_en <= 1;
					ld_en <= 1;
					aluop <= 3'b111;
				end		
			4'b1000 :			//Jump
				begin
					reg_dst <= 1'bx;
					alusrc_a <= 1;
					alusrc_b <= 'b01;
					memtoreg <= 1'bx;
					reg_write <= 0;
					mem_read <= 0;
					mem_write <= 0;
					branch <= 0;
					jump <= 1;
					halt <= 0;
					word_en <= 1;
					ld_en <= 1;
					aluop <= 3'b100;
				end
			4'b1001 :			//halt
				begin
					reg_dst <= 1'bx;
					alusrc_a <= 'bx;
					alusrc_b <= 'bxx;
					memtoreg <= 1'bx;
					reg_write <= 0;
					mem_read <= 0;
					mem_write <= 0;
					branch <= 0;
					jump <= 0;
					halt <= 1;
					word_en <= 1;
					ld_en <= 1;
					aluop <= 3'bxxx;
				end
			default:
				begin
					reg_dst <= 1'bx;
					alusrc_a <= 'bx;
					alusrc_b <= 'bxx;
					memtoreg <= 1'bx;
					reg_write <= 0;
					mem_read <= 0;
					mem_write <= 0;
					branch <= 0;
					jump <= 0;
					halt <= 0;
					word_en <= 1;
					ld_en <= 1;
					aluop <= 3'bxxx;
				end			
		endcase
	end


endmodule
