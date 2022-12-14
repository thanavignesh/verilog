module tb;
  reg [7:0]i;
  reg[2:0]s;
  wire o;
mux8to1 dut(.i(i),.s(s),.o(o));
 initial begin
   {i}=$random%8;
   #10 s=000;
   {i}=$random%8;
   #10 s=001;
   {i}=$random%8;
   #10 s=010;
   {i}=$random%8;
   #10 s=011;
   {i}=$random%8;
   #10 s=100;
   {i}=$random%8;
   #10 s=101;
   {i}=$random%8;
   #10 s=110;
   {i}=$random%8;
   #10 s=111;
end
always@(o)
  $display("time=%0t\tinput value:\t i=%b\ts=%b\toutputvalue o=%b",$time,i,s,o);
endmodule