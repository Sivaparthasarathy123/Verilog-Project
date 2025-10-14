module gray_to_binary_tb();
    reg [3:0]g;
    wire [3:0]b;
    integer i;
    gray_to_binary inst(g,b);
    initial begin
    $monitor("time=%0t|g=%b|b=%b",$time,g,b);
    $dumpfile("gray_to_binary.vcd");
    $dumpvars;
    g=4'b0000;
    for(i=0;i<16;i++)begin
     g=i;
     #5;
    end
   end
endmodule
