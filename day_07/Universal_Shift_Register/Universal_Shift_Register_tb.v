module Universal_shift_register_tb();
     parameter N=4;
     reg clk,rst;
     reg [1:0]load;
     reg [N-1:0]pin;
     reg RSin,LSin;
     wire [N-1:0]q;

     Universal_shift_register #(.N(N)) inst(.clk(clk),.rst(rst),.load(load),.pin(pin),.RSin(RSin),.LSin(LSin),.q(q));
   
     initial clk = 0;
     always #5 clk = ~clk;
 
     always@(posedge clk)begin
          $display("Time=%0t|clk=%b|rst=%b|load=%d|pin=%b|RSin=%b|LSin=%b|q=%b",$time,clk,rst,load,pin,RSin,LSin,q);
     end
  
     initial begin
          $dumpfile("USR.vcd");
          $dumpvars;
      
          
        rst = 1; load = 2'b00; pin = 4'b0000; RSin = 0; LSin = 0;
        #10 rst = 0;

        #10 load = 2'b11; pin = 4'b0110;  //Parallel load

        #10 load = 2'b00;                 //Hold

        #10 load = 2'b01; RSin = 1'b0;    //Shift Right

        #10 load = 2'b10; LSin = 1'b0;     //Shift left

        #10 load = 2'b00;                  //Hold

        #60 $finish;
     end
     endmodule
