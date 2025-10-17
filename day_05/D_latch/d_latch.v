module d_latch(input D,E, output Q,Qbar);
  always(*)begin
    if(E==1)begin
      case(D)
        1'b0:begin
          Q=0;Qbar=1;
        end
        1'b1:begin
          Q=1;Qbat=0;
        end
      endcase
    end
    else (E==0)begin
      Q=Q;Qbar=Qbar;
    end
  end
endmodule
      
