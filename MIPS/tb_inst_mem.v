`timescale 1ns / 1ps


module tb_inst_mem;

	// Inputs
	reg [15:0] pc;

	// Outputs
	wire [15:0] instr;

	// Instantiate the Unit Under Test (UUT)
	instr_memory uut (
		.pc(pc), 
		.instr(instr)
	);

	initial begin
	 $display($time, " << Starting the Simulation >>");
		// Initialize Inputs
		pc = 0;
		#10
		uut.instr_mem[2] = 'h0x24c2;
		uut.instr_mem[4] = 'h0x2101;
		uut.instr_mem[6] = 'h0x0748;
		uut.instr_mem[8] = 'h0x9000;
		// Wait 100 ns for global reset to finish
		#10 pc = 0;
		#10 pc = 2;
		#10 pc = 4;
		#10 pc = 6;
		#10 pc = 8;
		#100;
      $display($time, " << Simulation Complete >>");
		$stop;
	end
	
	initial begin
      // $monitor will print whenever a signal changes
      // in the design
    $monitor($time, " instr = %b", instr);
		end
      
endmodule

