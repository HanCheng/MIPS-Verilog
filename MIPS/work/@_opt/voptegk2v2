library verilog;
use verilog.vl_types.all;
entity EXMEM is
    port(
        clk             : in     vl_logic;
        memtoreg        : in     vl_logic;
        reg_write       : in     vl_logic;
        branch          : in     vl_logic;
        jump            : in     vl_logic;
        halt            : in     vl_logic;
        mem_read        : in     vl_logic;
        mem_write       : in     vl_logic;
        pc_branch       : in     vl_logic_vector(15 downto 0);
        zero            : in     vl_logic;
        alu_out         : in     vl_logic_vector(15 downto 0);
        reg_out         : in     vl_logic_vector(15 downto 0);
        instr_rd        : in     vl_logic_vector(2 downto 0);
        memtoreg_reg    : out    vl_logic;
        reg_write_reg   : out    vl_logic;
        pcsrc           : out    vl_logic;
        jump_reg        : out    vl_logic;
        mem_read_reg    : out    vl_logic;
        mem_write_reg   : out    vl_logic;
        pc_branch_reg   : out    vl_logic_vector(15 downto 0);
        alu_out_reg     : out    vl_logic_vector(15 downto 0);
        reg_out_reg     : out    vl_logic_vector(15 downto 0);
        instr_rd_reg    : out    vl_logic_vector(2 downto 0);
        halt_reg        : out    vl_logic
    );
end EXMEM;
