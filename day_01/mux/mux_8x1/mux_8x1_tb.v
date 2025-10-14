module mux_8x1_tb();
   reg [7:0]a;
   reg [2:0]s;
   wire y;
   mux_8x1 inst(a,s,y);
   integer i;
   initial begin
   $monitor("time=%0t|a=%b|s=%b|y=%b",$time,a,s,y);
   $dumpfile("mux_8x1.vcd");
   $dumpvars;
   a=8'b01010110;
   for(i=0;i<8;i++)begin
     s=i;
     #5;
    end
   end
endmodule

