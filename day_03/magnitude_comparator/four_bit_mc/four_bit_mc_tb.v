module four_bit_mc_tb();
   reg [3:0]A;
   reg [3:0]B;
   wire greater_than;
   wire equal;
   wire less_than;
   integer i,j;
   four_bit_mc inst(A,B,greater_than,equal,less_than);
    initial begin
    $monitor("time=%0t|A=%b|B=%b|greater_than=%b|equal=%b|less_than=%b",$time,A,B,greater_than,equal,less_than);
    $dumpfile("four_bit_mc.vcd");
    $dumpvars;
    for(i=0;i<8;i++)begin
       for(j=0;j<8;j++)begin
        A=i;
	B=j;
       #5;
      end
     end
   $finish;
  end
endmodule
