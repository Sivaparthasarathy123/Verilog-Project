module up_down_counter(
  input clk,
  input rst,
  input up_down,
  output reg [3:0]count);

  reg [3:0]temp;
  //Flip Flop 0
  always@(posedge clk)begin
    if(rst)
      temp[0] <= 0;
    else
      temp[0] <= ~temp[0];
  end
  //Flip Flop 1
  always@(posedge (up_down ? temp[0] :~temp[0])begin
    if(rst)
      temp[1] <= 0;
    else
      temp[1] <= ~temp[1];
  end
  //Flip Flop 2
 always@(posedge (up_down ? temp[1] : ~temp[1])begin
    if(rst)
      temp[2] <= 0;
   else
     temp[2] <= ~temp[2];
  end
  //Flip Flop 3
always@(posedge (up_down ? temp[2] : ~temp[2])begin
  if(rst)
    temp[3] <= 0;
  else
    temp[3] <= ~temp[3];
end

always@(*)begin 
  count = temp;
end
endmodule
