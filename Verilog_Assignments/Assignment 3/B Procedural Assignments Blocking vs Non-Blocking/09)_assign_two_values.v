//module that uses blocking assignments to assign two values in order.

module assign_two_values;

       reg [7:0] a, b;
       reg [7:0] sum,diff;

initial begin
     a = 7;
     b = 7;
     #10 sum = a + b;
     #10 diff = a - b;
      $display("assigned values -> sum=%0d | diff=%0d",sum,diff);
     #10$finish;
end
endmodule  
