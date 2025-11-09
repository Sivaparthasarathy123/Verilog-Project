module Elevator_controller_tb();
       	reg clk,rst;
	reg [1:0]x;
        reg [1:0]current_floor;
        wire [1:0]floor_display;
        wire door_open,moving_up,moving_down;

  elevator_controller inst(clk,rst,x,current_floor,floor_display,door_open,moving_up,moving_down);

        initial clk = 0;
        always #5 clk = ~clk;

        initial begin
            $monitor("%0t|clk=%b|rst=%b|x=%b|current_floor=%b|floor_display=%b|door_open=%b|moving_up=%b|moving_down=%b",$time,clk,rst,x,current_floor,floor_display,door_open,moving_up,moving_down);

            $dumpfile("elevator_controller.vcd");
            $dumpvars;

         rst = 0; x = 2'd0; current_floor = 2'd0;
         #10 rst = 1;

         // Move to floor 2
         #10 x = 2'd2;
         repeat (20) #10 current_floor = current_floor + 1;

         // Move to floor 3
         #10 x = 2'd3;
         repeat (20) #10 current_floor = current_floor + 1;

         // Move to floor 0
         #50 x = 2'd0;
         repeat (20) #10 current_floor = current_floor - 1;

         #100 $finish;
        end
endmodule
