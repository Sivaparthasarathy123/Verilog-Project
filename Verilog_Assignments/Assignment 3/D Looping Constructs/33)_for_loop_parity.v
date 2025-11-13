// Use for loop to compute parity of an 8-bit signal.

module for_loop_parity;
       
       reg [7:0] a;
       reg parity;
       integer i;

       initial begin
         a = 8'b01010100;
         parity = 0;
         for(i=0;i<8;i++)begin
            parity = parity^a[i];
         $display("a=%0b | parity = %0b",a, parity);
         end
 end
       endmodule 
