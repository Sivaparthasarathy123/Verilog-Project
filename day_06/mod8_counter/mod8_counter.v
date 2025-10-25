module mod8_counter(
    input clk,
    input rst,
    output reg [2:0]count);

   initial count = 3'b000;

always@(posedge clk)begin
    if(rst)
        count <= 3'b000;
  else if (count == 3'b111)
        count <= 3'b000;
    else
        count <= count + 1;
end
endmodule
  
