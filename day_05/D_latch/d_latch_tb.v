module d_latch_tb();
  reg D;
  reg E;
  wire Q;
  wire Qbar;

  d_latch inst(D,E,Q,Qbar);
  initial begin
    $monitor("%0t|D=%b|E=%b|Q=%b|Qbar=%b",$time,D,E,Q,Qbar);
    $dumpfile("d_latch.vcd");
    $dumpvars;

  E=0;D=0;#5;
  E=1;D=0;#5;
  E=1;D=1;#5;
  E=0;D=1;#5;
    $finish;
  end
endmodule
