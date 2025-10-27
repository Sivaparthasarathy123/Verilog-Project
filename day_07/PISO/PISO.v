// Parallel In Serial Out Register

module PISO #(
    parameter N=4)(
    input clk,
    input rst,
    input load,          // load parallel data
    input [N-1:0]pin,   // Parallel input
    output reg q);      //Serial output

    reg [N-1:0]d;    

    always@(posedge clk)begin
        if(rst)begin
            d <= {N{1'b0}};
            q <= 1'b0;
        end
        else if (load)begin
            d <= pin;        
        end
        else begin
            q <= d[N-1];        
            d <= d << 1;  
        end
    end

endmodule


           

    
