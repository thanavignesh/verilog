//t flipflop testbench
module tff_tb;
  reg d,clk,res;
  wire q;
tff t1(.q(q),.d(d),.clk(clk),.res(res));
initial
begin
  res=1;clk=0;d=0;
  #5res=0;
  #80res=1;
  $monitor($time,"\td=%b,\tclk=%b\t,\tq=%d\t",d,clk,q);
  #100$finish;
end
always #5clk=~clk;
always #25d=~d;
endmodule
