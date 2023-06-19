module main_module(button_L,button_R,clk50,reset,leds,lines1,lines2,sw1,sw2);
input button_L,button_R,clk50,reset;
output [17:0]leds;
output [6:0]lines1,lines2;
output sw1,sw2;

wire clk;
wire left_full_flag,right_full_flag;
wire [3:0]score_L,score_R;

//interconnecting all modules
clockconverter clk_convert(clk50,clk);
dancing_led dance1(clk,reset,left_full_flag,right_full_flag,leds);
score_controller t1(button_L,button_R,leds[0],leds[17],sw1,sw2,score_L,score_R,lines1,lines2,left_full_flag,right_full_flag);

endmodule
