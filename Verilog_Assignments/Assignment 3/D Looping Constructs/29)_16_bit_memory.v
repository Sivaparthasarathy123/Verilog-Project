//16 bit memory with repeat loop

module memory_16bit_repeat;
  reg [7:0] mem [0:15];
  integer i;

  initial begin
    i = 0;
    repeat(16)begin
      mem[i] = i; 
      $display("mem[%0d] = %0d", i, mem[i]);
      i = i + 1;
    end
  end
endmodule

