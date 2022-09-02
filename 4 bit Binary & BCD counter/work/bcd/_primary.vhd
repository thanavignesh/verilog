library verilog;
use verilog.vl_types.all;
entity bcd is
    port(
        \out\           : out    vl_logic_vector(3 downto 0);
        en              : in     vl_logic;
        clk             : in     vl_logic;
        res             : in     vl_logic
    );
end bcd;
