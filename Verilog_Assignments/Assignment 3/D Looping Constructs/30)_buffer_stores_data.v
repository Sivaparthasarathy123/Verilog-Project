//Simulate a buffer that stores data every positive clock edge using repeat.

module buffer_store_repeat;
  reg clk;
  reg [7:0] data_in;
  reg [7:0] buffer [0:7];
  integer i;

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    data_in = 8'd13;
    i = 0;
    repeat(8)@(posedge clk)begin
      buffer[i] = data_in + i;
      $display("Time=%0t | buffer[%0d] = %d", $time, i, buffer[i]);
      i = i + 1;
    end
    $finish;
  end
endmodule

