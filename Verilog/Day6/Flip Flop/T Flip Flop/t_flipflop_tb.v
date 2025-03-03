module t_flipflop_tb;
  reg clk,reset_n;
  reg t;
  wire q,qbar;
  
  t_flipflop uut(.t(t),.clk(clk),.reset_n(reset_n),.q(q),.qbar(qbar));
  
  always#2 clk=~clk;
  initial begin
    $dumpfile("t_flipflop_tb.vcd");
    $dumpvars(0);
              $monitor("%5t|t=%b|clk=%b|reset_n=%b|q=%b|qbar=%b|",$time,t,clk,reset_n,q,qbar);
              end
              initial begin
                clk=0;reset_n=0;
                #3 reset_n=1;
                drive(0);
                drive(1);
                drive(1);
                drive(1);
                drive(0);
                #5 $finish;
              end
              
              task drive(ip);
                @(posedge clk);
                t=ip;
              endtask 
              endmodule
                
                
                
