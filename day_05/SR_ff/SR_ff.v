module SR_ff(
    input S,R,
    input clk,
    output reg Q);

    initial begin
       Q=0;
    end
   
    always@(posedge clk)begin
      case({S,R})
           2'b00:Q=Q;  //Hold 
           2'b01:Q=0;  //Reset
           2'b10:Q=1;  //Set
           2'b11:Q=1'bx;  //Invalid
       endcase
    end
endmodule
