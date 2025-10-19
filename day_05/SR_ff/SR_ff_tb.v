module SR_ff_tb();
    reg S,R;
    reg clk;
    wire Q;
 
    SR_ff inst(S,R,clk,Q);
      
    initial begin  
       clk=0;
       forever #5 clk=~clk;
    end
 
    initial begin
       $monitor("%0t|S=%b|R=%b|clk=%b|Q=%b",$time,S,R,clk,Q);
       $dumpfile("SR_ff.vcd");
       $dumpvars;
       S=0;R=0;#5;
       S=0;R=1;#5;
       S=1;R=0;#5;
       S=1;R=1;#5;
       S=1;R=0;#5;
       S=0;R=1;#5;
       $finish;
       end
 endmodule
