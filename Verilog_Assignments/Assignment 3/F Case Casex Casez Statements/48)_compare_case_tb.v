// Create a testbench to show difference between case, casex, and casez.

module compare_case_tb;
  reg [1:0] sel;
  reg [3:0] a;
  wire y_case, y_casex, y_casez;

  mux4_case  inst1 (.a(a), .sel(sel), .y(y_case));
  mux4_casex inst2 (.a(a), .sel(sel), .y(y_casex));
  decoder_casez inst3 (.code({2'b00, sel}), .out());

  initial begin
    a = 4'b1010;
    $monitor("Time=%0t | sel=%b | case=%b | casex=%b | casez(decoder ignored)",
              $time, sel, y_case, y_casex);
  end

  initial begin
       sel = 2'b00; 
   #10 sel = 2'b01; 
   #10 sel = 2'b10; 
   #10 sel = 2'b1x;  
   #10 sel = 2'bz1; 
   #10 $finish;
  end
endmodule

