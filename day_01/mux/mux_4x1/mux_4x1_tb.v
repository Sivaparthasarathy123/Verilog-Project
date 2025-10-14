module mux_4x1_tb();
  reg a,b,c,d,sel0,sel1;
  wire y;

  mux_4x1 inst(.a(a),.b(b),.c(c),.d(d),.sel0(sel0),.sel1(sel1),.y(y));

initial begin
	$monitor("time=%0t| a=%b| b=%b| c=%b| d=%b| sel0=%b| sel1=%b| y=%b",$time,a,b,c,d,sel0,sel1,y);
  $dumpfile("fourmuxtest.vcd");
  $dumpvars;

end

initial begin
  a=1;b=0;c=1;d=0;
  sel0=0;sel1=0;#5;
  sel0=0;sel1=1;#5;
  sel0=1;sel1=0;#5;
  sel0=1;sel1=1;#5;
  $finish;
end

endmodule
