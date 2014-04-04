`timescale 1ns / 100 ps

module forwarding(reg_write_m, dst_m, rs_ex, rt_ex, reg_write_wb, dst_wb,  forwardA, forwardB);
	input reg_write_m, reg_write_wb;
//	input forward_en;
	input[2:0] dst_m, rs_ex, rt_ex, dst_wb;
	output[1:0] forwardA, forwardB;
	
	reg[1:0] forwardA, forwardB;
	
	always @(*)
	begin
		if(reg_write_m &&(dst_m != 0) && (dst_m == rs_ex) )
			forwardA <= 2'b10;
		else if(reg_write_wb &&(dst_wb != 0) && (dst_m != rs_ex) && (dst_wb == rs_ex) )
			forwardA <= 2'b01;
		else 	forwardA <= 2'b00;
		
		if(reg_write_m &&(dst_m != 0) && (dst_m == rt_ex))
			forwardB <= 2'b10;			
		else if(reg_write_wb &&(dst_wb != 0) && (dst_m != rt_ex) && (dst_wb == rt_ex) )
			forwardB <= 2'b01;	
		else forwardB <= 2'b00;	
		
		
	end
endmodule
