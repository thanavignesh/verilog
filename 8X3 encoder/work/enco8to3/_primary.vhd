library verilog;
use verilog.vl_types.all;
entity enco8to3 is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : out    vl_logic_vector(2 downto 0)
    );
end enco8to3;
