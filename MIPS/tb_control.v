`timescale 1ns / 1ps


module tb_control;

	// Inputs
	reg [3:0] opcode;

	// Outputs
	wire memtoreg;
	wire reg_write;
	wire mem_read;
	wire mem_write;
	wire branch;
	wire jump;
	wire halt;
	wire reg_dst;
	wire alusrc_a;
	wire [1:0] alusrc_b;
	wire [2:0] aluop;

	// Instantiate the Unit Under Test (UUT)
	control uut (
		.opcode(opcode), 
		.memtoreg(memtoreg), 
		.reg_write(reg_write), 
		.mem_read(mem_read), 
		.mem_write(mem_write), 
		.branch(branch), 
		.jump(jump), 
		.halt(halt), 
		.reg_dst(reg_dst), 
		.alusrc_a(alusrc_a), 
		.alusrc_b(alusrc_b), 
		.aluop(aluop)
	);

	initial begin
	 $display($time, " << Starting the Simulation >>");	 
		#10 opcode = 0000;
		#10 opcode = 0001;
		#10 opcode = 0010;
		#10 opcode = 0011;
		#10 opcode = 0100;
		#10 opcode = 0101;
		#10 opcode = 0110;
		#10 opcode = 0111;
		#10 opcode = 1000;
		#10 opcode = 1001;
		
		
		// Wait 100 ns for global reset to finish
		#500;
      $display($time, " << Simulation Complete >>");
		$stop;

	end
	
	initial begin
      // $monitor will print whenever a signal changes
      // in the design
    $monitor($time, "opcode=%b, memtoreg=%b,reg_write=%b,mem_read=%b,mem_write=%b, branch=%b,jump=%b, halt=%b, reg_dst=%b,alusrc_a=%b,alusrc_b=%b,aluop=%b",opcode, memtoreg, reg_write,
				mem_read, mem_write, branch, jump, halt, reg_dst,alusrc_a,alusrc_b,aluop);
		end
		
	/*	
	initial begin

    $monitor($time, "opcode=%b,",opcode);
		end	
     */ 
endmodule

