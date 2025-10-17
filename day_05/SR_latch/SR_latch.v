module SR_latch(
      input S,R,E,
      output reg Q,
      output reg Qbar);
   
    always@(*)begin
        if(E==1)begin
	    case({S,R})
	     2'b00:begin
	      Q=Q;Qbar=Qbar;
            end
             2'b01:begin
	       Q=1;Qbar=0;
            end
	     2'b10:begin
                Q=0;Qbar=1;
            end
	     2'b11:begin
       	        Q=1'bx;Qbar=1'bx;
            end
           endcase
	     end
           else if(E==0)begin
	   Q=Q;
	   Q=Qbar;
		   end
	   end
 endmodule
			 


	  
