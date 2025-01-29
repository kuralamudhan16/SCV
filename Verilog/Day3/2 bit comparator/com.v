module comp (input a,b, output x,y,z);
not not1(w1,a);
not not2(w2,b);
and and1(w3,w1,w2);
and and2(w4,a,b);
or or1(x,w3,w4);
and and3(y,w1,b);
and and4(z,a,w2);
endmodule
