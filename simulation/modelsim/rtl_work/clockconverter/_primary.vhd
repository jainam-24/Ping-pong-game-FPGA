library verilog;
use verilog.vl_types.all;
entity clockconverter is
    port(
        clk50           : in     vl_logic;
        clk             : out    vl_logic
    );
end clockconverter;
