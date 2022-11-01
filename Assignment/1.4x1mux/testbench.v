module tb;
  reg [1:0]s;
  reg [3:0]i;
  wire o;
mux_ifelse uut(.s(s),.i(i),.o(o));
 initial begin
   i=4'b0001;
   #10 s=00;
    i=4'b1000;
   #10 s=01;
    i=4'b0100;
   #10 s=10;
   i=4'b1010;
   #10 s=11;
end
always@(o)
  $display("time=%0t\tinput value:\t a=%b\tb=%b\tc=%b\td=%b\ts=%b\toutputvalue o=%b",$time,a,b,c,d,s,o);
endmodule
