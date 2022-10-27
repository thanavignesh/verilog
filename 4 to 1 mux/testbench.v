`timescale 1ns/1ns
`include "4to1.v"
module tb;
  reg [1:0]s;
  reg a,b,c,d;
  wire o;
mux1 uut(.a(a),.b(b),.c(c),.d(d),.s(s),.o(o));
 initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0,tb);
   a=1;b=1;c=0;d=1;
   #10 s=00;
    a=0;b=1;c=0;d=1;
   #10 s=01;
   a=1;b=0;c=1;d=0;
   #10 s=10;
    a=0;b=1;c=0;d=1;
   #10 s=11;
end
always@(o)
  $display("time=%0t\tinput value:\t a=%b\tb=%b\tc=%b\td=%b\ts=%b\toutputvalue o=%b",$time,a,b,c,d,s,o);
endmodule