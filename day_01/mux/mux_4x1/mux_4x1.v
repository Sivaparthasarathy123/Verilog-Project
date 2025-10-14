module mux_4x1 (input a,b,c,d,sel0,sel1, output y);
wire w1,w2,w3,w4,w5,w6;
and (w3,w1,w2,a); // w3 - output,w1&w2 are inverter input
and (w4,w1,sel1,b);//w4 - output,w1 is inverter input
and (w5,sel0,w2,c);//w5 - output,w2 is inverter input
and (w6,sel0,sel1,d);//w6 - output
not (w1,sel0);
not (w2,sel1);
or (y,w3,w4,w5,w6);
endmodule
