module parallel_adder_tb;
	reg [3:0] a,b;
	reg cin;
	wire [3:0] sum;
	wire cout;
paralleladder uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
	$dumpfile("parallel_adder_tb.vcd");
	$dumpvars(0);
		
		a=4'b0010;b=4'b0011;cin=0; #5;
	$finish;
end
endmodule
