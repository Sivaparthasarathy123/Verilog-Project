module M_and_S_ff_tb();
    reg J;
    reg K;
    reg clk;
    wire Q;
    wire Qbar;

  M_and_S_ff inst(J,K,clk,Q,Qbar);
     
   initial begin
      clk = 0;
      forever #5 clk = ~clk;
   end

   initial begin
	   $monitor("%0t|J=%b|K=%b|clk=%b|Q=%b|Qbar=%b",$time,J,K,clk,Q,Qbar);
	   $dumpfile("M_and_S_ff.vcd");
	   $dumpvars;

	   J=0;K=0;#10;
	   J=1;K=0;#10;
	   J=0;K=1;#10;
	   J=1;K=1;#10;
	   J=1;K=0;#10;
	   J=0;K=0;#10;
	   $finish;
   end
   endmodule
