`timescale 1ns / 100 ps

module ld_select(ld_en, sel, data_in, data_out);

	input ld_en, sel;
	input[15:0] data_in;
	output[15:0] data_out;
	
	wire[7:0] data_sel;
	wire[15:0] data_extended;
	
	assign data_sel = sel? data_in[15:8] : data_in[7:0];
	assign data_extended[15:0] = { {8{data_sel[7]}}, data_sel[7:0] };
	assign data_out = ld_en? data_in : data_extended;

endmodule
