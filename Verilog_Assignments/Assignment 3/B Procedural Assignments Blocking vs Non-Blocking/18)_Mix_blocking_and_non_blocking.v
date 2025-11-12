// Mix = and <= in one block and explain simulation output.


module mix_blocking_nonblocking;

  reg clk;
  reg [7:0] a, b, c, d;

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    a = 5; b = 10; c = 0; d = 0;
    $display("Initial: a=%0d b=%0d c=%0d d=%0d", a, b, c, d);
    #50 $finish;
  end

  // Mix of blocking (=) and non-blocking (<=)
  always@(posedge clk)begin
    a = b;        
    b = a + 5;   
    c <= a;       
    d <= b;       
    $display("Time=%0t | Inside always: a=%0d b=%0d c=%0d d=%0d",
              $time, a, b, c, d);
  end
  always@(posedge clk) 
    $display("Time=%0t | After update: a=%0d b=%0d c=%0d d=%0d",
              $time, a, b, c, d);

endmodule

