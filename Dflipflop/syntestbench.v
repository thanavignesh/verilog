//testbench for synchronous d flipflop
module syntb;
  reg clk,res,d;
  wire q;
dffsync t1(.clk(clk),.q(q),.data(d),.reset(res));
initial
begin
  
  
  
  
  
  
   #160$finish;
 end
  
  
endmodule
  
