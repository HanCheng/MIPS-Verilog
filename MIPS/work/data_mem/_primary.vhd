library verilog;
use verilog.vl_types.all;
entity data_mem is
    port(
        addr            : in     vl_logic_vector(15 downto 0);
        write_data      : in     vl_logic_vector(15 downto 0);
        mem_write       : in     vl_logic;
        mem_read        : in     vl_logic;
        read_data       : out    vl_logic_vector(15 downto 0)
    );
end data_mem;
