module excess_3_to_binary(
     input [3:0]x,
     output reg [3:0]b);
 
     always@(*)begin
        b = x - 4'd3;
      end
   endmodule
