module alarm(a,b,c,d,o);
  input a,b,c,d;
  output o;
  wire o;
  assign o=((c&d) | (b&d) |(a&d));
endmodule

  
