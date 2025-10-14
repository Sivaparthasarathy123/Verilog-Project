module p_encoder_4x2(
	input [3:0] a,
	input en,
	output reg [1:0] y);
	always@(en,a)begin
	if (en==1)begin
	if (a[3]==1) y=2'b11;
	else if(a[2]==1) y=2'b10;
	else if(a[1]==1) y=2'b01;  
	else 
	    y=2'b00;
        end
	else 
	    y=2'bzz;
          end
endmodule  
