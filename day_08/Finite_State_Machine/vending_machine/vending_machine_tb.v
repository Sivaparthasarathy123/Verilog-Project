module vending_machine_tb();
     reg clk,rst;
     reg [1:0]x;
     wire q;

  vending_machine inst(clk,rst,x,q);
    
     initial clk = 0;
     always #5 clk = ~clk;

   initial begin
       $monitor("%0t|clk=%b|rst=%b|x=%b|q=%b",$time,clk,rst,x,q);
       $dumpfile("vending_machine.vcd");
       $dumpvars;
 
        rst = 1;
        x = 2'b00;

        #10 rst = 0;

        // TEST 1
        #10 x = 2'b01;  
        #10 x = 2'b00;  
        #10 x = 2'b10;  
        #10 x = 2'b00;  

        // TEST 2
        #20 x = 2'b10;  
        #10 x = 2'b00;
        #10 x = 2'b01;  
        #10 x = 2'b00;

        // TEST 3
        #20 x = 2'b01;  
        #10 x = 2'b00;
        #10 x = 2'b01;  
        #10 x = 2'b00;
        #10 x = 2'b01;  
        #10 x = 2'b00;

        // TEST 4
        #20 x = 2'b10;  
        #10 x = 2'b00;
        #10 x = 2'b10;  
        #10 x = 2'b00;

        // TEST 5
        #20 x = 2'b00;

        #50 $finish;
    end
endmodule
