module modN_counter #(
       parameter N = 16,
       parameter WIDTH =$clog2(N))
       (input clk,rst,
       output reg [WIDTH -1:0]count);
  
       wire [WIDTH-1:0]T;
       integer j;

     genvar i;
     generate 
         for(i=0;i<WIDTH;i=i+1)begin:Toggle_logic
           if(i==0)
               assign T[i]=1'b1;
           else
               assign T[i]=&count[i-1:0];
         end
     endgenerate

     always@(posedge clk)begin
        if(rst)
           count <= {WIDTH{1'b0}};
        else if (count==N-1)
           count <= {WIDTH{1'b0}};                     
        else begin
            for(j=0;j<WIDTH;j++)begin
                if (T[j])
                    count[j] <= ~count[j];
        end
      end
     end
endmodule 
     
