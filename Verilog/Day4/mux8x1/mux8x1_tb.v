module mux2to1_tb;
    reg w1, w2;    
    reg s;         
    wire y;        

    
    mux2to1 uut (.w1(w1),.w2(w2),.s(s),.y(y));
  initial begin
        $dumpfile("mux2to1_tb.vcd"); 
        $dumpvars(0);    
        $monitor("%4t | w1 = %b | w2 = %b | s = %b | y = %b",  $time, w1, w2, s, y);
			w1 = 0; w2 = 0; s = 1; #10; 
			w1 = 0; w2 = 1; s = 1; #10; 
			w1 = 1; w2 = 0; s = 0; #10; 
			w1 = 0; w2 = 1; s = 1; #10; 	
        $finish; 
    end
endmodule
