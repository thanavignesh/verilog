//8x1 mux using gatelvl realization
module _8X1muxx(input[7:0]i,input[2:0]s,output o);
  wire sbar0,sbar1,sbar2;
  wire a1,a2,a3,a4,a5,a6,a7,a8;
  not(sbar0,s[0]);
  not(sbar1,s[1]);
  not(sbar2,s[2]);
  and(a1,sbar2,sbar1,sbar0,i[0]);
  and(a2,sbar2,sbar1,s[0],i[1]);
  and(a3,sbar2,s[1],sbar,i[2]);
  and(a4,sbar2,s[1],s[0],i[3]);
  and(a5,s[2],sbar1,sbar0,i[4]);
  and(a6,s[2],sbar1,s[0],i[5]);
  and(a7,s[2],s[1],sbar,i[6]);
  and(a8,s[2],s[1],s[0],i[7]);
  or(o,a1,a2,a3,a4,a5,a6,a7,a8);
endmodule