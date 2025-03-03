module t_flipflop(
  input clk,reset_n,
  input t,
  output reg q,qbar
);
  
  always@(posedge clk)begin
    if(!reset_n) q<=0;
  else begin
    q<=(t?q:q);
  end
  end
  assign qbar=~q;
    endmodule
    
  
