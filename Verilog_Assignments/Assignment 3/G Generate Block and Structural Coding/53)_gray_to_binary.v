//Convert Gray code to Binary using generate loop structure.

module gray_to_binary(
  input  [3:0] gray,
  output [3:0] binary);
  genvar i;
  generate
    for (i=3; i>=0; i=i-1) begin : gray_loop
      if (i == 3)
        assign binary[i] = gray[i];  
      else
        assign binary[i] = binary[i+1] ^ gray[i];
    end
  endgenerate
endmodule

//testbench

module gray_to_binary_tb;
  reg [3:0] gray;
  wire [3:0] binary;

  gray_to_binary inst (gray, binary);

  initial begin
    gray = 4'b1101; #5;
    $display("Gray = %b → Binary = %b", gray, binary);
    gray = 4'b0101; #5;
    $display("Gray = %b → Binary = %b", gray, binary);
  end
endmodule

