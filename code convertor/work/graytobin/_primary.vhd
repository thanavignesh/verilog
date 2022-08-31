library verilog;
use verilog.vl_types.all;
entity graytobin is
    port(
        G               : in     vl_logic_vector(3 downto 0);
        b               : out    vl_logic_vector(3 downto 0)
    );
end graytobin;
