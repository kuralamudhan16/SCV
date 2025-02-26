module sequence_detector_tb;
  reg clk,reset,x;
  wire z;

  sequence_detector uut(clk,reset,x,z);
  initial clk = 0;   
  always #2 clk = ~clk;
  
  initial begin
    $dumpfile("sequence_detector_tb.vcd");
    $dumpvars(0);
    $monitor("%6t clk=%0b | reset=%0b | x=%0b | z=%0b |", $time,clk,reset,x,z);
    
    x=1;
    #1 reset = 0;
    #2 reset = 1;
    
     #3 x = 0;
    #4 x = 0;
    #5 x = 1;
    #6 x = 1;
    #7 x = 0;
    #8 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #10;
    $finish;
  end
endmodule
