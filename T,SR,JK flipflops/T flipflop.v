//t flipflop synchronous reset
module tff(q,d,clk,res);
  input d,clk,res;
  output reg q;
  always@(posedge clk)
  begin
    if(res)
      q<=0;
    else
      q<=~d;
  end
endmodule

