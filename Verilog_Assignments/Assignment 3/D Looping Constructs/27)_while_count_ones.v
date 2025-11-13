//While loop to count number of 1s in a 4-bit vector

module while_count_1s;
  reg [3:0] data;
  integer count, i;

  initial begin
    data = 4'b1101; 
    count = 0;
    i = 0;
    while(i < 4)begin
      if(data[i]) 
       count = count + 1;
       i = i + 1;
    end
    $display("data=%b | number of 1s=%0d", data, count);
  end
endmodule

