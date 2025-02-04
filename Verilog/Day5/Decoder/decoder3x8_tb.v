module decoder3x8_tb;
reg [2:0]y;
wire [7:0]d;
decoder3x8 uut(.y(y),.d(d));
initial begin
	$dumpfile("decoder3x8_tb.vcd");
	$dumpvars(0);
	$monitor("%2t|y=%b|d=%b",$time,y,d);
	repeat(5)begin
		y=$random;#10;
	end
end
endmodule
