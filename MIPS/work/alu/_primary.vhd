library verilog;
use verilog.vl_types.all;
entity alu is
    port(
        alu_a           : in     vl_logic_vector(15 downto 0);
        alu_b           : in     vl_logic_vector(15 downto 0);
        alu_ctrl        : in     vl_logic_vector(3 downto 0);
        zero            : out    vl_logic;
        alu_out         : out    vl_logic_vector(15 downto 0)
    );
end alu;
