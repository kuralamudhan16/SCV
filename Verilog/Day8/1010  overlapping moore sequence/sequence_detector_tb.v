module sequence_detector_tb;
  reg clk,reset,x;
  reg [3:0]state,next_state;
  wire z;
  
  sequence_detector uut(clk,reset,x,z);
  initial clk = 0;   
  always #2 clk = ~clk;
  
  initial begin
    $dumpfile("sequence_detector_tb.vcd");
    $dumpvars(0);
    $monitor("%6t clk=%0b | reset=%0b | x=%0b | z=%0b | state = %0b| next_state = %0b", $time,clk,reset,x,z,state,next_state);
    
    x=0;
    #1 reset = 0;
    #2 reset = 1;
    
     #3 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
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
