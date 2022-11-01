
module tb;
  reg [2:0]s;
  reg [7:0]i;
  wire o;
  integer k;
mux_8x1 uut(.s(s),.i(i),.o(o));
 initial begin
s <= 0;
i[0]<= $random;
i[1] <= $random;
i[2]<= $random;
i[3]<= $random;

i[4]<= $random;
i[5] <= $random;
i[6]<= $random;
i[7] <= $random;
for ( k= 0; k < 7; k=k+1) begin
#5 s<= k;
end

#5 $finish;
end
always@(o)
  $display("time=%0t\tinput value:\t i=%b\ts=%b\toutputvalue o=%b",$time,i,s,o);
endmodule