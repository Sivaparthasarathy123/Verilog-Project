module full_subtractor(input a,b,bin, output d,bout);
 assign d = a^b^bin;
 assign bout = (~a&b) | ((~(a^b))&bin);
endmodule
