module halfadder (input a,b, output c,s);
	xor xor1(s,a,b);
	and and1(c,a,b);
endmodule

module fulladder (input a,b,cin, output sum,carryout);
	wire w1,w2,w3;
	
		halfadder halfadder1(.a(a),.b(b),.s(w1),.c(w2));
		halfadder halfadder2(.a(w1),.b(cin),.s(s),.c(w3));
		or (carryout,w2,w3);
	
endmodule

module paralleladder (a,b,cin,sum,cout);
	input [3:0] a,b;
	input cin;
	output [3:0] sum;
	output cout;
	wire  c1,c2,c3;	
		fulladder fulladder1(a[0],b[0],cin,sum[0],c1);
		fulladder fulladder2(a[1],b[1],cin,sum[1],c2);
		fulladder fulladder3(a[2],b[2],cin,sum[2],c3);
		fulladder fulladder4(a[3],b[3],cin,sum[3],cout);
endmodule 		
