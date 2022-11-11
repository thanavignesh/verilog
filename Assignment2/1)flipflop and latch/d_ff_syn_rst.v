module d_ff_sync_rst(clk,q,data,reset);
  input clk,reset,data;
  output reg q;
  always@(posedge clk)
  begin
    if (reset)
      q<=0;
    else
    q<=data;
  end
endmodule