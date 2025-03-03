module sr_flipflop_tb;
  reg clk,reset_n;
  reg s,r;
  wire q,qbar;
  
  sr_flipflop uut(.s(s),.r(r),.clk(clk),.reset_n(reset_n),.q(q),.qbar(qbar));
  
  always#2 clk=~clk;
  initial begin
    $dumpfile("sr_flipflop_tb.vcd");
    $dumpvars(0);
    $monitor("%6t|s=%b|r=%b|clk=%b|reset_n=%b|q=%b|qbar=%b|",$time,s,r,clk,reset_n,q,qbar);
              end
              initial begin
                clk=0;reset_n=0;
                #3 reset_n=1;
                drive(2'b00);
                drive(2'b01);
                drive(2'b10);
                drive(2'b11);
                #5 $finish;
              end
              
  task drive([1:0]ip);
                @(posedge clk);
    {s,r}=ip;
              endtask 
              endmodule
                
                
                
