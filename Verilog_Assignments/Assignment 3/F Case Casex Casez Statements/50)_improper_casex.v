//Show how improper use of casex can lead to incorrect matching.

module improper_casex;
  reg [3:0] a;
  reg q;

  initial begin
     $monitor("a = %b | q = %b",a ,q);
  end

  always@(*)begin
    casex(a)
      4'b10xx: q = 1'b1; 
      4'b1x10: q = 1'b0; 
      default: q = 1'b0;
    endcase
  end
endmodule

