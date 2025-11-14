// Demonstrate conditional logic that checks 3 flags and updates output accordingly.

module three_flags;
  reg [7:0] a, b, result;
  reg carry_flag, zero_flag, overflow_flag;

  initial begin
    a = 8'h7F; b = 8'h01;
    {carry_flag, result} = a + b;
    zero_flag = (result == 0);
    overflow_flag = (a[7] == b[7]) && (result[7] != a[7]);

    $display("a=%h b=%h result=%h | carry=%b zero=%b overflow=%b",
              a, b, result, carry_flag, zero_flag, overflow_flag);
  end
endmodule

