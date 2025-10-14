module mux_2x1_tb();
reg a,b,sel;
wire y;

mux_2x1 inst(a,b,sel,y);

initial begin
$monitor("time=%0t |a=%b |b=%b |sel=%b |y=%b",$time,a,b,sel,y);
$dumpfile("muxtest.vcd");
$dumpvars;

end

initial begin 
a=0; b=1; sel=0;
#5a=0; b=1; sel=1;
#5$finish;
end
endmodule


