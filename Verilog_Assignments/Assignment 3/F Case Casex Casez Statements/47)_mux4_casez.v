// Use casez to implement a pattern-matching decoder.

module decoder_casez(
  input [3:0] code,
  output reg [3:0] out);

  always@(*)begin
    casez(code)
      4'b1???: out = 4'b1000; 
      4'b01??: out = 4'b0100; 
      4'b001?: out = 4'b0010; 
      4'b0001: out = 4'b0001; 
      default: out = 4'b0000;
    endcase
  end
endmodule

