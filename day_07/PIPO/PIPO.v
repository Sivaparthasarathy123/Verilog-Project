//Parallel In Serial Out Register

module PIPO #(
     parameter N=4)(
     input clk,rst,en,
     input [N-1:0]pin,
     output reg [N-1:0]q);

     always@(posedge clk)begin
          if(rst)begin
             q <= 1'b0;
          end
          else if(en)begin
	     q <= pin;
          end
  end
     endmodule
         
           
     
