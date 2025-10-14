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
module ripple_borrow_subtractor(
      input [3:0]A,
      input [3:0]B,
      input Bin,     //Bin represents borrow input
      output reg Bw,     //Bw represents borrow
      output reg Bout);
             wire bw1,bw2,bw3;
      ripple_borrow_subtractor inst1(A[0], B[0], Bin, Bw[0], bw1);
      ripple_borrow_subtractor inst2(A[1], B[1], bw1, Bw[1], bw2);
      ripple_borrow_subtractor inst3(A[0], B[0], bw2, Bw[2], bw3);
      ripple_borrow_subtractor inst4(A[0], B[0], bw3, Bw[3], Bout);
endmodule
   

