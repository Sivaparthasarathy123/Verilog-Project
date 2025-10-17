module jk_latch_tb;
    reg J, K, E;
    wire Q,Qbar;

    jk_latch inst (J,K,E,Q,Qbar);


    initial begin
        $monitor("%0t|J=%b|K=%b|E=%b|Q=%b|Qbar=%b",$time, J, K,E, Q,Qbar);
        $dumpfile("jk_latch.vcd");
        $dumpvars;

       E=0; J=0; K=0; #10;  
       E=1; J=1; K=0; #10;  
       E=1; J=0; K=1; #10;  
       E=1; J=1; K=1; #10;  
       E=1; J=0; K=0; #10;  
       E=1; J=1; K=1; #10;  
        $finish;
    end
endmodule

