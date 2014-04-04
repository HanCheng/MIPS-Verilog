`timescale 1ns / 100 ps

module data_mem(addr, word_en, ld_en, write_data, mem_write, mem_read, read_data);
	input mem_write, mem_read, word_en, ld_en;
	input [15:0] addr, write_data;
	output[15:0] read_data;

	reg[8:0] i;
	reg[7:0] mem[255:0];
	reg[7:0] data_byte;
	reg[15:0] read_data;
	
	initial 
	begin
		for(i = 0; i <= 255; i = i+1)
		begin
			mem[i] = i;
		end	
	end
	always @(*)
	begin
		if(mem_write && word_en)
		begin
			mem[addr] <= write_data[7:0];
			mem[addr+1] <= write_data[15:8];
			$display("SW:From DataMem: Data:%h H Write to Addr.: %h H", write_data, addr);
		end	
		else if(!word_en && mem_write)   //write byte
		begin
			/** if we load the low byte ***/
	//		mem[addr] <= write_data[7:0];  
	//		$display("SB(Low Byte):From DataMem: Data:%h H Write to Addr.: %h H", write_data[7:0], addr);
			/** if we load the high byte ***/
			mem[addr] <= write_data[15:8];  
			$display("SB(High Byte):From DataMem: Data:%h H Write to Addr.: %h H", write_data[15:8], addr);
		end
	end
	always @(addr, word_en, ld_en, write_data, mem_write, mem_read, read_data,  data_byte)
	begin
		if(mem_read && ld_en)   // if Load Word
		begin
			read_data <= {mem[addr+1], mem[addr]};
			$display("LW:From DataMem: Data:%h H Read from Memaddr: %h H", read_data, addr);
		end
		else if(mem_read && !ld_en) // if load byte
		begin
			data_byte <= mem[addr];
			read_data <= { {8{data_byte[7]}}, data_byte[7:0] };
			$display("LB:From DataMem: Data:%h H Read from Memaddr: %h H", read_data, addr);
		end
	end
	
endmodule
