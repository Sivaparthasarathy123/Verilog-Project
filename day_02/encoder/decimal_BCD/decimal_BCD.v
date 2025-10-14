module decimal_BCD (
    input [9:0] a,
    output [3:0] y);
  
    assign y[3] = (a[9] | a[8]);
    assign y[2] = (a[7] | a[6] | a[5] | a[4]);
    assign y[1] = (a[7] | a[5] | a[3] | a[2]);
    assign y[0] = (a[9] | a[7] | a[5] | a[3] | a[1]);
endmodule


