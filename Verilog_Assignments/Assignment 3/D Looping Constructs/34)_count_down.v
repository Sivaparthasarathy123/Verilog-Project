//Count down from 10 to 0 using while loop

module while_countdown;
  integer i;

  initial begin
    i = 10;
    while (i >= 0) begin
      $display("Time=%0t | Count=%0d", $time, i);
      #5 i = i - 1;
    end
  end
endmodule

  
