module Universal_shift_register #(
      parameter N=4)(
      input clk,rst,
      input [1:0]load,
      input [N-1:0]pin,
      input RSin,LSin,
      output reg [N-1:0]q);

      /*reg [N-1:0]d;
      

      always@(posedge clk)begin
          if(rst)begin
             d <= {N{1'b0}};
             q <= 1'b0;
          end
          else if(load==3)begin
              d <= pin[N-1:0];
              q <= d;
          end
          else if(load==2)begin
              d <= {d[N-2:0],RSin};
           end
          else if(load==1)begin
              q <= d >> 1;
              q <= d << 1;
          end
          else if(load==0)begin
              q <= d;
          end
          end*/
	  always@(posedge clk)begin
        if (rst)
            q <= {N{1'b0}};
        else begin
            case (load)
                2'b00: q <= q;                          // Hold
                2'b01: q <= {RSin,q[N-1:1]};            // Shift right
                2'b10: q <= {q[N-2:0],LSin};            // Shift left
                2'b11: q <= pin;                        // Parallel load
                default: q <= q;
            endcase
        end
    end
endmodule
