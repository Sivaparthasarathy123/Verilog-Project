//Demonstrate how non-blocking assignments allow concurrent updates.

module non_blocking_concurrent;

  reg clk;
  reg [7:0] a, b, c;

  initial begin
    clk = 0;
    forever #5 clk = ~clk;   
  end

  initial begin
    a = 5;
    b = 10;
    c = 0;
    $display("Initial: a=%0d, b=%0d, c=%0d", a, b, c);
    #50 $finish;
  end

  always @(posedge clk) begin
    a <= b;   
    b <= c;   
    c <= a;  
    $display("Time=%0t | Inside block -> a=%0d b=%0d c=%0d", $time, a, b, c);
  end

  always @(negedge clk)
    $display("Time=%0t | After update -> a=%0d b=%0d c=%0d", $time, a, b, c);

endmodule

