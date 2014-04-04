library verilog;
use verilog.vl_types.all;
entity control is
    port(
        opcode          : in     vl_logic_vector(3 downto 0);
        memtoreg        : out    vl_logic;
        reg_write       : out    vl_logic;
        mem_read        : out    vl_logic;
        mem_write       : out    vl_logic;
        branch          : out    vl_logic;
        jump            : out    vl_logic;
        halt            : out    vl_logic;
        reg_dst         : out    vl_logic;
        alusrc_a        : out    vl_logic;
        alusrc_b        : out    vl_logic_vector(1 downto 0);
        aluop           : out    vl_logic_vector(2 downto 0)
    );
end control;
