`timescale 1ns / 100 ps

module regfile(clk, read_reg1, read_reg2, write_reg, write_data, reg_write, read_data1, read_data2);
	input clk;
	input [2:0]  read_reg1, read_reg2, write_reg;
	input [15:0] write_data;
	input reg_write;
	output [15:0]  read_data1, read_data2;

	reg[15:0] RF [7:0];
	reg[3:0] i;
	
	initial 
	begin
		for(i = 0; i <= 7; i = i+1)
		begin
			RF[i] = i;
		end	
	end
	assign read_data1 = RF[read_reg1];
	assign read_data2 = RF[read_reg2];
	
	always @(clk)
	begin
		if(reg_write)
		begin
			RF[write_reg] <= write_data;
			$display("Register file: Data:%h H Write to RegNo.: %d", write_data, write_reg);
		end	
	end

endmodule
	