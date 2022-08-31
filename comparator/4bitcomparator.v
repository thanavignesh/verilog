module comp(a,b,eq,gre,sma);
  input[3:0]a,b;
  output reg eq,gre,sma;
  always @(a,b)
  begin
    eq=0;
    gre=0;
    sma=0;
    if(a==b)
      eq=1;
  else if(a>b)
    gre=1;
  else
    sma=1;
  end
endmodule

