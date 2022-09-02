module binary(out,en,clk,res);
  output reg [3:0]out;
  input en,clk,res;
  always @(posedge clk)
  begin
  if(res)
    out<=4'b0;
  else if(en)
    out<=out+1'b1;
  end
endmodule