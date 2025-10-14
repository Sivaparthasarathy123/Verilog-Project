module mux_2x1 (input a,b,sel, output y);
wire w1,w2,w3;
and (w2,a,w1);
and (w3,b,sel);
not (w1,sel);
or (y,w2,w3);
endmodule
