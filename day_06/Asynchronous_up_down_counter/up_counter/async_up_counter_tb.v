module async_up_counter_tb();
    reg clk;
    reg rst;
    wire [3:0]up_q;

    async_up_counter inst(.clk(clk),.rst(rst),.q(up_q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
   initial begin
     $monitor("%0t|clk=%b|rst=%b|up=%b",$time,clk,rst,up_q);
     $dumpfile("async_up.vcd");
     $dumpvars(0,async_up_counter_tb);
    end
    initial begin
        rst = 1;
        #10;           
        rst = 0;      
        #100;
        
        rst = 1;
        #10;
        rst = 0;
        #100;
        $finish;
    end
endmodule
