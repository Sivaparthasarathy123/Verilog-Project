//Demonstrate a race condition using two always blocks assigning to the same variable.

module race_condition;

  reg clk;
  reg q;

  initial begin
    clk = 0;
    forever #5 clk = ~clk;  
  end

  initial begin
    q = 0;
    $display("Time = %0t | Initial: q = %0b", q);
    #50 $finish;
  end

  always @(posedge clk)
    q = 1;   

  always @(posedge clk)
    q = 0; 

  always @(negedge clk)
    $display("Time=%0t | q=%0b", $time, q);

endmodule

