module mod10_counter_tb();
    reg clk;
    reg rst;
  wire [15:0]count;

    mod16_counter inst(clk,rst,count);

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
      $monitor("%0t | clk=%b | rst=%b | count=%h", $time, clk, rst, count);
      $dumpfile("mod16_counter.vcd");
      $dumpvars;
        rst = 1;
        #10 rst = 0;
        #160 rst = 1;
        #20 rst = 0;
        #320 $finish;
    end
endmodule
