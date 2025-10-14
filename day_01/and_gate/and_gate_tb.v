module and_gate_tb();
reg a,b;
wire c;
and_gate inst1(.a(a),.b(b),.c(c));
initial begin
a=1'b0; b=1'b0;
#10 a=1'b0; b=1'b1;
#10 a=1'b1; b=1'b0;
#10 a=1'b1; b=1'b1;

end

initial begin
$monitor (" a=%b| b=%b| c=%b",a,b,c);
$dumpfile("and_gate_tb.vcd");
$dumpvars;
end
endmodule
