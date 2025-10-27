//testbench SIPO

module SIPO_tb();
  parameter N=4;
  reg clk;
  reg rst;
  reg en;
  reg sin;
  wire [N-1:0]q;

  SIPO #(.N(N))inst(clk,rst,en,sin,q);

  initial clk = 0;
  always #5 clk = ~clk;
  initial begin
    $monitor("Time=%0t|clk=%b|rst=%b|en=%b|sin=%b|q=%b",$time,clk,rst,en,sin,q);
    $dumpfile("SIPO.vcd");
    $dumpvars;

    rst = 1;
    sin = 0;
    en=0;
    #10 rst = 0;
    en=1;repeat (50)begin
    #10 sin = $random;
    end


    #33 $finish;
  end
endmodule
