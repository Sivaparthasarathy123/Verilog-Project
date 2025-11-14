// Use generate and genvar to initialize an 8-bit register array.

module genvar_register;
  reg [7:0] reg_array;

  genvar i;
  generate
    for(i=0;i<8;i=i+1)begin : start_loop
      initial begin
        reg_array[i] = i % 2; 
      end
    end
  endgenerate

  initial begin
    #5 $display("Initialized Register Array = %b", reg_array);
  end
endmodule

