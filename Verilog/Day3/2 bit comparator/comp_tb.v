module comp_tb;
reg a,b;
wire x,y,z;
comp uut(.a(a),.b(b),.x(x),.y(y),.z(z));
initial begin 
$dumpfile("comp.vcd");
$dumpvars(0);
a=0; b=0; #10;
a=0; b=1; #10;
a=1; b=0; #10;
a=1; b=1; #10;
#10; $finish; 
end
endmodule 
