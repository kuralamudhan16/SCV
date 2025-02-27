module decade_counter #(parameter N = 4)(
    input clk,rst
    output reg [N-1:0]q,
    );
    always @(posedge clk) begin
    if(rst) begin
    q <= 4'b0000;
    end
    else if(q == 4'b1001) begin
            q <= 4'b0000;
    end
     else begin
          q <= q + 1;
      end
    end
endmodule
