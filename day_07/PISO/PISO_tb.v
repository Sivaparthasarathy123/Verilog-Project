//testbench for PISO

module PISO_tb();
    parameter N=4;
    reg clk,rst,load;
    reg [N-1:0]pin;
    wire q;

   PISO #(.N(N)) inst(clk,rst,load,pin,q);
   
   initial clk = 0;
   always #5 clk = ~clk;

   always@(posedge clk)begin
	   $display("Time=%0t|clk=%b|rst=%b|load=%b|pin=%b|q=%b",$time,clk,rst,load,pin,q);
   end
    initial begin
    $dumpfile("PISO.vcd");
    $dumpvars;

    rst = 1; 
    load = 0; 
    pin = 4'b0000;
    #10 rst = 0;

    #10 load = 1; pin = 4'b1010;
    #10 load = 0;

    #60 $finish;
    end
endmodule
