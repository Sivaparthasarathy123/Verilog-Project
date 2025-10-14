module ripple_borrow_subtractor_tb();
  reg [3:0]a;
  reg [3:0]b;
  reg bin;
  wire [3:0]d;
  wire bout;
  integer i,j;
  ripple_borrow_subtractor_4bit inst(.a(a),.b(b),.bin(bin),.d(d),.bout(bout));
  initial begin
    $monitor("time=%0t|A=%b|B=%b|Bin=%b|D=%b|Bout",$time,a,b,bin,d,bout);
    $dumpfile("RBS.vcd");
    $dumpvars;
    for(i=0;i<16;i++)begin
      for(j=0;j<16;j++)begin
        a=i;b=j;bin=1;
        #5;
      end
    end
    $finish;
  end
endmodule
