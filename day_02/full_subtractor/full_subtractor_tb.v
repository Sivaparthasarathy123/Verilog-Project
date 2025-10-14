module full_subtractor_tb();

  integer i;
  reg a,b,bin;
  wire d,bout;

  full_subtractor inst(.a(a),.b(b),.bin(bin),.d(d),.bout(bout));

  initial begin
    $dumpfile("full_subtractor.vcd");
    $dumpvars;
  end
  
  initial begin
    $display("time\ta\tb\tbin\t|\td\tbout");

    for(i=0; i<8; i=i+1)begin
       {a,b,bin} = i;
       #5;
       $display("%0t\t%b\t%b\t%b\t|\t%b\t%b",$time,a,b,bin,d,bout);
  end
  $finish;
  end
endmodule
