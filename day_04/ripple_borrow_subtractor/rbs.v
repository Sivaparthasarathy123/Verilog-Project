module ripple_borrow_subtractor(
      input a,
      input b,
      input bin,     //bin represents borrow input
      output reg bw,     //bw represents borrow
      output reg bout);  //bout represents borrow output
 always@(*)begin
   assign bw = a^b^bin;
   assign bout = (~a^b)|(~(a^b)&bin);
 end
endmodule
   

