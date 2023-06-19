library verilog;
use verilog.vl_types.all;
entity bcd_to_seven is
    port(
        value           : in     vl_logic_vector(3 downto 0);
        lines           : out    vl_logic_vector(6 downto 0)
    );
end bcd_to_seven;
