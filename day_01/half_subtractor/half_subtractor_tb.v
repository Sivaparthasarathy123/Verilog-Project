module half_subtractor_tb();
reg a, b;
wire d, b_out;
half_subtractor inst (.a(a), .b(b), .d(d), .b_out(b_out));
initial begin
$monitor("time=%0t | a=%b | b=%b | d=%b | b_out=%b", $time, a, b, d, b_out);
$dumpfile("half_subtractor_tb.vcd");
$dumpvars(0,half_subtractor_tb);
end

initial begin
a = 0; b = 0;
#5 a = 0; b = 1;
#5 a = 1; b = 0;
#5 a = 1; b = 1;
#5 $finish;
end
endmodule
