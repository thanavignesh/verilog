module swap(a,b);
  input [15:0]a;
  output [15:0]b;
  wire [15:0]b;
  wire[3:0]m1,l1;
  assign m1=(a[15:12] | 4'b0000);
  assign l1=(a[3:0] | 4'b0000);
  assign b[15:12]=l1;
 assign b[11:4]=a[11:4];
  assign b[3:0]=m1;
endmodule




