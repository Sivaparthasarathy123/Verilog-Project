//Counter using repeat loop for 8 clock cycles.

module repeat_counter;
  integer count;

  initial begin
    count = 0;
    repeat(8)begin
      #5 count = count + 1;
      $display("Time=%0t | Count=%0d", $time, count);
    end
    $finish;
  end
endmodule

