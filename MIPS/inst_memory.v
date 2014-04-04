`timescale 1ns / 100 ps

module instr_memory(pc, instr);
	input[15:0] pc;
	output[15:0] instr;
	
//	reg [15:0] instr;
	reg [15:0] instr_mem [511:0]; // 511(32*16) * 16bit memory
	
	assign instr = instr_mem[pc];
	
endmodule
