module counter_4bit ( clk ,reset ,dout );

output [3:0] dout ;
reg [3:0] dout ;

input clk ;  // declearation 
wire clk ;
input reset ;
wire reset ;

initial dout = 0;
 
always @ (posedge (clk)) begin 

    $dumpfile("counter_4bit.vcd");
    $dumpvars(0,counter_4bit);

 if (reset)
  dout <= 0;
 else
  dout <= dout + 1;
end


endmodule

