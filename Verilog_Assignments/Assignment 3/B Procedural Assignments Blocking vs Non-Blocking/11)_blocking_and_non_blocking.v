// = and <= affect simulation order with examples.

module blocking_and_non_blocking;

       reg [7:0] a, b;
       reg [7:0] sum,diff;

initial begin
     a = 10;
     b = 5;
     #10 sum = a + b;
     #10 diff = a - b;
      $display("Time=%0t | Blocking assigned values -> sum=%0d | diff=%0d",$time,sum,diff);
     #10$finish;
end

always begin
     #10 sum <= a + b;
     #10 diff <= a - b;
      $display("Time=%0t | Non Blocking assigned values -> sum=%0d | diff=%0d",$time,sum,diff);
     #10$finish;
end
endmodule





 
