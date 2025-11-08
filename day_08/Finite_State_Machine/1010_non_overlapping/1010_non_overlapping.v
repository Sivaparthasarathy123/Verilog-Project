`timescale 1ns/1ps

module sequence_1010_non_overlapping(
      input clk,rst,
      input [1:0]x,
      output reg q);

parameter [1:0] A = 2'b00,
                B = 2'b01,
                C = 2'b10,
                D = 2'b11;
reg [1:0] state,next_state;

always@(*)begin
      case(state)
         A:next_state = x ? B:A;
         B:next_state = x ? C:B;
         C:next_state = x ? D:A;
         D:next_state = x ? A:B;
         default:next_state = A;
      endcase
end

always@(posedge clk)begin
    if(rst)
      state <= A;
    else
      state <= next_state;
end


always@(*)begin
    if (state == D && x == 1'b0)
        q = 1'b1;
    else
        q = 1'b0;
end
endmodule
