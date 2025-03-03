module d_flipflop_tb;
  reg clk,reset_n;
  reg d;
  wire q;
  
  d_flipflop uut(.clk(clk),.reset_n(reset_n),.d(d),.q(q));
  always #1 clk=~clk;
  initial begin
    $dumpfile("d_flipflop_tb.vcd");
    $dumpvars();
  end
  
  initial begin
    clk=0;reset_n=0;
    #3reset_n=1;
    
    repeat(6)begin
      d=$urandom_range(0,1);
      #3;
    end
    reset_n=0; #3;
    reset_n=1;
    
    repeat(6)begin
      d=$urandom_range(0,1);
      #3;
    end
    $finish;
  end
endmodule
  
    
     
	
