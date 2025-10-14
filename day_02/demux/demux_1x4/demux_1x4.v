module demux_1x4 (
   input a,
   input [1:0] s,
   output y0,y1,y2,y3);
   
   assign y0 = (~s[1] & ~s[0]) & a;
   assign y1 = (~s[1] &  s[0]) & a; 
   assign y2 = ( s[1] & ~s[0]) & a;
   assign y3 = ( s[1] &  s[0]) & a;
endmodule
