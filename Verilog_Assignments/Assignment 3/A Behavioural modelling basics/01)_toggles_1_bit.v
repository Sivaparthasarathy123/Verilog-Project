//toggles a 1 bit using initial and always

module toggle_1bit;
    reg q;

    initial begin
        q = 0;
        $display("Time=%0t | Initial started | q=%b", $time, q);
    end

    always begin
        #10 q = ~q;           
        $display("Time=%0t | q toggled to %b", $time, q);
        if($time >= 100) $finish;  
    end
endmodule

