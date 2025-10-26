module SISO(
    input clk,rst,sin,
    output reg[3:0]q);

    always@(posedge clk)begin
      if(rst==0)
          q <= 4'b0000;
      else
          q <= {q[3:0],sin};
    end
    endmodule

module d_ff(
    input clk,rst,d,
    output reg q);

    always@(posedge clk)begin
       if(rst==0)
           q <= 0;
       else
           q <= d;
   end
endmodule
