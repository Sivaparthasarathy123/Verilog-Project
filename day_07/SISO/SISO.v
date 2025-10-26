module SISO(
    input clk,rst,sin,
    output reg[3:0]q);

    always@(posedge clk)begin
      if(rst==0)begin
          sin <= 1'b1;q <= 4'b0000;
      end
      else begin
          sin <= 1'b1;q <= q + 1;
      end
    end

module d_ff(
    input clk,rst,
    output q);

    always@(posedge clk)begin
       if(rst==0)
           q <= 0;
       else
           q <= q;
    end
endmodule
