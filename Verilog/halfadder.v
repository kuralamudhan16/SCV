module halfadder (input a,b, output c,s);
xor xor1(s,a,b);
and and1(c,a,b);
endmodule 