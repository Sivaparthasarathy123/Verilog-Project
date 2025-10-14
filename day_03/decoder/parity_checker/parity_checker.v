module parity_checker(
  input [15:0]a,
  output reg  even_parity,
  output reg  odd_parity);
  integer i;
  reg parity_value;
  always@(*)begin
    parity_value = 0;
    for(i=0;i<16;i++)
      parity_value = parity_value^a[i];
  if(parity_value ==1'b0)begin
    even_parity = 1;
    odd_parity = 0;
  end
  else begin
     even_parity = 0;
     odd_parity = 1;
  end
  end
endmodule
