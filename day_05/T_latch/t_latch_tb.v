module t_latch_tb();
  reg T;
  reg E;
  wire Q;
  wire Qbar;

  t_latch inst(T,E,Q,Qbar);
  initial begin
    $monitor("%0t|T=%b|E=%b|Q=%b|Qbar=%b",$time,T,E,Q,Qbar);
    $dumpfile("t_latch.vcd");
    $dumpvars;

  E=0;T=0;#5;
  E=1;T=0;#5;
  E=1;T=1;#5;
  E=0;D=1'bx;#5;
    $finish;
  end
endmodule
