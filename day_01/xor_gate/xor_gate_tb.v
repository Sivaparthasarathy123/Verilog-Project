module xor_gate_tb();
reg a,b;
wire y;

xor_gate inst(.a(a),.b(b),.y(y));

initial begin
a=1'b0; b=1'b0;
#10a=1'b0; b=1'b1;
#10a=1'b1; b=1'b0;
#10a=1'b1; b=1'b1;
#10$finish;
end

initial begin
$monitor ("time=%0t,|a=%b,|b=%b,|y=%b",$time,a,b,y);
$dumpfile("xor_gate_tb.vcd");
$dumpvars;
end

endmodule
