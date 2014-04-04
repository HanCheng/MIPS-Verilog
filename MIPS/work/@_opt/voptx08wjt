library verilog;
use verilog.vl_types.all;
entity MEMWB is
    port(
        clk             : in     vl_logic;
        memtoreg        : in     vl_logic;
        reg_write       : in     vl_logic;
        read_data       : in     vl_logic_vector(15 downto 0);
        alu_out         : in     vl_logic_vector(15 downto 0);
        instr_rd        : in     vl_logic_vector(2 downto 0);
        halt            : in     vl_logic;
        memtoreg_reg    : out    vl_logic;
        reg_write_reg   : out    vl_logic;
        read_data_reg   : out    vl_logic_vector(15 downto 0);
        alu_out_reg     : out    vl_logic_vector(15 downto 0);
        instr_rd_reg    : out    vl_logic_vector(2 downto 0);
        halt_reg        : out    vl_logic
    );
end MEMWB;
