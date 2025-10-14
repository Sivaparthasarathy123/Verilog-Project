module ripple_borrow_subtractor_tb();
  reg A;
  reg B;
  reg Bin
  wire Bw;
  wire Bout;
  integer i,j;
  ripple_borrow_subtractor inst(A,B,Bin,Bw,Bout);
  initial begin
    $monitor("time=%0t|A=%b|B=%b|Bin=%b|Bw=%b|Bout",$time,A,B,Bin,Bw,Bout);
    $dumpfile("RBS.vcd");
    $dumpvars;
    for(i=0;i<8;i++)begin
      for(j=0;j<8;j++)begin
        A=i;B=j;Bin=0;
        #5;
      end
    end
  end
endmodule
    
