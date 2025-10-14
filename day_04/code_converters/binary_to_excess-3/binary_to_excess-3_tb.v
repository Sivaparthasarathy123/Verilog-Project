module binary_to_excess_3_tb();
       reg [3:0]b;
       wire [3:0]x;
       integer i;
       binary_to_excess_3 inst(b,x);
       initial begin
       $monitor("time=%0t|b=%b|x=%b",$time,b,x);
       $dumpfile("binary_to_excess-3.vcd");
       $dumpvars;
       b=4'b0000;
       for(i=0;i<16;i++)begin
        b=i;
        #5;
       end
       end
endmodule
