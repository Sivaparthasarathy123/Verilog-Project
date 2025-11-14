//Implement a 2:1 multiplexer using if statement.

module Mux_2x1;
     reg clk;
     reg [1:0] a;
     reg sel;
     reg y;
     
     initial clk = 0;
     always #5 clk = ~clk;

     initial begin
        $monitor("Time=%0t | clk = %b | sel=%b | a = %b | y = %b",$time,clk,sel,a,y);
     end

     initial begin
	 a = 2'b10;  
         sel = 0;
         #10 sel = 1; 
         #10 sel = 0; 
         #10 $finish;
     end
     
     always@(posedge clk)begin
        if(sel==0)
            y <= a[0];
        else if(sel==1)
            y <= a[1];
     end
     
endmodule     
