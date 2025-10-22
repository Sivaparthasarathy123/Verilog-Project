module up_counter(
    input clk,    
    input reset,        
    output reg [3:0] count);

    always @(posedge clk) begin
        if (reset)
            count <= 4'd0;         
        else
            count <= count + 1'b1; 
    end
endmodule
