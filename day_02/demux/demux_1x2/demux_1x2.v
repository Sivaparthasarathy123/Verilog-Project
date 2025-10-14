module demux_1x2 (input a,sel, output y0,y1);
 assign y0 = (~sel & a);
 assign y1 = (sel & a);
endmodule
 
