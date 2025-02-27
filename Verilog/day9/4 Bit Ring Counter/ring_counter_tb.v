module ring_counter_tb;
  parameter WIDTH = 4;

  reg clk;
  reg reset;
  wire [WIDTH-1:0] out;

  ring_counter 	utt (.clk (clk),
                .reset (reset),
                .out (out));

  always #2 clk = ~clk;

  initial begin
    {clk, reset} <= 0;
    $dumpfile("ring_counter_tb.vcd");
    $dumpvars(0);
    repeat (2) @(posedge clk);
    reset <= 1;
    repeat (15) @(posedge clk);
    $finish;
  end
  initial     $monitor ("clk=%0b  reset=%0b  out=%0b",clk,reset,out);

endmodule
