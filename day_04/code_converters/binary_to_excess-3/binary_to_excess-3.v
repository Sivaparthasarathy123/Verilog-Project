module binary_to_excess_3(
     input [3:0]b,
     output reg [3:0]x);
 
     always@(*)begin
        x = b + 4'd3;
      end
   endmodule
