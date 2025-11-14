//Write a testbench that verifies if logic using multiple input patterns.

module priority_selector_tb;
  reg a, b, c;
  wire y;
  
  priority_selector inst (a,b,c,y);

  initial begin
    $monitor("Time=%0t | a=%b | b=%b | c=%b | y=%b", $time, a, b, c, y);
  end

  initial begin
    {a,b,c} = 3'b000; #10;
    {a,b,c} = 3'b100; #10;
    {a,b,c} = 3'b110; #10;
    {a,b,c} = 3'b011; #10;
    {a,b,c} = 3'b001; #10;
    {a,b,c} = 3'b000; #10;
    $finish;
  end
endmodule

