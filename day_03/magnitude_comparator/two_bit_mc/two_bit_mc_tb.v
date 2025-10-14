module two_bit_mc_tb();
   reg [1:0]A;
   reg [1:0]B;
   wire greater_than;
   wire equal;
   wire lesser_than;
   integer i,j;
   two_bit_mc inst(A,B,greater_than,equal,lesser_than);
    initial begin
    $monitor("time=%0t|A=%b|B=%b|greater_than=%b|equal=%b|lesser_than=%b",$time,A,B,greater_than,equal,lesser_than);
    $dumpfile("two_bit_mc.vcd");
    $dumpvars;
    for(i=0;i<4;i++)begin
       for(j=0;j<4;j++)begin
        A=i;
	B=j;
       #5;
      end
     end
   $finish;
  end
endmodule
