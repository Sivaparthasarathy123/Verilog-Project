module T_ff_tb();
    reg T;
    reg clk;
    wire Q;

    T_ff inst(T,clk,Q);
    
    initial begin
      clk = 0;
      forever #5 clk = ~clk;
    end
    
    initial begin
       $monitor("%0t|T=%b|clk=%b|Q=%b",$time,T,clk,Q);
       $dumpfile("T_ff.vcd");
       $dumpvars;
      
      T = 0;
      T = 1;#5;
      T = 0;#5;
      T = 1;#5;
      T = 0;#5;
      T = 1;#5;
      $finish;
      end
endmodule
      
