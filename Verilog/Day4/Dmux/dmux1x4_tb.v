module dmux1x4_tb;
  reg [1:0] sel;      
  reg i;               
  wire y0, y1, y2, y3;   
  demux1x4 uut(.sel(sel),.i(i),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
  initial begin
    $dumpfile("dmux1x4_tb.vcd");
	$dumpvars(0);
    $monitor("%6t|sel = %b|i = %b -> y0 = %0b|y1 = %0b|y2 = %0b|y3 = %0b",$time, sel, i, y0, y1, y2, y3); 
    sel=2'b00; i=1; #1;
    sel=2'b01; i=1; #1;
    sel=2'b10; i=1; #1;
    sel=2'b11; i=1; #1;
  end
endmodule
