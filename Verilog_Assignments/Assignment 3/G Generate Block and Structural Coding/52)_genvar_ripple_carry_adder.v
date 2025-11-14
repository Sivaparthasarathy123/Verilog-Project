// Design a 4-bit ripple-carry adder using generate and full_adder module.

module full_adder(
  input a, b, cin,
  output sum, cout);

  assign {cout, sum} = a + b + cin;

endmodule

module ripple_carry_adder_4bit(
  input [3:0] A, B,
  input Cin,
  output [3:0] Sum,
  output Cout);

  wire [3:0] carry;

  genvar i;
  generate
    for(i=0;i<4;i=i+1)begin : adder_4bit
      if (i == 0)
        full_adder FA (A[i], B[i], Cin, Sum[i], carry[i]);
      else
        full_adder FA (A[i], B[i], carry[i-1], Sum[i], carry[i]);
    end
  endgenerate

  assign Cout = carry[3];

endmodule

//testbench

module ripple_carry_adder;
  reg [3:0] A, B;
  reg Cin;
  wire [3:0] Sum;
  wire Cout;

  ripple_carry_adder_4bit inst (A, B, Cin, Sum, Cout);

  initial begin
    A = 4'b0101; B = 4'b0011; Cin = 0;
    #5 $display("A=%b | B=%b | Sum=%b | Cout=%b", A, B, Sum, Cout);
    A = 4'b1111; B = 4'b0001; Cin = 0;
    #5 $display("A=%b | B=%b | Sum=%b | Cout=%b", A, B, Sum, Cout);
  end
endmodule

