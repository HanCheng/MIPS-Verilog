`timescale 1ns / 100 ps

module haz_detection( rt, dst_ex, dst_wb, mem_write, pc_en, ifid_en, idex_en);
	input[2:0]  rt, dst_wb, dst_ex;
	input mem_write;

	output pc_en, ifid_en, idex_en;
	
	reg pc_en, ifid_en, idex_en;
	
	initial begin
			pc_en <= 1;
			ifid_en <= 1;
			idex_en <= 1;
	end
	
	always @(*)
	begin
		if(mem_write && (rt == dst_ex) )
		begin
			pc_en <= 0;
			ifid_en <= 0;
			idex_en <= 0;
		end
		else if(mem_write &&(rt == dst_wb))
		begin
			pc_en <= 1;
			ifid_en <= 1;	
			idex_en <= 1;			
		end

	end

endmodule

