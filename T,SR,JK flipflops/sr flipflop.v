//sr flipflop
module sr(s,r,clk,rst,q,qbar);
  input s,r,clk,rst;
  output q,qbar;
  wire s,r,clk,rst,qbar;
  reg q;
  always @ (posedge clk)
  begin
    if(rst)
      q<=1'b0;
    else if (s==1'b0 && r==1'b0) q<=q;
    else if (s==1'b0&& r==1'b1) q<=1'b0;
    else if (s==1'b1 && r==1'b0) q<=1'b1;
    else if (s==1'b1 && r==1'b1) q<=1'bx; 
  end
assign qbar=~q;
endmodule