// simple ALU module using only blocking assignments.

module simple_ALU_blocking;

  reg [7:0] A, B;          
  reg [2:0] opcode;        
  reg [7:0] result;        
  reg carry;               

  always @(*) begin
    carry = 0;             
    result = 8'd0;         

    case(opcode)
      3'b000: result = A + B;           // Addition
      3'b001: result = A - B;           // Subtraction
      3'b010: result = A & B;           // AND
      3'b011: result = A | B;           // OR
      3'b100: result = A ^ B;           // XOR
      3'b101: result = ~A;              // NOT 
      3'b110: result = A << 1;          // Logical left shift
      3'b111: result = A >> 1;          // Logical right shift
      default: result = 8'd0;
    endcase

    if(opcode == 3'b000 && (result < A))
      carry = 1;
  end

  initial begin
    A = 8'd10; B = 8'd3;

    opcode = 3'b000; 
       #10 $display("ADD:  A=%0d B=%0d => Result=%0d Carry=%b", A, B, result, carry);
    opcode = 3'b001; 
       #10 $display("SUB:  A=%0d B=%0d => Result=%0d", A, B, result);
    opcode = 3'b010; 
       #10 $display("AND:  A=%0d B=%0d => Result=%0d", A, B, result);
    opcode = 3'b011; 
       #10 $display(" OR:  A=%0d B=%0d => Result=%0d", A, B, result);
    #10 $finish;
  end
endmodule

