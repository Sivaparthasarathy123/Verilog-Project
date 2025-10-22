module up_counter_tb();
    reg clk;
    reg reset;
    wire [3:0]count;
  
  up_counter inst(clk,reset,count);
    always #5 clk = ~clk;
  initial begin
    $monitor("%0t|clk=%b|reset=%b|count=%d",$time,clk,reset,count);
    $dumpfile("up_counter.vcd");
    $dumpvars(0,up_counter_tb());
  end
    initial begin
        clk = 0;
        reset =1;
        #10;
        reset = 0;
        #100;
        reset = 1;
        #10;
        $stop;
    end
endmodule
