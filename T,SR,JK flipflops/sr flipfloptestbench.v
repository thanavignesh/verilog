//sr flipflop testbench
module srtb;
  reg s,r,clk,res;
  wire q,qbar;
sr t1(.s(s),.r(r),.clk(clk),.rst(res),.qbar(qbar),.q(q));
  initial
  begin
    clk=0;
    res=1;
    s=0;r=0;
    #5 res=0;
    #80 res=1;
    $monitor($time,"\ts=%b\t,r=%b\t,\tq=%d\t.qbar=%b\t",s,r,q,qbar);
    #100 $finish;
  end
  always #10s=$random%2;
  always #10r=$random%2;
  always #5clk=~clk;
endmodule
    