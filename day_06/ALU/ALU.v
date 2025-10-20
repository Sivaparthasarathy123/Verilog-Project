module ALU(
  input [15:0]A,
  input [15:0]B,
  input [3:0]Sel,
  output reg [15:0]ALU_out,
  output reg carry_out,
  output reg borrow_out,
  output reg zero_flag,overflow_flag,Negative_flag,carry_flag);

  always@(*)begin
    case(Sel)
      4'b0000: begin 
            {carry_out, ALU_out} = A + B;
            carry_flag = carry_out;
            overflow_flag = (~A[15] & ~B[15] & ALU_out[15]) | (A[15] & B[15] & ~ALU_out[15]);
        end

        4'b0001: begin 
            {Borrow_out, ALU_out} = A - B;
            carry_flag = borrow_out; 
            overflow_flag = (~A[15] & B[15] & ALU_out[15]) | (A[15] & ~B[15] & ~ALU_out[15]);
        end
      4'b0010:ALU_out = A+1;
      4'b0011:ALU_out = A-1;
      4'b0100:ALU_out = A&B;
      4'b0101:ALU_out = A|B;
      4'b0110:ALU_out = A^B;
      4'b0111:ALU_out = ~(A&B);
      4'b1000:ALU_out = ~(A|B);
      4'b1001:ALU_out = ~(A^B);
      4'b1010:ALU_out = (A>B);
      4'b1011:ALU_out = (A<B);
      4'b1100:ALU_out = (A==B);
      default: ALU_out = 16'd0;
    endcase
    zero_flag     = (ALU_out == 16'd0) ? 1'b1 : 1'b0; 
    negative_flag = ALU_out[15]; 
  end
endmodule
        
