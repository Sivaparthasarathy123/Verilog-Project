module encoder_8x3 (
  input [7:0] a,
  output[2:0] y);
 
  assign y[2] = (a[7]|a[6]|a[5]|a[4]);
  assign y[1] = (a[7]|a[6]|a[3]|a[2]);
  assign y[0] = (a[7]|a[5]|a[3]|a[1]);
endmodule
