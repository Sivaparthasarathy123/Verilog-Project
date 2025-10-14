module not_gate_tb();
    reg a;
    wire b;

    not_gate inst(a,b);
     initial begin
	     $monitor("time=%0t|a=%b|b=%b",$time,a,b);
	     $dumpfile("not_gate.vcd");
	     $dumpvars;
	     a=0;#5
	     a=1;#5
	     $finish;
     end
     endmodule

