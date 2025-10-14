module one_bit_mc(
	input a,
	input b,
	output reg greater_than,
	output reg equalto,
	output reg less_than);
	always@(*)begin
		greater_than =0;
		equalto=0;
		less_than=0;
        if(a<b)            
          greater_than = 1;
	else if (a==b)
          equalto = 1;
	else if (a>b)
	  less_than = 1;
	end
endmodule

