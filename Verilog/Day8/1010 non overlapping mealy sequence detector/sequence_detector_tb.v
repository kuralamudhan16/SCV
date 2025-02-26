module sequence_detector_tb;
  reg clk,reset,x;
  wire z;
  
  sequence_detector uut(clk,reset,x,z);
  initial clk = 0;
  always #2 clk=~clk;
  
  initial begin
    $dumpfile("sequence_detector_tb.vcd");
    $dumpvars(0);
    
    x = 0;
    #1 reset = 0;
    #2 reset = 1;
    
    #3 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #10;
    $finish;
  end
endmodule
    
    
    
