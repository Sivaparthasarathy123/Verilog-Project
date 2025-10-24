module johnson_counter_tb();
     reg clk;
     reg rst;
     wire [3:0]count;
  
     johnson_counter inst(clk,rst,count);

     always #5 clk = ~clk;
        
     initial begin
        $monitor("%0t|clk=%b|rst=%b|count=%b",$time,clk,rst,count);
	$dumpfile("j_counter.vcd");
	$dumpvars;
        clk = 0;
        rst = 1;

        #10 rst = 0;
        
        #160 $finish;
     end
endmodule
	
