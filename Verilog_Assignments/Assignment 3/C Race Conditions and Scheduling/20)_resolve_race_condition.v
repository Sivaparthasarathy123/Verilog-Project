// Show how race condition is resolved using non-blocking assignments.

module resolve_race_condition;

  reg clk;
  reg q;

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    q = 0;
    $display("Time = %0t | Initial: q = %0b",$time, q);
    #50 $finish;
  end

  always@(posedge clk)begin
    q <= 1;
    q <= 0;
  end

  always@(negedge clk)
    $display("Time=%0t | q=%0b", $time, q);

endmodule
