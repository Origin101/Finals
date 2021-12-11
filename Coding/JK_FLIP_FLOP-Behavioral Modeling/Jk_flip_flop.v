module Jk_flip_flop ( j ,k ,clk ,reset ,q ,qb );

output q ;
reg q ;
output qb ;
reg qb ;

input j ;
wire j ;
input k ;
wire k ;
input clk ;
wire clk ;
input reset ;
wire reset ;

always @ (posedge (clk)) begin
    $dumpfile("Jk_flip_flop.vcd");
    $dumpvars(0, Jk_flip_flop);

 if (reset) begin
  q <= 0;
  qb <= 1;
 end
 else begin
  if (j!=k) begin
   q <= j;
   qb <= k;
  end
  else if (j==1 && k==1) begin
   q <= ~q;
   qb <= ~qb;
  end
 end
end
 

endmodule
