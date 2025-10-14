module p_encoder_8x3(
	input [7:0] a,
	input en,
	output reg [2:0] y);
	always@(en,a)begin
	if (en==1)begin
	if (a[7]==1) y=4'b111;
	else if(a[6]==1) y=4'b110;
	else if(a[5]==1) y=4'b101; 
	else if(a[4]==1) y=4'b100; 
	else if(a[3]==1) y=4'b011; 
	else if(a[2]==1) y=4'b010; 
	else if(a[1]==1) y=4'b001; 
	else 
	    y=3'b000;
        end
	else 
	    y=3'bzzz;
          end
endmodule  
	
