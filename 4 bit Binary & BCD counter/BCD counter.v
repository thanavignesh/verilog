module bcd(out,en,clk,res);
  output reg [3:0]out;
  input en,clk,res;
  always @(posedge clk)
  if(res)begin
    out<=4'b0;end
  else if(en)begin
    out<=(out+1)%10;
  end
endmodule
