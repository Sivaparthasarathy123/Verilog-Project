//16-bit register being initialized and incremented inside an always block

module increment_16bit;
    reg [15:0] a;  

    initial begin
        a = 16'd0;
        $display("Time=%0t | Initial value of a = %d", $time, a);
    end

    always begin
        #10 a = a + 1;   
        $display("Time=%0t | a incremented to = %d", $time, a);
        if ($time >= 160) $finish; 
    end
endmodule
  

