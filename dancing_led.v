module dancing_led(clk,reset,left_full_flag,right_full_flag,leds);
input clk;
input reset,left_full_flag,right_full_flag;
output reg [17:0] leds;
reg left,right;
reg flag=1'b0;

initial
begin
	leds=18'b1;
	left=1'b1;
	right=1'b0;	
end

always @(posedge clk)
begin
	if(reset==1'b0)
	begin
		if(left==1)
			leds=leds<<1;
		else if(right==1)
			leds=leds>>1;
			
		if( leds[0] && flag==1'b0 )
		begin
			left=1'b1;
			right=1'b0;
		end
		
		if(leds[17] && flag==1'b0 )
		begin
			left=1'b0;
			right=1'b1;
		end
	end
	if(reset==1'b1 || (left_full_flag) || (right_full_flag ))
	begin
		flag=1'b1;
		right=1'b0;
		left=1'b0;
		leds=18'b111111111111111111;
	end
end

endmodule
