module carry_lookahead_adder_tb();
      reg [3:0]a;
      reg [3:0]b;
      reg cin;
      wire sum;
      wire cout;
      integer i, j;
    carry_lookahead_adder inst(a,b,cin,sum,cout);
       
      initial begin
      $monitor("time=%0t|a=%b|b=%b|sum=%b|cout=%b",$time,a,b,cin,sum,cout);
      $dumpfile("CLA.vcd");
      $dumpvars;
      
      cin=0;
      for(i=0;i<16;i++)begin
         for(j=0;j<16;j++)begin
            a=i;b=j;
            #5;
         end
       end
      cin=1;
      for(i=0;i<16;i++)begin                                                                                                                                         for(j=0;j<16;j++)begin                                                                                                                                         a=i;b=j;                                                                                                                                                    #5;                                                                                                                                                      end                                                                                                                                                       end
      $finish;
     end
endmodule
