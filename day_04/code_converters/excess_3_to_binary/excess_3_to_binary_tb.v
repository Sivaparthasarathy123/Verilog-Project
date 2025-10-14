module excess_3_to_binary_tb();
       reg [3:0]x;
       wire [3:0]b;
       integer i;
       excess_3_to_binary inst(x,b);
       initial begin
       $monitor("time=%0t|x=%b|b=%b",$time,x,b);
       $dumpfile("excess_3_to_binary.vcd");
       $dumpvars;
       x=4'b0000;
       for(i=0;i<16;i++)begin
        x=i;
        #5;
       end
       end
endmodule
