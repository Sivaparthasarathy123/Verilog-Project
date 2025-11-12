//clock generator using initial and forever loop

module clock_generation;

      reg clk;

      initial begin 
       clk = 0;
       forever  
        #5 clk = ~clk;
       // $display("Time=%0t | clk generated =%b ",$time,clk);
	//if($time>=60) 
	
	//#60$finish;
     
     //$finish;
     end
     initial begin 
	     $monitor("Time=%0t | clk=%b",$time,clk);
	     #60$finish;
     end
 

endmodule
