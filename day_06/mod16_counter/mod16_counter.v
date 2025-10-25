module mod10_counter(
    input clk,
    input rst,
  output reg [15:0]count);

   initial count = 16'h0;

always@(posedge clk)begin
    if(rst)
        count <= 16'h0;
  else if (count == 16'hf)
        count <= 16'h0;
    else
        count <= count + 1;
end
endmodule
