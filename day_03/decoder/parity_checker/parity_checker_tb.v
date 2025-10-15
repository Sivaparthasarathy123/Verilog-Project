module parity_checker_tb();
  reg [15:0]a;
  wire even_parity;
  wire odd_parity;
  integer i;
  parity_checker inst(a,even_parity,odd_parity);
  initial begin
    $monitor("time=%0t| a=%b| even_parity=%b| odd_parity=%b",$time,a,even_parity,odd_parity);
    $dumpfile("parity_checker.vcd");
    $dumpvars;
    for(i=0;i<16;i++)begin
      a=$random;
      if($urandom_range(0,1))begin
        a=~a;
        $display("value flipped %0b!",i);
        #10;
      end
    end
    $finish;
  end
endmodule
    

