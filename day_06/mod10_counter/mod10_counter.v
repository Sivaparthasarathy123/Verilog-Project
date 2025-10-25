module mod10_counter(
    input clk,
    input rst,
    output reg [3:0]count);
   
   initial count = 4'b0000;

always@(posedge clk)begin
    if(rst)
        count <= 4'b0000;
    else if (count == 4'b1001)
        count <= 4'b0000;
    else
        count <= count + 1;
end
endmodule


