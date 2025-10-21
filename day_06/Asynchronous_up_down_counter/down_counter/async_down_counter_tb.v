module async_down_counter_tb();
    reg clk;
    reg rst;
    wire [3:0]q;

  async_down_counter inst(clk,rst,q);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
   initial begin
       $monitor("%0t|clk=%b|rst=%b|q=%b",$time,clk,rst,q);
       $dumpfile("async_down.vcd");
     $dumpvars(0,async_down_counter_tb);
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
