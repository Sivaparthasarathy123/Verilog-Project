module or_gate_tb();
reg a,b;
wire y;
or_gate inst(.a(a),.b(b),.y(y));
initial begin
a=1'b0; b=1'b0;
#10 a=1'b0; b=1'b1;
#10 a=1'b1; b=1'b0;
#10 a=1'b1; b=1'b1;

end

initial begin
$monitor (" a=%b| b=%b| y=%b",a,b,y);
$dumpfile("or_gate_tb.vcd");
$dumpvars;
end
endmodule
