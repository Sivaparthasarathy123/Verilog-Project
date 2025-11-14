//Implement an n-bit data bus multiplexer using generate.

module bus_mux #(parameter N = 8)(
  input [N-1:0] bus_A, bus_B,
  input sel,
  output [N-1:0] bus_out);

  genvar i;
  generate
    for(i=0; i<N; i=i+1)begin : mux_gen      
        assign bus_out[i] = (sel) ? bus_B[i] : bus_A[i];
    end
  endgenerate
endmodule

//testbench
module tb_bus_mux;
  reg [7:0] A, B;
  reg sel;
  wire [7:0] Y;

  bus_mux #(8) inst (A, B, sel, Y);

  initial begin
    A = 8'hAA; B = 8'h55; 
    sel = 0;
    #5 $display("sel=%b | Y=%b", sel, Y);
    sel = 1;
    #5 $display("sel=%b | Y=%b", sel, Y);
  end
endmodule


