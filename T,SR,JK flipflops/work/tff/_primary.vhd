library verilog;
use verilog.vl_types.all;
entity tff is
    port(
        q               : out    vl_logic;
        d               : in     vl_logic;
        clk             : in     vl_logic;
        res             : in     vl_logic
    );
end tff;
