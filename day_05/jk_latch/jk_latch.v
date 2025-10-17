module jk_latch(
    input J,
    input K,
    input E,
    output reg Q,
    output reg Qbar);
always @(*) begin
	if(E==1)begin
    case ({J, K})
	    2'b00:begin 
	    Q <= Q; Qbar=Qbar;
            end    // No change
	    2'b01:begin 
	    Q <= 0; Qbar=1;
            end	    // Reset
	    2'b10:begin
            Q <= 1; Qbar=0; 
            end	    // Set
	    2'b11:begin
            Q <= ~Q; Qbar=~(~Q);
            end  // Toggle
   
         endcase
         end
    if (E==0)begin
	    Q<=Q;Qbar=Qbar;
    end
end

endmodule
			 

