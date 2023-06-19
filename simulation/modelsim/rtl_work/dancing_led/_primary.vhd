library verilog;
use verilog.vl_types.all;
entity dancing_led is
    port(
        clk             : in     vl_logic;
        leds            : out    vl_logic_vector(17 downto 0)
    );
end dancing_led;
