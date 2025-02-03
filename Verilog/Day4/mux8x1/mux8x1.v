module mux4to1 (
    input [3:0] d,
    input [1:0] s,
    output reg w1
);
    always @(*) begin
        case (s)
            2'b00: w1 = d[0];
            2'b01: w1 = d[1];
            2'b10: w1 = d[2];
            2'b11: w1 = d[3];
            default: w1 = 0;
        endcase
    end
endmodule

module mux4to1a (
    input [7:4] d,
    input [1:0] s,
    output reg w2
);
    always @(*) begin
        case (s)
            2'b00: w2 = d[4];
            2'b01: w2 = d[5];
            2'b10: w2 = d[6];
            2'b11: w2 = d[7];
            default: w2 = 0;
        endcase
    end
endmodule

module mux2to1 (
    input w1, w2,
    input s,
    output reg y
);
    always @(*) begin
        case (s)
            1'b0: y = w1;
            1'b1: y = w2;
            default: y = 0;
        endcase
    end
endmodule
