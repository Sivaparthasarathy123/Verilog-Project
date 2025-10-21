// 4-bit Asynchronous Down Counter
module async_down_counter(
    input clk,        
    input rst,       
    output [3:0]q);

  T_ff t0 (.clk(clk),  .rst(rst), .q(q[0]));
  T_ff t1 (.clk(~q[0]), .rst(rst), .q(q[1]));
  T_ff t2 (.clk(~q[1]), .rst(rst), .q(q[2]));
  T_ff t3 (.clk(~q[2]), .rst(rst), .q(q[3]));
endmodule

module T_ff(
    input clk,
    input rst,
    output reg q);
    always@(posedge clk)begin
        if (rst)
            q <= 0;
        else
            q <= ~q;   
    end
endmodule
