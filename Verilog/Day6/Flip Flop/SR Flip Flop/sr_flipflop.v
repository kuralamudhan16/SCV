module sr_flipflop(
  input clk,reset_n,
  input s,r,
  output reg q,qbar
);
  
  always@(posedge clk)begin
    if(!reset_n) q<=0;
  else begin
    case({s,r})
      2'b00:q<=q;
      2'b01:q<=0;
      2'b10:q<=1;
      2'b11:q<=1'bx;
    endcase
  end
  end
  assign qbar=~q;
    endmodule
    
