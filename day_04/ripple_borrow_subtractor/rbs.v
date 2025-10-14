module ripple_borrow_subtractor(
      input a,
      input b,
      input bin,     //bin represents borrow input
      output d,     //d represents difference
      output bout);  //bout represents borrow output
   assign d = a^b^bin;
   assign bout = (a&b)|(b&bin)|(a&bin);
endmodule

module ripple_borrow_subtractor_4bit(
      input [3:0]a,
      input [3:0]b,
      input bin,     //Bin represents borrow input
      output [3:0]d,     //D represents Difference
      output bout);  //Bout represents borrow out-ut
             wire bw1,bw2,bw3;
             wire [3:0]bi=b^{4{bin}};
             wire binv;
      ripple_borrow_subtractor inst1(a[0], bi[0], bin, d[0], bw1);
      ripple_borrow_subtractor inst2(a[1], bi[1], bw1, d[1], bw2);
      ripple_borrow_subtractor inst3(a[2], bi[2], bw2, d[2], bw3);
      ripple_borrow_subtractor inst4(a[3], bi[3], bw3, d[3], binv);

      assign bout=~binv;
endmodule
   

