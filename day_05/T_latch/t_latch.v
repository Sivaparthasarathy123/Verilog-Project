module t_latch(
  input T,
  input E, 
  output reg Q,
  output reg Qbar);
  always(*)begin
    if(E==1)begin
      case(T)
        1'b0:begin
          Q=1;Qbar=0;
        end
        1'b1:begin
          Q=0;Qbar=1;
        end
      endcase
    end
    else (E==0)begin
      Q=Q;Qbar=Qbar;
    end
  end
endmodule
      
