// Explain the three-step process of non-blocking execution: Read, Evaluate, Schedule.

module three_step_process;

  reg clk;
  reg a,b;

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    a = 0;b = 1;
    $display("Time = %0t | Initial: a = %b, b = %b",$time, a,b);
    #50 $finish;
  end

  always@(posedge clk)begin

    a <= b;
    b <= a;
  end

  always@(negedge clk)
    $display("Time=%0t | a=%b | b = %b", $time, a,b);

endmodule
