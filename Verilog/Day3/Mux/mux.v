module mux2to1 (
    input wire a,        
    input wire b,        
    input wire sel,      
    output wire y        
	);

always @(*) begin
        case (sel)
            1'b0: y = w1;
            1'b1: y = w2;
        endcase
    end

endmodule
