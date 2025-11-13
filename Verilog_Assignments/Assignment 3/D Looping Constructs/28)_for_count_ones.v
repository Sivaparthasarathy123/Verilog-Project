//For loop to count number of 1s same logic

module for_count_ones;
  reg [3:0] data;
  integer count, i;

  initial begin
    data = 4'b1101; 
    count = 0;
    for(i=0;i<4;i++)begin
      if(data[i]) 
        count = count + 1;
        i = i + 1;
    end
    $display("data=%b | Number of 1s=%0d", data, count);
  end
endmodule

