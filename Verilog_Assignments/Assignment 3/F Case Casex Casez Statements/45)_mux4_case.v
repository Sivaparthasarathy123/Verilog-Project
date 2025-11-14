//Implement a 4:1 mux using case statement.

module mux4_case(
  input [3:0] a,
  input [1:0] sel,
  output reg y);

  always@(*)begin
    case(sel)
      2'b00: y = a[0];
      2'b01: y = a[1];
      2'b10: y = a[2];
      2'b11: y = a[3];
      default: y = 1'bx;  
    endcase
  end
endmodule

