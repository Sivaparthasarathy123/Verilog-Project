`timescale 1ns/1ps

module vending_machine(
    input clk,
    input rst,
    input [1:0] x,    
    output reg q);

    parameter [1:0] S0  = 2'b00, 
                    S5  = 2'b01, 
                    S10 = 2'b10, 
                    S11 = 2'b11;
    reg [1:0] state, next_state;

    always @(*) begin
        q = 0; 
        case (state)
          S0: begin
             case (x)
               2'b01: next_state = S5;   
               2'b10: next_state = S10;  
               default: next_state = S0;
             endcase
             end
          S5: begin
             case (x)
               2'b01: next_state = S10;  
               2'b10: begin              
                      next_state = S0;
                       q = 1;                
                      end
                    default: next_state = S5;
             endcase
            end
          S10: begin
              case (x)
                2'b01: begin              
                      next_state = S0;
                      q = 1;              
                      end
                2'b10: begin              
                       next_state = S0;
                       q = 1;                
                       end
                     default: next_state = S10;
              endcase
            end
            default: next_state = S0;

          S11: begin
              case (x)
                2'b10: begin
                      next_state = S0;
                      q = 1;
                      end
                2'b11: begin
                       next_state = S0;
                       q = 1;
                       end
                     default: next_state = S11;
              endcase
            end
            default: next_state = S0;
        endcase
    end

   
    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= S0;
        else
            state <= next_state;
    end

endmodule
 
