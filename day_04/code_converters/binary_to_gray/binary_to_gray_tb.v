module binary_to_gray_tb();
      reg [3:0]b;
      wire [3:0]g;
      integer i;
     binary_to_gray inst(b,g);
      initial begin
        $monitor("time-%0t|b=%b|g=%b",$time,b,g);
	$dumpfile("binary_to_gray.vcd");
	$dumpvars;
	b=4'b0000;
        for(i=0;i<16;i++)begin
           b=i;
	   #5;
          end
        end
endmodule
