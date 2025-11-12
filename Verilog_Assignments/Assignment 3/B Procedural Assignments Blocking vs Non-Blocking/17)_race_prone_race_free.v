// Modify a race-prone code using = into a race-free one using <=.

module race_prone_race_free;

  reg clk;
  reg [3:0] a, b, c;

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    a = 1; 
    b = 2; 
    c = 0;
    $display("Initial: a=%0d b=%0d c=%0d", a, b, c);
    #50 $finish;
  end

  //race prone
  always begin
      #10 a = b;    
       $display("Time=%0t | a = %d ",$time,a);
  end

  always begin
      #10 c = a;
      $display("Time=%0t | race prone c = %d ",$time,c);    
  end

  //race free
  always begin
      #10 a <= b;
      $display("Time=%0t | a = %d ",$time,a);
  end   

  always begin
      #10 c <= a;
      $display("Time=%0t | race free c = %d ",$time,c);
  end

endmodule

