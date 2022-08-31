library verilog;
use verilog.vl_types.all;
entity dff is
    port(
        d               : in     vl_logic;
        q               : out    vl_logic;
        en              : in     vl_logic;
        reset           : in     vl_logic
    );
end dff;
