//Extend the above to 4:1 mux using nested if…else.


module Mux_2x1;
     reg clk;
     reg [3:0] a;
     reg [1:0]sel;
     reg y;
     
     initial clk = 0;
     always #5 clk = ~clk;

     initial begin
        $monitor("Time=%0t | clk = %b | sel=%b | a = %b | y = %b",$time,clk,sel,a,y);
     end

     initial begin
	 a = 4'b0101;  
         sel = 2'b00;
         #10 sel = 2'b01; 
         #10 sel = 2'b00;
         #10 sel = 2'b10;
         #10 sel = 2'b11; 
         #10 $finish;
     end
     
     always@(posedge clk)begin
        if(sel[0]==0 && sel[1]==0)
            y <= a[0];
        else if(sel[0]==0 && sel[1]==1)
            y <= a[1];
        else if(sel[0]==1 && sel[1]==0)
            y <= a[2];
        else if(sel[0]==1 && sel[1]==1)
            y <= a[3];
     end
     
endmodule 

