//dflipflop
module dff(d,q,en,reset);
  input d,en,reset;
  output reg q;
  always @(en,reset,d)
  begin
    if(reset)
      q<=0;
  else if(en)
    q<=d;
end
endmodule
