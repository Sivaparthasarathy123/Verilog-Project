// 4-bit Asynchronous UP Counter
module async_up_counter(
    input clk,        
    input rst,       
    output reg[3:0]q);
    /*always@(posedge clk)begin
            if(rst)
                    q=4'b0000;
            else
                    q = q + 1;
    end*/

    T_ff t0 (.clk(clk),  .rst(rst), .q(q[0]));
    T_ff t1 (.clk(q[0]), .rst(rst), .q(q[1]));
    T_ff t2 (.clk(q[1]), .rst(rst), .q(q[2]));
    T_ff t3 (.clk(q[2]), .rst(rst), .q(q[3]));
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
