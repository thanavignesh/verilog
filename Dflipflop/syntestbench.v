//testbench for synchronous d flipflop
module syntb;
  reg clk,res,d;
  wire q;
dffsync t1(.clk(clk),.q(q),.data(d),.reset(res));
initial
begin
  clk=0;
  res=1;
  d=0;
  #5res=0;
  #80res=1;
  $monitor($time,"\td=%b\t,\tclk=%b\t,\tq=%b\t",d,clk,q);
   #160$finish;
 end
  always #5 clk =~clk;
  always #30 d=~d;
endmodule
  

