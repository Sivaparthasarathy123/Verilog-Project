module two_bit_mc(
	input [1:0]A,
	input [1:0]B,
	output reg greater_than,
	output reg equal,
	output reg lesser_than);
	always@(*)begin
	greater_than=0;
	equal=0;
	lesser_than=0;                                                                                                                                                                                
            if (A>B)
	       greater_than = 1;
	    else if (A==B)
	       equal = 1;                                                                      
	    else if (A<B)                                                                                                                                                                           
	       lesser_than = 1;
        end                                                                                                                                                                                            
        endmodule
