//you use multiple initial blocks in the same module? Demonstrate.

module multiple_initial_blocks;
      reg [1:0]q;

      initial begin
              q = 2'b00;
         $display("Initial block -> 1 = %b",q);
      end
 
      initial begin
              q = 2'b01;
         $display("Initial block -> 2 = %b",q);
      end

      initial begin
              q = 2'b10;
         $display("Initial block -> 3 = %b",q);
      end

      initial begin
              q = 2'b11;
         $display("Initial block -> 4 = %b",q);
      end
endmodule
      
