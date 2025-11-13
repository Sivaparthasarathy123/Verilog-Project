//waveform that differentiates for, repeat, and forever behaviors.

module loop_waveform;
  reg clk1, clk2, clk3;
  integer i;

  initial begin
    clk1 = 0;
    repeat(5) #5 clk1 = ~clk1; 
  end

  initial begin
    clk2 = 0;
    for(i=0;i<5;i++)
      #5 clk2 = ~clk2;
  end

  initial begin
    clk3 = 0;
    forever #5 clk3 = ~clk3; 
  end

  initial begin
    $dumpfile("loops.vcd");
    $dumpvars;
    #60 $finish;
  end
endmodule


