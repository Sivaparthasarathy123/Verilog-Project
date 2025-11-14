// Simulate a logic block using if-else if-else for priority-based selection.

module priority_selector;
  reg a, b, c;
  reg y;

  initial begin
    $monitor("Time=%0t | a=%b | b=%b | c=%b | y=%b", $time, a, b, c, y);
  end
  
  initial begin
    a=0; b=0; c=0;
    #10 a=1; b=0; c=0;   
    #10 a=1; b=1; c=0;   
    #10 a=0; b=1; c=1;   
    #10 a=0; b=0; c=1;   
    #10 a=0; b=0; c=0;   
    #10 $finish;
  end

  always@(*)begin
    if(a)
      y = 1'b1;    
    else if(b)
      y = 1'b0;          
    else if(c)
      y = 1'b1;           
    else
      y = 1'b0;           
  end
endmodule

