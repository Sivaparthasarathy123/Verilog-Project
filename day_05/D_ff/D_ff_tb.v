module D_ff_tb();
     reg D;
     reg clk;
     wire Q;
  
   D_ff inst(D,clk,Q);
     
initial begin
    $monitor("%0t|D=%b|clk=%b|Q=%b",$time,D,clk,Q);
    $dumpfile("d_ff.vcd");
    $dumpvars; 
    clk = 0;
    forever #5 clk =~clk;
    end
    initial begin
    D=0;#5;
    D=1;#5;
    D=0;#5;
    D=1;#5;
    $finish;
    end
    endmodule
