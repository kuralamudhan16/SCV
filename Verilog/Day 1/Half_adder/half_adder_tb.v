module halfadder_tb;
reg a,b;
wire s,c;
halfadder uut(.a(a),.b(b),.s(s),.c(c));

initial begin
$dumpfile("halfadder_vcd");
$dumpvars(0);

	a=0; b=0; #5;
	a=0; b=1; #5;
	a=1; b=0; #5;
	a=1; b=1; #5;
$finish;
end 
endmodule 
