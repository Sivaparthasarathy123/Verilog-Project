module ring_counter_tb();
        reg clk;
	reg rst;
	wire [3:0]count;
     
   ring_counter inst(clk,rst,count);
  
        always #5 clk = ~clk;
    
      initial begin
        $monitor("%0t|clk=%b|rst=%b|count=%b",$time,clk,rst,count);
        $dumpfile("ring_counter.vcd");
	$dumpvars;
        clk = 0;
	#10 rst = 1;
        
        #10 rst = 0;
        
        #200 $finish;
        end
endmodule
