module mux_8x1 (o,i,s);
input [7:0] i;
input [2:0] s;
output o;
wire a1, a2, a3, a4, a5;
mux_ifelse a(w1, i[3:0], s[1:0]);
mux_ifelse b(w2, i[7:4], s[1:0]);
not n(a3, s[2]);
and an1(a4, w1, w3);
and an2(a5, w2, s[2]);
nor n1(o, w4, w5);
endmodule


module mux_ifelse (o,s,i);
input   [4:0]i;
input  [1:0] s;
output       o;
reg  o;
always @(*)
begin
   if (s == 00)
      o = i[0];
   else if (s == 01)
      o = i[1];
   else if (s == 10)
      o = i[2];
   else
      o = i[3];
end
endmodule