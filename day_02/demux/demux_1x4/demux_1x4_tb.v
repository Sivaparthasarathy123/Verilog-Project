module demux_1x4_tb();
  reg a;
  reg [1:0]s;
  wire y0,y1,y2,y3;

 demux_1x4 inst(.a(a),.s(s),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
  
 initial begin
   $monitor("time=%0t | a=%b | s=%b | y0=%b | y1=%b | y2=%b | y3=%b",$time,a,s,y0,y1,y2,y3);
   $dumpfile("demux_1x4.vcd");
   $dumpvars;
   
   a=0; a=1;
   s=2'b00;#5;
   s=2'b01;#5;
   s=2'b10;#5;
   s=2'b11;#5;
   $finish;
end
endmodule
