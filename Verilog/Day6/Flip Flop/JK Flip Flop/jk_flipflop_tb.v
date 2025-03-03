module jk_flipflop_tb;
  reg clk,reset_n;
  reg j,k;
  wire q,qbar;
  
  jk_flipflop uut(.j(j),.k(k),.clk(clk),.reset_n(reset_n),.q(q),.qbar(qbar));
  
  always#2 clk=~clk;
  initial begin
    $dumpfile("jk_flipflop_tb.vcd");
    $dumpvars(0);
    $monitor("%6t|j=%b|k=%b|clk=%b|reset_n=%b|q=%b|qbar=%b|",$time,j,k,clk,reset_n,q,qbar);
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
    {j,k}=ip;
              endtask 
              endmodule
                
                
                
