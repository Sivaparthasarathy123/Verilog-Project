module encoder_4x2(input a,b,c,d, output y0,y1);
  assign y0= b|d;
  assign y1= c|d;
endmodule  
