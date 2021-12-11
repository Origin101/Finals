module comparator ( a ,b ,equal ,greater ,lower );

output equal ;
reg equal ;
output greater ;
reg greater ;
output lower ;
reg lower ;

input [3:0] a ;
wire [3:0] a ;
input [3:0] b ;
wire [3:0] b ;

always @ (a or b) begin
    $dumpfile("comparator.vcd");
    $dumpvars(0, comparator);
    
 if (a<b) begin
  equal = 0;
  lower = 1;
  greater = 0;
 end else if (a==b) begin
  equal = 1;
  lower = 0;
  greater = 0;
 end else begin
  equal = 0;
  lower = 0;
  greater = 1;
 end
end
 

endmodule