module up_down_counter(
  input clk,
  input rst,
  input up_down,
  output reg [3:0]count);

  reg [3:0]Q;
  reg [3:0]T;

  always@(posedge clk)begin
    T = 4'b0000;
  end
  //Flip Flop 0
  always@(posedge clk)begin
    if(rst)
      Q[0] <= 0;
    else if(T[0])
      Q[0] <= ~Q[0];
  end
  //Flip Flop 1
  always@(posedge (up_down ? Q[0] :~Q[0]))begin
    if(rst)
      Q[1] <= 0;
    else if(T[1])
      Q[1] <= ~Q[1];
  end
  //Flip Flop 2
  always@(posedge (up_down ? Q[1] : ~Q[1]))begin
    if(rst)
      Q[2] <= 0;
    else if(T[2])
     Q[2] <= ~Q[2];
  end
  //Flip Flop 3
  always@(posedge (up_down ? Q[2] : ~Q[2]))begin
   if(rst)
    Q[3] <= 0;
   else if(T[3])
    Q[3] <= ~Q[3];
end

always@(posedge clk)begin 
  count = Q;
end
endmodule
