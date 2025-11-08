module sequence_1010_overlapping_tb();
    reg clk,rst;
    reg [1:0]x;
    wire q;

  sequence_1010_overlapping inst(clk,rst,x,q);
    
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
      $monitor("%0t|clk=%b|rst=%b|x=%b|q=%b",$time,clk,rst,x,q);
      $dumpfile("1010_overlapping.vcd");
      $dumpvars;

      rst = 1; x=1;
      #10 rst = 0; x=0;

      #10 x=1;
      #10 x=1;
      #10 x=0;
      #10 x=1;
      #10 x=1;
      #10 x=0;
      #10 $finish;
    end
endmodule
