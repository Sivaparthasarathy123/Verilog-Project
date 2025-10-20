module ALU_tb();
  reg [15:0]A;
  reg [15:0]B;
  reg [3:0]Sel;
  wire [15:0]ALU_out;
  wire carry_out;
  wire borrow_out;
  wire zero_flag,overflow_flag,negative_flag,carry_flag;

  ALU inst(A,B,Sel,ALU_out,carry_out,borrow_out,zero_flag,overflow_flag,negative_flag,carry_flag);
  initial begin
    $monitor("%0t|A=%b|B=%b|Sel=%b|ALU_out=%b|carry_out=%b|borrow_out=%b|zero_flag=%b|overflow_flag=%b|Negative_flag=%b|carry_flag=%b",$time,A,B,Sel,ALU_out,carry_out,borrow_out,zero_flag,overflow_flag,negative_flag,carry_flag);
    $dumpfile("ALU.vcd");
    $dumpvars;
     A = 16'hFFFA; B = 16'h45AA;
    Sel = 4'b0000;#10;
    Sel = 4'b0001;#10;
    Sel = 4'b1100;#10;
    Sel = 4'b1000;#10;
    Sel = 4'b0100;#10;
    $finish;
  end
endmodule
