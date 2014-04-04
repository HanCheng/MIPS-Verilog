library verilog;
use verilog.vl_types.all;
entity instr_memory is
    port(
        pc              : in     vl_logic_vector(15 downto 0);
        instr           : out    vl_logic_vector(15 downto 0)
    );
end instr_memory;
