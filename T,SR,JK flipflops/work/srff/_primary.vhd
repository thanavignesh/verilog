library verilog;
use verilog.vl_types.all;
entity srff is
    port(
        s               : in     vl_logic;
        r               : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        q               : out    vl_logic;
        qbar            : out    vl_logic
    );
end srff;
