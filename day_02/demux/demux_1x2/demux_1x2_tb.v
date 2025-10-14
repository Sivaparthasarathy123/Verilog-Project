module demux_1x2_tb();
  reg a,sel;
  wire y0,y1;
demux_1x2 inst(a,sel,y0,y1);
  initial begin
  $monitor("time=%0t| a=%b|sel=%b|y0=%b|y1=%b",$time,a,sel,y0,y1);
  $dumpfile("demux1x2.vcd");
  $dumpvars;
  a=0; sel=0;#5;
  a=0; sel=1;#5;
  a=1; sel=0;#5;
  a=1; sel=1;#5;
  $finish;
  end
endmodule
 
  
