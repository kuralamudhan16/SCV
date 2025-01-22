module and_tb;
reg a,b;
wire y;
and1 uut(.a(a),.b(b),.y(y));
initial begin 
    $dumpfile("and_1.vcd");
	$dumpvars(0);
a=0; b=0; #5;
a=0; b=1; #5;
#5 $finish;
end
endmodule 