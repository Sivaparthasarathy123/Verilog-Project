// module using forever loop and disable it after a time limit.

module forever_with_disable;
  reg clk;

  initial begin : disable_forever
    clk = 0;
    fork
      forever #5 clk = ~clk;
      #40 disable disable_forever; 
    join
  end

  initial begin
    $monitor("Time=%0t | clk=%b", $time, clk);
  end
endmodule

