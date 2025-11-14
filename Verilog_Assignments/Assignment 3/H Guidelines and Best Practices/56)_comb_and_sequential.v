// Separate combinational and sequential logic using different blocks with correct assignment  types.


//Combinational logic
module combinational_logic;
  reg clk;
  reg [3:0] a, b, c;

  initial clk = 0;
  always #5 clk = ~clk;

  always@(*)begin
    a = b;      
    c = a;     
  end
endmodule

//Sequential logic

module sequential_logic;
  reg clk;
  reg [3:0] a, b, c;

  initial clk = 0;
  always #5 clk = ~clk;

  always @(posedge clk) begin
    a <= b;
    c <= a;
  end
endmodule

