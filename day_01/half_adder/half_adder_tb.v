module half_adder_tb();
reg a,b;
wire sum,carry;

half_adder inst(.a(a),.b(b),.sum(sum),.carry(carry));

initial begin
$monitor("time=%0t |a=%b |b=%b|sum=%b|carry=%b",$time,a,b,sum,carry);
$dumpfile("half_adder_tb.vcd");
$dumpvars(0,half_adder_tb);
end

initial begin
a=1'b0; b=1'b0;
#5a=1'b0; b=1'b1;
#5a=1'b1; b=1'b0;
#5a=1'b1; b=1'b1;
#5$finish;
end
endmodule
