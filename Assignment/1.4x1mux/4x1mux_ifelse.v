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
