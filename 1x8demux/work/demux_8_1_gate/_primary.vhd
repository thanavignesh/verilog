library verilog;
use verilog.vl_types.all;
entity demux_8_1_gate is
    port(
        D               : in     vl_logic;
        S               : in     vl_logic_vector(2 downto 0);
        Y0              : out    vl_logic;
        Y1              : out    vl_logic;
        Y2              : out    vl_logic;
        Y3              : out    vl_logic;
        Y4              : out    vl_logic;
        Y5              : out    vl_logic;
        Y6              : out    vl_logic;
        Y7              : out    vl_logic
    );
end demux_8_1_gate;
