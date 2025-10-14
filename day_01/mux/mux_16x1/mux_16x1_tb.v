module mux_16x1_tb();
    reg [15:0] a;
    reg [3:0] s;
    wire y;
    mux_16x1 inst(.a(a), .s(s), .y(y));
    initial begin
        $monitor("Time=%0t | a=%b | s=%b | y=%b", $time, a, s, y);
        $dumpfile("mux_16x1.vcd");
        a = 16'b1010111100111100;
        repeat(16) begin
            s = $time / 10; 
            #10;
        end
        $finish;
    end
endmodule
