module priority_encoder8x3_tb;
reg [7:0]d;
wire [2:0]y;

priority_encoder8x3 uut(.d(d),.y(y));
initial begin
	$dumpfile("priority_encoder8x3_tb.vcd");
	$dumpvars();
	$monitor("%2t|d=%b|y=%b|",$time,d,y);
	repeat(5)begin
		d=$random;#5;
	end
end
endmodule
