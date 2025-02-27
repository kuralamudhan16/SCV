module ring_counter  #(parameter WIDTH=4)
  (
	input clk,
	input reset,
  	output reg [WIDTH-1:0] out
  );

  always @ (posedge clk) begin
    if (!reset)
         out <= 1;
      else begin
        out[WIDTH-1] <= out[0];
        for (int i = 0; i < WIDTH-1; i=i+1) begin
          out[i] <= out[i+1];
        end
      end
  end
endmodule
