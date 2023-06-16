library verilog;
use verilog.vl_types.all;
entity somador1 is
    port(
        A               : in     vl_logic_vector(2 downto 0);
        B               : in     vl_logic_vector(2 downto 0);
        Te              : in     vl_logic;
        S               : out    vl_logic_vector(2 downto 0);
        TsFim           : out    vl_logic
    );
end somador1;
