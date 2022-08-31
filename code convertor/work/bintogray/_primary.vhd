library verilog;
use verilog.vl_types.all;
entity bintogray is
    port(
        b               : in     vl_logic_vector(3 downto 0);
        g               : out    vl_logic_vector(3 downto 0)
    );
end bintogray;
