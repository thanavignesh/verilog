library verilog;
use verilog.vl_types.all;
entity muxx8to1 is
    port(
        i               : in     vl_logic_vector(7 downto 0);
        s               : in     vl_logic_vector(2 downto 0);
        o               : out    vl_logic
    );
end muxx8to1;
