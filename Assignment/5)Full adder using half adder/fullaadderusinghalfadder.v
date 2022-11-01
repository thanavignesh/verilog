module fa(A,B,C,SUM,COUT);
  input A,B,C;
  output SUM,COUT;
  wire c1,c2;
  ha a(A,B,a1,c1);
  ha b(a1,C,SUM,c2);
  or (COUT,c1,c2);
endmodule

module ha(a,b,sum,cout);
  input a,b;
  output sum,cout;
  assign sum=a^b;
  assign cout=a&b;
endmodule