module ripple_carry_adder_tb();
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;
    integer i, j;
    ripple_carry_adder inst(.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Cout(Cout));

    initial begin
        $monitor("time=%0t|A=%b|B=%b|Cin=%b|Sum=%b|Cout=%b",$time,A,B,Cin,Sum,Cout);
	$dumpfile("RLC.vcd");
	$dumpvars;
     for(i=0;i<16;i++) begin
       for(j=0;j<16;j++) begin
         A=i;B=j;Cin=0;
         #5;
         end
    end
    end
endmodule    
