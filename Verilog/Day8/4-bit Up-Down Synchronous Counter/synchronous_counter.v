module synchronouscounter# (PARAMETER=4)(
  input clk,reset,
  input up,
  output reg [3:0] count);
  
  always@(posedge clk)begin
    if(!reset)begin
      count<=4'h0;
    end
    else begin
      if(up)count<=count+1'b1;
    else count<=count-1'b1;
  end
  end
endmodule
