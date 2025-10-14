module demux_1x8_tb();
  reg a;
  reg [2:0] s;
  wire y0,y1,y2,y3,y4,y5,y6,y7;

 demux_1x8 inst(.a(a),.s(s),.y0(y0),.y1(y1),.y2(y2),.y3(y3),.y4(y4),.y5(y5),.y6(y6),.y7(y7));
   initial begin
     $monitor("time=%0t| a=%b| s=%b| y0=%b| y1=%b| y2=%b| y3=%b| y4=%b| y5=%b| y6=%b| y7=%b",$time,a,s,y0,y1,y2,y3,y4,y5,y6,y7);
     $dumpfile ("demux_1x8.vcd");
     $dumpvars;

     a=0; a=1;
     s=3'b000;#5;
     s=3'b001;#5;
     s=3'b010;#5;
     s=3'b011;#5;
     s=3'b100;#5;
     s=3'b101;#5;
     s=3'b110;#5;
     s=3'b111;#5;
     $finish;
    end
endmodule
