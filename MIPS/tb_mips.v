`timescale 1ns / 1ps
module tb_mips;

	// Inputs
	reg clk;
	reg rst;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.rst(rst)
	);

	always #10 clk = ~clk;
	
	initial begin
	 $display($time, " << Starting the Simulation >>");
		// Initialize Inputs
		clk = 1;

		#10 rst = 1;
		#10 rst = 0;
		
		/*****Testing R-Type & Load/Store Instructions ***
//		uut.instr_memory.instr_mem[1] = 'h0xA2c9; // lw r3, (9)r1;
//		uut.instr_memory.instr_mem[2] = 'h0xA508; // lw r4, (8)r2;
		uut.instr_memory.instr_mem[1] = 'h0xB2c9; // lb r3, (9)r1;
		uut.instr_memory.instr_mem[2] = 'h0xB508; // lb r4, (8)r2;
//		uut.instr_memory.instr_mem[2] = 'h0xA501; // lw r4, (1)r2;
//		uut.instr_memory.instr_mem[3] = 'h0x0729; //	sub r5, r3, r4 0000 0111 0010 1001		
//		uut.instr_memory.instr_mem[3] = 'h0x072d; //	and r5, r3, r4 0000 0111 0010 1101
		uut.instr_memory.instr_mem[3] = 'h0x0734; //	lsr r6, r3, r4 0000 0111 0010 1101
		uut.instr_memory.instr_mem[4] = 'h0x0728; //	add r5, r3, r4 0000 0111 0010 1000
//		uut.instr_memory.instr_mem[4] = 'h0x0734; //	lsr r6, r3, r4 0000 0111 0010 1101
		uut.instr_memory.instr_mem[5] = 'h0x0738; //	add r7, r3, r4 0000 0111 0010 1000
//		uut.instr_memory.instr_mem[3] = 'h0x072e; //	or r5, r3, r4  0000 0111 0010 1110
//		uut.instr_memory.instr_mem[3] = 'h0x1628; //	invt r5, r3    0001 0110 0010 1000
//		uut.instr_memory.instr_mem[3] = 'h0x1129; //	mov r5, r4	   0001 0001 0010 1001
//		uut.instr_memory.instr_mem[3] = 'h0x10e9; //	mov r5, r3	   0001 0000 1110 1001
//		uut.instr_memory.instr_mem[3] = 'h0x072f; //	slt r5, r3, r4 0000 0111 0010 1111
//		uut.instr_memory.instr_mem[3] = 'h0x09ef; //	slt r5, r4, r3 0000 1001 1110 1111
//		uut.instr_memory.instr_mem[6] = 'h0x5382; //	sw r6, (2)r1   0000 0111 0010 0010
		uut.instr_memory.instr_mem[6] = 'h0x43c2; //	SB r7, (2)r1   0000 0111 0010 0010
//		uut.instr_memory.instr_mem[6] = 'h0x4382; //	SB r6, (2)r1   0000 0111 0010 0010
//		uut.instr_memory.instr_mem[6] = 'h0x53c2; //	sw r7, (2)r1   0000 0111 0010 0010
		uut.instr_memory.instr_mem[7] = 'h0x9000;	//halt
		*/
		
		/*** Testing R-type & Load/Store instructions ***
		uut.instr_memory.instr_mem[1] = 'h0xB2c9; // lb r3, (9)r1;
		uut.instr_memory.instr_mem[2] = 'h0xB508; // lb r4, (8)r2;
		uut.instr_memory.instr_mem[3] = 'h0x0734; //	lsl r6, r3, r4 0000 0111 0010 1101
		uut.instr_memory.instr_mem[4] = 'h0x0728; //	add r5, r3, r4 0000 0111 0010 1000
		uut.instr_memory.instr_mem[5] = 'h0x073e; //	or r7, r3, r4
		uut.instr_memory.instr_mem[6] = 'h0x072d; //	and r5, r3, r4
		uut.instr_memory.instr_mem[7] = 'h0x1600; //	invt r0, r3
		uut.instr_memory.instr_mem[8] = 'h0x0717; //	slt r2, r3, r4
//		uut.instr_memory.instr_mem[5] = 'h0x0712; //	asr r2, r3, r4
		uut.instr_memory.instr_mem[9] = 'h0x4382; //	SB r6, (2)r1
		uut.instr_memory.instr_mem[10] = 'h0x9000;	//halt
		*/
		
		/*** Testing data hazard in Store instruction ****/
		uut.instr_memory.instr_mem[1] = 'h0xB2c9; // lb r3, (9)r1;
		uut.instr_memory.instr_mem[2] = 'h0xB508; // lb r4, (8)r2;
		uut.instr_memory.instr_mem[3] = 'h0x0734; //	lsl r6, r3, r4 0000 0111 0010 1101
		uut.instr_memory.instr_mem[4] = 'h0x4382; //	SB r6, (2)r1
		uut.instr_memory.instr_mem[5] = 'h0x9000;	//halt
		
		
		/*****testing the Branch instruction ***
		uut.instr_memory.instr_mem[1] = 'h0xB280; // 			lb r2, (0)r1;
		uut.instr_memory.instr_mem[2] = 'h0xB8c6; // 			lb r3, (6)r4;
		uut.instr_memory.instr_mem[3] = 'h0xB100; // 			lb r4, (0)r0;
		uut.instr_memory.instr_mem[4] = 'h0x0699; //	label:	sub r3, r3, r2
		uut.instr_memory.instr_mem[5] = 'h0x08a0; //				add r4, r4, r2
		uut.instr_memory.instr_mem[6] = 'h0xF4e1; //				bne r3, r2, label; label = 100001
		uut.instr_memory.instr_mem[7] = 'h0x9000; //				halt
		*/
		
		
		/*****testing the Jump instruction ***
		uut.instr_memory.instr_mem[1] = 'h0xB2c9; // lb r3, (9)r1;
		uut.instr_memory.instr_mem[2] = 'h0xB508; // lb r4, (8)r2;
		uut.instr_memory.instr_mem[3] = 'h0x8004; // jump label; jump to pc = 8  label = 0100
		uut.instr_memory.instr_mem[4] = 'h0x0734; //	lsr r6, r3, r4
		uut.instr_memory.instr_mem[5] = 'h0x0728; //	add r5, r3, r4
		uut.instr_memory.instr_mem[6] = 'h0x0738; //	add r7, r3, r4
		uut.instr_memory.instr_mem[7] = 'h0x4382; //	SB r6, (2)r1
		uut.instr_memory.instr_mem[8] = 'h0x9000;	//halt
		*/
		
		#2000;
		$display($time, " << Simulation Complete >>");
		$stop;
        

	end
	
	
	//The registers in datamemory module being tested
	initial begin
	// $monitor will print whenever a signal changes
	// in the design

	$monitor($time, "opcode=%h, r0=%h, r1=%h, r2=%h, r3=%h, r4=%h, r5=%h, r6=%h, r7=%h", uut.opcode, uut.regfile.RF[0], uut.regfile.RF[1],
			uut.regfile.RF[2], uut.regfile.RF[3], uut.regfile.RF[4], uut.regfile.RF[5], uut.regfile.RF[6], uut.regfile.RF[7]);
	end


	always@(uut.halt_wb)
	begin
	if(uut.halt_wb)
		$monitor($time, "opcode = %h, r0=%h, r1=%h, r2=%h, r3=%h, r4=%h, r5=%h, r6=%h, r7=%h", uut.opcode, uut.regfile.RF[0], uut.regfile.RF[1],
			uut.regfile.RF[2], uut.regfile.RF[3], uut.regfile.RF[4], uut.regfile.RF[5], uut.regfile.RF[6], uut.regfile.RF[7]);
	end

	/*	//control module test
		initial begin
      // $monitor will print whenever a signal changes
      // in the design
    $monitor($time, " opcode = %h", uut.control.opcode);
		end
		
		
	initial begin
      // $monitor will print whenever a signal changes
      // in the design
    $monitor($time, " opcode = %h", uut.control.opcode);
		end	
      
    */  
endmodule


