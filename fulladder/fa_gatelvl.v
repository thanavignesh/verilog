//fulladder using gatelvl
module fa(a,b,cin,cout,s);
  input a,b,cin;
  output cout,s;
  wire u1,u2,u3;
  xor(u1,a,b);
  xor(s,u1,cin);
  and(u2,u1,cin);
  and(u3,a,b);
  or(cout,u2,u3);
endmodule
