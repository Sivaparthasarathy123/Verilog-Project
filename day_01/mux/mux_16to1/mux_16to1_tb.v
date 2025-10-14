module mux_16to1_tb();
     reg [15:0]a;
     reg [3:0]s;
     wire y;
     integer i;
     mux_16to1 inst(a,s,y);
     initial begin
     $monitor("time=%0t|a=%b|s=%b|y=%b",$time,a,s,y);
     $dumpfile("mux_16to1.vcd");
     $dumpvars;
     a=16'b0011110011110101;
     for(i=0;i<16;i++)begin
     s=i;
     #5;
     end
     $finish;
   end
endmodule
