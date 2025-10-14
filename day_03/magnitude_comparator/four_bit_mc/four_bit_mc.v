module four_bit_mc(
   input [3:0]A,
   input [3:0]B,
   output reg greater_than,
   output reg equal,
   output reg less_than);
   always@(*)begin
     greater_than=0;
     equal=0;
     less_than=0;
   if(A>B)
     greater_than = 1;
   else if (A==B)
     equal = 1;
   else if (A<B)
     less_than = 1;
   end
endmodule
     
