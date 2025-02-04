module encoder8x3_tb;
reg [7:0]d;
wire[2:0]y;
integer i;
encoder8x3 uut(.d(d),.y(y));
initial begin
	$dumpfile("encoder8x3_tb.vcd");
	$dumpvars(0);
	d=8'b1;#1;
	for(i =0; i<8; i=i+1)begin
	  d=d<<1;#1;
	  $monitor("%3t|d=%b|y=%b",$time,d,y);
         end
	end
endmodule
