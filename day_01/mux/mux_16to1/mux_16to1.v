module mux_16to1(
    input [15:0]a,
    input [3:0] s,
    output reg y);
    integer i;
  always@(*)begin
    y=0;
    for(i=0;i<16;i++)begin
    if (s==i)
      y=a[i];
     end
     end
endmodule
     
