//Simulate two flip-flops exchanging values with blocking and non-blocking assignments.

module flipflop_exchange;

  reg clk;
  reg a, b;

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Initialize
  initial begin
    a = 1;
    b = 0;
    $display("Initial: Time=%0t | a=%b b=%b", $time, a, b);
    #50 $finish;
  end

  /*
  always @(posedge clk) begin
    a = b;
    b = a;
    $display("Blocking: Time=%0t | a=%b b=%b", $time, a, b);
  end
  */

  always @(posedge clk) begin
    a <= b;
    b <= a;
    $display("Non-blocking: Time=%0t | a=%b b=%b", $time, a, b);
  end

endmodule

