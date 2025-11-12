//Multiple always block execute in parallel

module multiple_alwaysblock;
    reg [15:0] a;

    always begin
        #10 a = 16'd1;
        $display("Time=%0t | always block 1 = %d", $time, a);
	if ($time >= 160) $finish;
    end

    always begin
        #10 a = a + 1;
        $display("Time=%0t | always block 2 = %d", $time, a);
        if ($time >= 160) $finish;
    end
endmodule
