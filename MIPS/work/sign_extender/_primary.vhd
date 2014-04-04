library verilog;
use verilog.vl_types.all;
entity sign_extender is
    port(
        extend          : in     vl_logic_vector(5 downto 0);
        extended        : out    vl_logic_vector(15 downto 0)
    );
end sign_extender;
