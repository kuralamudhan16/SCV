module decade_counter_tb;
    reg clk,rst;
    wire [3:0]q;
    
    decade_counter #(.N(4)) dut(q,clk,rst);
    
    initial begin
      $dumfile("decade_counter_tb.vcd");
      $dumpvars(0);
        rst = 1;
        clk = 0;
        #20 rst = 0;
        #500 $finish();
    end
    always #10 clk = ~clk;
    
endmodule
