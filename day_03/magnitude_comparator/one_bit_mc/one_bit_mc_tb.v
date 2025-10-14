module one_bit_mc_tb();
	reg a;
	reg b;
	wire greater_than;
        wire equalto;
	wire less_than;
       one_bit_mc inst(a,b,greater_than,equalto,less_than);
        initial begin
	$monitor("time=%0t|a=%b|b=%b|greater_than=%b|equalto=%b|less_than=%b",$time,a,b,greater_than,equalto,less_than);
        $dumpfile("one_bit_mc.vcd");
	$dumpvars;
	a=0;b=0;#5;
	a=0;b=1;#5;
	a=1;b=0;#5;
	a=1;b=1;#5;
	$finish;	
end
endmodule
