module up_down_counter_tb();
  reg clk;
  reg rst;
  reg up_down;
  wire [3:0]count;

  up_down_counter inst(clk,rst,up_down,count);

  always #5 clk=~clk;
  initial begin
    $monitor("%0t|clk=%b|rst=%b|up_down=%b|count=%b",$time,clk,rst,up_down,count);
    $dumpfile("up_down.vcd");
    $dumpvars(0,up_down_counter_tb);
    clk = 0;
    rst = 1;
    up_down = 1;
    #10 rst = 0;
    #100;
    up_down = 0;
    #100;
    rst = 1;
    #10 rst = 0;
    #100;
    $finish;
  end
endmodule
