// Modify the above to use non-blocking assignments and compare the outputs.

module non_blocking_assignments;

       reg [7:0] a, b;
       reg [7:0] sum,diff;
       
initial begin
     a = 7;
     b = 8;
     sum = 0;
     diff = 0;
end

always begin
     #10 sum <= a + b;
     #10 diff <= a - b;
      $display("Time=%0t | assigned values -> sum=%0d | diff=%0d",$time,sum,diff);
     #10$finish;
end
endmodule
