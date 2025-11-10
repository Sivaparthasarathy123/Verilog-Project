`timescale 1ns/1ps

module Traffic_signal_4way_tb_1();

reg clk;
reg rst;
wire [2:0] way1;
wire [2:0] way2;
wire [2:0] way3;
wire [2:0] way4;

Traffic_signal_4way inst (clk,rst,way1,way2,way3,way4);

initial begin
    clk = 0;
    forever #5 clk = ~clk;    
end

initial begin
    $dumpfile("traffic_signal.vcd");
    $dumpvars;
    
    rst = 0;
    #20;
    rst = 1;

    #500 $finish; 
end

always @(posedge clk) begin
    $display("Time=%0t | clk=%b | Way1=%b | Way2=%b | Way3=%b | Way4=%b", $time, clk, way1, way2, way3, way4);
end

endmodule

