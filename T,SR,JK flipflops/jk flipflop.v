//jk flipflop issing case statement
module jk(j,k,q,qbar,clk,res);
  input j,k,clk,res;
  output reg q,qbar;
always@(posedge clk)
begin
  if(res)
    q<=0;
else
  begin
  case({j,k})
    2'b00:q<=q;
    2'b01:q<=0;
    2'b10:q<=1;
    2'b11:q<=~q;
endcase
end
assign qbar=~q;
end
endmodule
    
