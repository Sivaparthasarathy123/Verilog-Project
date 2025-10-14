module carry_lookahead_adder(
     input [3:0]a,
     input [3:0]b,
     input cin,
     output reg sum,
     output reg cout);
    
    reg [3:0]p;
    reg [3:0]g;
    reg [4:0]c;
    integer i;
    
    always@(*)begin
       
      c[0] =cin;
      p = a&b;
      g = a^b;
      
    for(i=0;i<16;i++)begin
          c[i+1] = g[i] | (p[i] & c[i]);
       end
 
    for(i=0;i<16;i++)begin
         sum= p[i] ^ c[i];
       end
      cout = c[4];    
end
endmodule
    
