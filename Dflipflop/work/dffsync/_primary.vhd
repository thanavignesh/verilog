library verilog;
use verilog.vl_types.all;
entity dffsync is
    port(
        clk             : in     vl_logic;
        q               : out    vl_logic;
        data            : in     vl_logic;
        reset           : in     vl_logic
    );
end dffsync;
