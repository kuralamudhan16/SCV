module synchronouscountertb;
  reg clk,reset;
  reg up;
  wire [3:0] count;
  
synchronouscounter uut(.clk(clk),.reset(reset),.up(up),.count(count));

initial begin
  $dumpfile("synchrnouscountertb.vcd");
  $dumpvars();
  
  clk=0;reset=0;
  up=1;
  #4; reset=1;
  #50;
  reset=0;
  #4;reset=1;up=0;
  #20;
  $finish;
  end
always #2 clk=~clk;
endmodule
  
