module binary_to_7segment_tb();
     reg [3:0]b;
     wire [6:0]s;
     integer i;
     binary_to_7segment inst(b,s);
     initial begin
     $monitor("time=%0t|b=%b|s=%b",$time,b,s);
     $dumpfile("binary_to_7segment.vcd");
     $dumpvars;
     for(i=0;i<10;i++)begin
       b=i;
       #5;
     end
    end
 endmodule
