module parity_generator_9bit_tb();
 reg [8:0] data;
 wire parity_even;
 wire parity_odd;

parity_generator_9bit inst(.data(data),.parity_even(parity_even),.parity_odd(parity_odd));
   initial begin
   $monitor("time=%0t| data=%b| parity_even=%b| parity_odd=%b",$time,data,parity_even,parity_odd);
   $dumpfile("parity_generator.vcd");
   $dumpvars;
   end
   
   initial begin
   data = 9'b010101010;#5;
   data = 9'b010001001;#5;
   data = 9'b011101110;#5;
   data = 9'b000000000;#5;
   data = 9'b111111111;#5;
   $finish;
   end
endmodule

