module d_ff_async_rst_tb;
  reg d,clk,res;
  wire q;
d_ff_async_rst th(.q(q),.d(d),.clk(clk),.res(res));
initial
begin
  clk=0;res=1;d=0;
  #5res=0;
  #80res=1;
  $monitor($time,"\td=%b\t,\tclk=%b\t,\tq=%b\t",d,clk,q);
  #100$finish;
  end
  always #5 clk=~clk;
  always #25 d=~d;
endmodule

