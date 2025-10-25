module mod8_counter_tb();
    reg clk;
    reg rst;
    wire [2:0]count;

    mod10_counter inst(clk,rst,count);

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
       $monitor("%0t | clk=%b | rst=%b | count=%b", $time, clk, rst, count);
       $dumpfile("mod8_counter.vcd");
       $dumpvars;
        rst = 1;
        #10 rst = 0;
        #200 rst = 1;
        #20 rst = 0;
        #200 $finish;
    end
endmodule
