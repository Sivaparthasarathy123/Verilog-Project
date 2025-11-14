//Write a module with multiple always blocks assigning to the same variable—explain why  it's wrong and fix it.

module multiple_always_race;
  reg clk;
  reg q;

  initial clk = 0;
  always #5 clk = ~clk;

  always@(posedge clk)
    q <= 1;

  always@(negedge clk)
    q <= 0;
endmodule

//single always fix
module single_always_fixed;
  reg clk;
  reg q;

  initial clk = 0;
  always #5 clk = ~clk;

  always@(posedge clk)begin
    if(clk)
      q <= 1;
    else
      q <= 0;
  end
endmodule


