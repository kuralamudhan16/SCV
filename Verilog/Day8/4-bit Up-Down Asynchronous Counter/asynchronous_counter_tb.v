module asynchronouscounter_tb;
  reg clk,reset;
  reg j,k;
  reg up;
  wire q,q_bar;
 
  asynchronouscounter uut( clk,reset,j,k,up,q,q_bar);
  
  initial begin
    $dumpfile ("asynchronouscounter_tb.vcd");
    $dumpvars(0);
    clk=0; reset=0;
     up=1;
    #4;reset=1;
    j=1;k=1;
    #20;
    reset=0;
    #4reset=1;up=1;
    #30;
    $finish;
  end
  always #2 clk=~clk;
endmodule
    
    
