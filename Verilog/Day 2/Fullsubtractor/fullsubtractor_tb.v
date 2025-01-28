module fullsubtractor_tb;
	reg a;
	reg b;
	reg borrin;
	wire diff;
	wire borrout;
		fullsubtractor uut(.a(a),.b(b),.borrin(borrin),.diff(diff),.borrout(borrout));
			initial begin
				$dumpfile("fullsubtractor_tb.vcd");
				$dumpvars(0);
			    $monitor("%4t|a=%b|b=%b|borrin=%b|diff=%b|borrout=%b",$time,a,b,borrin,diff,borrout);
					a = 0; b = 0; borrin = 0; #10; 
					a = 0; b = 0; borrin = 1; #10; 
				    a = 0; b = 1; borrin = 0; #10; 
					a = 0; b = 1; borrin = 1; #10; 
					a = 1; b = 0; borrin = 0; #10; 
					a = 1; b = 0; borrin = 1; #10; 
					a = 1; b = 1; borrin = 0; #10; 
					a = 1; b = 1; borrin = 1; #10; 
           $finish; 
	    end
endmodule
