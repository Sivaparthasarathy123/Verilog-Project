module down_counter_tb();
    reg clk;
    reg reset;
    wire [3:0]count;
  
  sync_down_counter inst(clk,reset,count);
    always #5 clk = ~clk;
  initial begin
    $monitor("%0t|clk=%b|reset=%b|count=%d",$time,clk,reset,count);
    $dumpfile("down_counter.vcd");
    $dumpvars(0,down_counter_tb());
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
