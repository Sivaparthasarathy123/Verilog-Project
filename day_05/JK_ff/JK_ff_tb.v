module JK_ff_tb();
    reg J;
    reg K;
    reg clk;
    wire Q;

   JK_ff inst(J,K,clk,Q);
   
   initial begin
     clk = 0;
     forever #5 clk =~clk;
   end

   initial begin
     $monitor("%0t|J=%t|K=%t|clk=%t|Q=%t",$time,J,K,clk,Q);
     $dumpfile("JK_ff.vcd");
     $dumpvars;

     J=0;K=0;#5;
     J=0;K=1;#10;
     J=1;K=0;#10;
     J=1;K=1;#10;
     J=0;K=1;#10;
     J=1;K=1;#10;
     J=0;K=0;#10;
     $finish;
     end
endmodule
