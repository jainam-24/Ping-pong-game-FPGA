module score_controller(button_L,button_R,leds0,leds17, sw1,sw2,score_L,score_R,lines1,lines2,left_full_flag,right_full_flag);
input button_L,button_R;
input leds0,leds17;
output reg sw1,sw2;
output reg [3:0]score_L=4'b0000;
output reg [3:0]score_R=4'b0000;
output [6:0] lines1,lines2;
reg [3:0]pscore1=4'b0000;
reg [3:0]pscore2=4'b0000;
output reg left_full_flag=1'b0;
output reg right_full_flag=1'b0;

always @(negedge button_L)
begin
	if( (leds17) )
	begin
	 	score_L=pscore1+4'b0001;
    	pscore1=score_L;
	 	sw1=~sw1;
	 end
	 if(pscore1==4'b1001)
		begin
			left_full_flag=1'b1;
		end
end

always @(negedge button_R)
begin
	if((leds0))
		begin
			score_R=pscore2+4'b0001;
			pscore2=score_R;
			sw2=~sw2;
			if(pscore2==4'b1001)
			begin
				right_full_flag=1'b1;
			end
		end
end
bcd_to_seven s2(score_L,lines1);
bcd_to_seven s1(score_R,lines2);
endmodule
