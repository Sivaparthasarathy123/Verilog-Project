//Functional difference between initial and always block

module functional_difference;
    reg q1, q2;

    // Initial block - runs once
    initial begin
        q1 = 0;
        #10 q1 = 1;
        #10 q1 = 0;
        $display("Time=%0t | Initial block finished | q1=%b", $time, q1);
    end

    // Always block - runs repeatedly
    always begin
        q2 = 0;
        #10 q2 = 1;
        #10 q2 = 0;
        $display("Time=%0t | Always block iteration done | q2=%b", $time, q2);
        if ($time >= 60)$finish; 
    end
endmodule

