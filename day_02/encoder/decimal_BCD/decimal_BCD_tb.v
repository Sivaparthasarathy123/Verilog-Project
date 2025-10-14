module decimal_BCD_tb();
	integer i;
	reg [9:0] a;
	wire [3:0] y;

	decimal_BCD inst(.a(a),.y(y));
        initial begin
	$monitor("time=%0t| a=%b |y=%b",$time,a,y);
	$dumpfile("decimal_BCD.vcd");
	$dumpvars;
	end

	initial begin
	a=10'b000000000;#5;
	a=10'b000000001;
	for(i=1; i<10; i++)begin
        a = a << 1;
        #5;
        end
end
endmodule
