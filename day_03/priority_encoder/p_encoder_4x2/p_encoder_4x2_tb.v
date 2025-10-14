module p_encoder_4x2_();
	reg [3:0] a;
	reg en;
	wire [1:0] y;
	p_encoder_4x2 inst(a,en,y);
	initial begin
	$monitor("time=%0t| a=%b| en=%b| y=%b",$time,a,en,y);
	$dumpfile("p_encoder.vcd");
	$dumpvars;
        en=1;a=16;#5;
	en=1;a=8;#5;
	en=1;a=4;#5; 
	en=1;a=2;#5; 
	en=0;a=3;#5;
	end
endmodule  
