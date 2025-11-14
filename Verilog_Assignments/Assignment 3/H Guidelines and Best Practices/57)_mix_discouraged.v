//Explain why mixing blocking and non-blocking in the same block is discouraged— illustrate.

module mix_discouraged;
  reg clk;
  reg [3:0] a, b, c;

  initial clk = 0;
  always #5 clk = ~clk;

  always @(posedge clk) begin
    a = b;     
    c <= a;     // In this state c denotes the previous value of a. it makes unpredictable so it is discouraged. 
  end
endmodule

