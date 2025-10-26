module SISO_tb();
  reg clk;
  reg rst;
  reg sin;
  wire [3:0]q;

  SISO inst(clk,rst,sin,q);

  always #5 clk = ~clk;
  initial begin
    $monitor("%0t|clk=%b|rst=%b|sin=%b|q=%b",$time,clk,rst,sin,q);
    $dumpfile("SISO.vcd");
    $dumpvars;

    clk = 0;
    rst = 0;
    sin = 0;

    #10 rst = 1;

    #10 sin = 1;
    #10 sin = 0;
    #10 sin = 1;
    #10 sin = 0;

    #50 $finish;
  end
endmodule
