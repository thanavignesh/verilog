//testbench for d flipflop
module tb;
  reg d,en,reset;
  wire q;
dff t1(.d(d),.q(q),.en(en),.reset(reset));
initial
  begin
    en=0;
    reset=1;
    d=0;
    #5 reset=0;
    #30 reset =1;
    $monitor($time,"\ten=%b\t,reset=%b\t.q=%b",en,reset,d,q);
    #160$finish;
  end
  always#25 en=~en;
  always#40 d=~d;
endmodule
    
