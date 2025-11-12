//uses initial for setup and always for functional updates.

module toggle_1bit;
    reg q;

    initial begin
        q = 0;
        $display("Time=%0t | Initial setup | q=%b", $time, q);
    end

    always begin
        #10 q = ~q;           
        $display("Time=%0t | functional updates(q toggled to)%b", $time, q);
        if($time >= 100) $finish;  
    end
endmodule

