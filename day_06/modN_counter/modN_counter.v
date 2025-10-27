module modN_counter #(
       parameter N = 4)
       (input clk,rst,
        output reg [N-1:0]count);
  
       wire [N-1:0]T;
       integer j;

     genvar i;
     generate 
            for(i=0;i<16;i=i+1)begin:Toggle_logic
           if(i==0)
               assign T[i]=1'b1;
           else
               assign T[i]=&count[i-1:0];
         end
     endgenerate

     always@(posedge clk)begin
        if(rst)
               count <= {N{1'b0}};
        else if (count==N-1)
               count <= {N{1'b0}};                     
        else begin
               for(j=0;j<16;j++)begin
                if (T[j])
                    count[j] <= ~count[j];
        end
      end
     end
endmodule 
     
