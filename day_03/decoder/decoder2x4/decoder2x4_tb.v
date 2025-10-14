module decoder2x4_tb();
	integer i;
	reg [1:0] a;
	wire [3:0] y;
    decoder2x4 inst(a,y);
        initial begin
          $monitor("time=%0t| a=%b| y=%b",$time,a,y);
	  $dumpfile("decoder2x4.vcd");
	  $dumpvars;
       	  a=2'b00; 
	  for(i=0; i<4; i++)begin
          a=i[1:0];
	  #5;
          end
	  $finish;
        end
endmodule
