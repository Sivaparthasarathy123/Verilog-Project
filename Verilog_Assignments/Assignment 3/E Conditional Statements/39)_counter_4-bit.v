//Design a 4-bit counter with synchronous reset using if…else.

module counter_4bit;
    reg clk;    
    reg reset;        
    reg [3:0]count;

    initial clk = 0;
    always #5 clk = ~clk;

    always@(posedge clk)begin
        if (reset)
            count <= 4'b0000;         
        else
            count <= count + 1'b1;
            $display("counting value = %0b",count); 
    end

    initial begin
	    reset = 1; count = 4'b0000;
	    #10 reset = 0;
	    #60 $finish;
    end
    
endmodule
