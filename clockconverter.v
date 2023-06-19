module clockconverter(input clk50,output reg clk);
reg[31:0]count;

initial 
begin
 count=32'd0;
 clk=0;
end

always @(posedge clk50)
begin
	count=count+1;
	if(count==32'd5000000) 
	begin
		clk=~clk;
		count=32'd0;
	end
end
endmodule
