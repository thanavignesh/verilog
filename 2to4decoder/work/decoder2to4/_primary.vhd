library verilog;
use verilog.vl_types.all;
entity decoder2to4 is
    port(
        en              : in     vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        d               : out    vl_logic_vector(3 downto 0)
    );
end decoder2to4;
