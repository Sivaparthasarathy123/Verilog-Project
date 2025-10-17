module SR_latch_tb();
     reg S;
     reg R,E;
     wire Q;
     wire Qbar;

     SR_latch inst (S,R,E,Q,Qbar);
   initial begin
     $monitor("time=%0t|S=%b|R=%b|E=%b|Q=%b|Qbar=%b",$time,S,R,E,Q,Qbar);
     $dumpfile("SR_latch.vcd");
     $dumpvars;
    E=0;S=0;R=0;#5;//latch active low 
    E=1;S=0;R=0;#5;//hold
    E=1;S=0;R=1;#5;//reset
    E=1;S=1;R=0;#5;//set
    E=1;S=1;R=1;#5;//invalid
     $finish;
    end
   endmodule
     

