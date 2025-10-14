module decoder3x8_tb();
	reg [2:0] a;
 	wire [7:0] y;
	integer i;
 decoder3x8 inst(a,y);
	initial begin
	$monitor("time=%0t| a=%b| y=%b",$time,a,y);
	$dumpfile("decoder3x8.vcd");
	$dumpvars;
	a='b000;
	for(i=0; i<8; i++)begin
        a=i;
	#5;
        end

        $finish;
	end
endmodule

















