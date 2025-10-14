module encoder_8x3_tb();
         integer i;
	 reg [7:0] a;
  	 wire [2:0] y;
	
	encoder_8x3 inst(.a(a),.y(y));
	initial begin
        $dumpfile("encoder_8x3.vcd");
	$dumpvars;
end
	initial begin
		$monitor("time=%0t| a=%b| y=%b",$time,a,y);
		a=8'b00000001;
		for(i=1; i<8; i++)begin
		a=a<<1;
	        #5;
	       end
	       $finish;
       end
       endmodule


  	
