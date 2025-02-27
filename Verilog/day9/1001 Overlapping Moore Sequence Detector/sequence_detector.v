module sequence_detector(
  input clk,reset,x,
  output reg z
);
  parameter A = 4'h1;
  parameter B = 4'h2;
  parameter C = 4'h3;
  parameter D = 4'h4;
  parameter E = 4'h5;//extra state because it is moore sequence 
  
  reg[3:0]state,next_state;
  always@(posedge clk or negedge reset)begin
    if(reset)begin
      state<=next_state;
    end
    else state<=A;
  end
  
  always@(*)begin
    case(state)
      A:next_state = x?B:A;
      B:next_state = x?B:C;
      C:next_state = x?B:D;
      D:next_state = x?E:A;
      E:next_state = x?B:A;
      default:next_state=A;
    endcase
  end
 always @(*) begin
        case (state)
            E: z = 1;  // Output asserted in state E
            default: z = 0;  // Output is 0 in all other states
        endcase
    end
endmodule
