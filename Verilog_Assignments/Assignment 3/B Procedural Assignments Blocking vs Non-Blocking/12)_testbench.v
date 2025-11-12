//testbench for a blocking-assigned flip-flop—verify its output.

module blocking_assigned_ff;
      reg clk,rst;
      reg d;
      reg q;

   initial clk = 0;
   always begin
      #5 clk =~clk;
      q = d;
      $display("Time=%0t | clk started = %b | d =%b | q = %b ",$time,clk,q,d);
   end
   initial begin
      rst = 1; q = 0;
      #10 rst = 0; d = 0; 
      #10 d = 1;
      $display("Time=%0t | input processed = %b | d =%b | q = %b",$time,clk,q,d);
      #60$finish;
   end
 //  #60$finish;
endmodule
