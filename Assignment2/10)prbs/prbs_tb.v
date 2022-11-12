module prbs_tb;
  reg clk,rst;
  wire [6:0]y;
  prbs uut(.clk(clk),.rst(rst),.y(y));
  initial
  begin 
    #1 rst=1;
  end
  initial clk=0;
  always #2clk =~clk;
  initial begin
  #5 rst=0;
  #100 rst =1;
  
  end
endmodule
