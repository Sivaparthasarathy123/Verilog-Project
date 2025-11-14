//Use nested if statements to implement an encoder

module encoder_4to2_if;
  reg [3:0] in;      
  reg [1:0] out;     

  initial begin
    $monitor("Time=%0t | Input=%b | Encoded Output=%b", $time, in, out);
  end

  initial begin
        in = 4'b0001;    
    #10 in = 4'b0010; 
    #10 in = 4'b0100;    
    #10 in = 4'b1000;   
    #10 in = 4'b0000; 
    #10 $finish;
  end

  always @(*) begin
    if (in[3])
      out = 2'b11;
    else if (in[2])
      out = 2'b10;
    else if (in[1])
      out = 2'b01;
    else if (in[0])
      out = 2'b00;
    else
      out = 2'bxx; 
  end
endmodule

