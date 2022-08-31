library verilog;
use verilog.vl_types.all;
entity compare is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        eq              : out    vl_logic;
        gre             : out    vl_logic;
        sma             : out    vl_logic
    );
end compare;
