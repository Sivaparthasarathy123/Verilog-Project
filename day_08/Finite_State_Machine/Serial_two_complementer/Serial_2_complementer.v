`timescale 1ns/1ps

module Serial_2_complementer(
   input clk, reset,
   input x,
   output reg q
);

parameter A=1'b0, B=1'b1;
wire state;        
reg next_state;


DFF inst(.clk(clk), .reset(reset), .D(next_state), .Q(state));


always @(*) begin
   case(state)
     A: begin
         if (x == 1'b0) begin
            next_state = A;
            q = 1'b0;
         end else begin
            next_state = B;
            q = 1'b1;
         end
       end

     B: begin
         next_state = B;  
         q = ~x;          
       end
   endcase
end

endmodule



module DFF(
    input clk, reset,
    input D,
    output reg Q
);
always@(posedge clk)begin
     if (reset)
        Q <= 1'b0;  
     else
        Q <= D;
end
endmodule

