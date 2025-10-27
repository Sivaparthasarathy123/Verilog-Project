//Serial in Parallel Out Register

module SIPO#( parameter N=4)                                                                                               
    (input clk,rst,en,                                                                                                       
     input sin,                                                                                                              
     output reg [N-1:0]q);                                   
    
     reg [N-1:0]din; 
     always@(posedge clk)begin      
        if(rst)begin
           q <= 0;din <= 0;
        end
        else if(en)begin
           din <= {din[N-2:0],sin};
           q=din;
        end
     end
   endmodule
