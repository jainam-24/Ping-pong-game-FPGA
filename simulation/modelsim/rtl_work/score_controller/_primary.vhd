library verilog;
use verilog.vl_types.all;
entity score_controller is
    port(
        button_L        : in     vl_logic;
        button_R        : in     vl_logic;
        leds            : in     vl_logic_vector(17 downto 0);
        sw1             : out    vl_logic;
        sw2             : out    vl_logic;
        score_L         : out    vl_logic_vector(3 downto 0);
        score_R         : out    vl_logic_vector(3 downto 0);
        lines1          : out    vl_logic_vector(6 downto 0);
        lines2          : out    vl_logic_vector(6 downto 0)
    );
end score_controller;
