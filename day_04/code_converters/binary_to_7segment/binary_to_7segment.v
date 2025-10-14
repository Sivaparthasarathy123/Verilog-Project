module binary_to_7segment(
      input [3:0]b,        // b represents binary
      output reg [6:0]s);  // s represents 7-segment
   
     always@(*)begin
         case(b)
    4'b0000:s=7'b1111110;
	4'b0001:s=7'b0110000;
	4'b0010:s=7'b1101101;
	4'b0011:s=7'b1111001;
	4'b0100:s=7'b0110011;
	4'b0101:s=7'b1011011;
	4'b0110:s=7'b1011111;
	4'b0111:s=7'b1110000;
	4'b1000:s=7'b1111111;
	4'b1001:s=7'b1111011;
	default: s = 7'b0000000;
      endcase
    end
endmodule
