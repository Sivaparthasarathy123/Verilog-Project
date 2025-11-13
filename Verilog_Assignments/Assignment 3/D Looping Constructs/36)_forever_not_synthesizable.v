// why forever loops are not synthesizable and how to work around them.

module forever_not_synthesizable;
        reg clk,rst;

   initial clk = 0;
   forever #5 clk = ~clk; //not synthesizable because it done infinitely.
    
   always@(posedge clk)begin // synthesizable only with event.
      if(rst)
        clk = 0;
      else
        clk = ~clk;
   $display("clk = %0b",clk);
   end
   endmodule     

        
      
