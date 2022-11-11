module d_ff_async_rst(q,d,clk,res);
  input d,clk,res;
  output reg q;
  always@(posedge clk,negedge clk)
  begin
    if(res)
      q<=0;
  else
    q<=d;
  end
endmodule
