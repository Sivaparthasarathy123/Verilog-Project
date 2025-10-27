//Serial in Serial Out Register

module SISO#( parameter N=4)                                                                                               
    (input clk,rst,en,                                                                                                       
     input sin,                                                                                                              
     output reg q);                                   
    
     reg [N-1:0]din; 
     always@(posedge clk)begin      
        if(rst)begin
           q <= 0;din <= 0;
        end
        else if(en)begin
           din <= {din[N-1:0],sin};
           q=din[N-1];
        end
     end
   endmodule

/*module d_ff(
    input clk,rst,d,
    output reg q);

    always@(posedge clk)begin
       if(rst==0)
           q <= 0;
       else
           q <= d;
   end
endmodule*/
