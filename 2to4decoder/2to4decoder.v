//2to4decoder dataflow model
module decoder2to4(en,a,b,d);
  input en;
  input a,b;
  output [3:0]d;
  assign d[0]=(en & ~a & ~b);
  assign d[1]=(en & ~a & b);
  assign d[2]=(en & a & ~b);
  assign d[3]=(en & a & b);
endmodule

