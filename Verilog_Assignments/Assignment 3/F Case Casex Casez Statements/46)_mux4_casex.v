// Modify the design to use casex to ignore undefined (x) bits.

module mux4_casex(
  input [3:0] a,
  input [1:0] sel,
  output reg y);

  always@(*)begin
    casex(sel)
      2'b0x: y = a[0];   
      2'b10: y = a[2];
      2'b11: y = a[3];
      default: y = 1'b0;
    endcase
  end
endmodule

