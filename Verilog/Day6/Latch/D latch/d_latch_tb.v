module d_latch_tb;
  reg en,d;
  wire q;
  
  d_latch uut(.en(en),.d(d),.q(q));
  
  initial begin
    $dumpfile("d_latch_tb.vcd");
    $dumpvars;
  end
    initial begin
      $monitor ("%3t|d=%b|en=%b|q=%b",$time,d,en,q);
      
      en=0;d=0;#10;
      en=1;d=1;#10;
      en=0;d=0;#10;
      en=0;d=0;#10;
      en=1;d=1;#10;
      #5 $finish;
    end
endmodule
