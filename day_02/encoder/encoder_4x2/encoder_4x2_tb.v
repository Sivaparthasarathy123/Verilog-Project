module encoder_4x2_tb();
  reg a,b,c,d;
  wire y0,y1;
  
  encoder_4x2 inst(a,b,c,d,y0,y1);
  initial begin 
    $monitor("time=%0t| a=%b| b=%b| c=%b| d=%b| y0=%b| y1=%b",$time,d,c,b,a,y0,y1);
    $dumpfile("encoder_4x2.vcd");
    $dumpvars;

    {d,c,b,a}=4'b0001;#5;
    {d,c,b,a}=4'b0010;#5;
    {d,c,b,a}=4'b0100;#5;
    {d,c,b,a}=4'b1000;#5;
    $finish;
 end
endmodule
  
