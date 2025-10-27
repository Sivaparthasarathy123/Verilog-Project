//testbench PIPO

module PIPO_tb();
   parameter N=4;
   reg clk,rst,en;
   reg [N-1:0]pin;
   wire [N-1:0]q;

   PIPO #(.N(N)) inst(clk,rst,en,pin,q);

   initial clk = 0;
   always #5 clk = ~clk;
 
   initial begin
      $monitor("time=%0t|clk=%b|rst=%b|en=%b|pin=%b|d=%b",$time,clk,rst,en,pin,q);
      $dumpfile("PIPO.vcd");
      $dumpvars;

      rst = 1;
      pin = 0;
      en=0;
      #10 rst = 0;
      en=1;repeat(30)begin
      #10 pin = $random;
      end
      #37 $finish;
      end
      endmodule
      
