//Use a while loop to shift a register left until MSB is 1.

module shift_until_msb;
  reg [7:0] a;

  initial begin
    a = 8'b00101010;
    while (a[7] == 0) begin
      a = a << 1;
      $display("Time=%0t | a=%b", $time, a);
      #5;
    end
    $display("Final Data=%b | MSB=%b", a, a[7]);
  end
endmodule

     
