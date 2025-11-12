//Write a code where incorrect usage of blocking assignment causes simulation mismatch.

module non_blocking_concurrent;

  reg clk;
  reg [7:0] a, b, c;

  initial begin
    clk = 0;
    forever #5 clk = ~clk;   
  end

  initial begin
    a = 6;
    b = 1;
    c = 7;
    $display("Initial: a=%0d, b=%0d, c=%0d", a, b, c);
    #50 $finish;
  end

  always @(posedge clk) begin
    a = b;   
    b = c;   
    c = a;  
    $display("Time=%0t | Mismatch values -> a=%0d b=%0d c=%0d", $time, a, b, c);
  end

endmodule


