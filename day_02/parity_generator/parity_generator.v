module parity_generator_9bit (

  input [8:0] data,
  output parity_even,
  output parity_odd);
assign parity_even = ^data;
assign parity_odd =~(^data);

endmodule
