module sequence_detector(
  input clk,reset,x,
  output z);
  
  parameter A = 4'h1;
  parameter B = 4'h2;
  parameter C = 4'h3;
  parameter D = 4'h4;
  parameter E = 4'h5;
  
  bit[3:0]state,next_state;
  always@(posedge clk or negedge reset)begin
    if(!reset)begin
      state<=A;
    end
    else state<=next_state;
  end
  
  always@(*)begin
    case(state)
      A:begin
        if(x == 0) next_state = A;
          else     next_state = B;
      end
      
      B:begin
        if(x == 0) next_state = C;
        else       next_state = B;
      end
      
      C:begin
        if(x == 0) next_state = D;
        else       next_state = B;
      end
      
      D:begin
        if(x == 0) next_state = A;
        else       next_state = E;
      end
      E:begin
        if(x == 0) next_state = A;
        else       next_state = A;
      end
      
      default:next_state = A;
    endcase
  end
  assign z = (state == D)&&(x == 0);
endmodule
        
    
  
  
