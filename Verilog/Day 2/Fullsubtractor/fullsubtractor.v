module halfsubtractor(input a,b, output diff,borr);
assign diff = a^b;
assign w1 = ~a;
assign borr = w1&b;
endmodule


module fullsubtractor(input a,b,borrin, output diff,borrout);
wire w1,w2,w3;
 
halfsubtractor halfsubtractor1(.a(a),.b(b),.diff(w1),.borr(w2));
halfsubtractor halfsubtractor2(.a(w1),.b(borrin),.diff(diff),.borr(w3));
assign borrout = w2^w3;
endmodule
