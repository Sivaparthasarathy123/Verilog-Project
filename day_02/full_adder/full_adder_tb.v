module full_adder_tb();
 integer i;
 reg a,b,cin;
 wire sum,cout;

 full_adder inst(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
 initial begin
	 $dumpfile("full_adder.vcd");
	 $dumpvars;
 end

 initial begin
 $display("time\ta\tb\tcin\t|\tsum\tcout");
  for(i =0; i<8; i=i+1)begin
     {a,b,cin} = i;
     #5;
     $display("%0t\t%b\t%b\t%b\t|\t%b\t%b",$time,a,b,cin,sum,cout);
 end
 $finish;
 end
endmodule
