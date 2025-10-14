module demux_1x8(
   input a,
   input [2:0] s,
   output y0,y1,y2,y3,y4,y5,y6,y7);

   assign y0 = (~s[2] & ~s[1] & ~s[0]) & a;
   assign y1 = (~s[2] & ~s[1] &  s[0]) & a;
   assign y2 = (~s[2] &  s[1] & ~s[0]) & a;
   assign y3 = (~s[2] &  s[1] &  s[0]) & a;
   assign y4 = ( s[2] & ~s[1] & ~s[0]) & a;
   assign y5 = ( s[2] & ~s[1] &  s[0]) & a;
   assign y6 = ( s[2] &  s[1] & ~s[0]) & a;
   assign y7 = ( s[2] &  s[1] &  s[0]) & a;
endmodule
