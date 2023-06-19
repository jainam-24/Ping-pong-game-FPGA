library verilog;
use verilog.vl_types.all;
entity main_module is
    port(
        button_L        : in     vl_logic;
        button_R        : in     vl_logic;
        clk50           : in     vl_logic;
        leds            : out    vl_logic_vector(17 downto 0);
        s1              : out    vl_logic_vector(6 downto 0);
        s2              : out    vl_logic_vector(6 downto 0);
        sw1             : out    vl_logic;
        sw2             : out    vl_logic
    );
end main_module;
