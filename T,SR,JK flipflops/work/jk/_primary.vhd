library verilog;
use verilog.vl_types.all;
entity jk is
    port(
        j               : in     vl_logic;
        k               : in     vl_logic;
        q               : out    vl_logic;
        qbar            : out    vl_logic;
        clk             : in     vl_logic;
        res             : in     vl_logic
    );
end jk;
