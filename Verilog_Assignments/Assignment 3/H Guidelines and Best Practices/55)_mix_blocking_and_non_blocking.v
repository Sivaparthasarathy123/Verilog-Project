// Create a module that mixes = and <= in the same always block—fix the violation.

/*module mix_blocking_nonblocking;
  reg clk;
  reg [3:0] a, b, c;

  initial clk = 0;
  always #5 clk = ~clk;

  always@(posedge clk)begin
    a = b;      
    c <= a;     
  end
endmodule*/

//fix nonblocking

module fixed_nonblocking;
  reg clk;
  reg [3:0] a, b, c;

  initial clk = 0;
  always #5 clk = ~clk;

  always@(posedge clk)begin
    a <= b;
    c <= a;
  end
endmodule


