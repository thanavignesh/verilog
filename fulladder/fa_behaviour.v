//fa in behaviour modelling
module fabehav(input a,b,c,output s,cout);
  assign {cout,s}=c+a+b;
endmodule
