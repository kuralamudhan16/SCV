module sequence_detector(
  input clk,reset,x,
  output z);
  
  parameter A = 4'h1;
  parameter B = 4'h2;
  parameter C = 4'h3;
  parameter D = 4'h4;
  
  bit[3:0]state,next_state;
  always@(posedge clk or negedge reset)begin
    if(!reset)begin
      state<=A;
    end
    else state<=next_state;
  end
  
  always@(*)begin
    case(state)
     A:next_state=x?B:A;
     B:next_state=x?B:C;
     C:next_state=x?B:D;
     D:next_state=x?B:A;
     default:next_state = A;
    endcase
  end
  assign z = (state == D)&&(x == 0);
endmodule
        
    
  
  
