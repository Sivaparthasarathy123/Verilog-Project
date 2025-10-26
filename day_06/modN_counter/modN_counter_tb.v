module modN_counter_tb();
    reg clk;
    reg rst;
    wire [3:0]count;

    
    modN_counter #(.N(16)) inst(.clk(clk),.rst(rst),.count(count));

    always #5 clk = ~clk;

    initial begin
        $monitor("%0t|clk=%b|rst=%b|count=%b",$time,clk,rst,count);
        $dumpfile("modN_counter.vcd");
        $dumpvars;
        clk = 0;
        rst = 1;

        #10 rst = 0;
        #200 $finish;
    end

endmodule

