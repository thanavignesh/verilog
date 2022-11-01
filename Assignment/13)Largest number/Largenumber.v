

module larger();
  reg [3:0]a[0:19];
  reg [3:0]larg;
  integer i;
  initial
  begin
  a[0]=4'b1000;
  a[1]=4'b0001;
  a[2]=4'b0110;
  a[3]=4'b0011;
  a[4]=4'b1100;
  a[5]=4'b0101;
  a[6]=4'b0110;
  a[7]=4'b0111;
  a[8]=4'b1000;
  a[9]=4'b1011;
  a[10]=4'b1010;
  a[11]=4'b1011;
  a[12]=4'b1100;
  a[13]=4'b1101;
  a[14]=4'b1110;
  a[15]=4'b1011;
  a[16]=4'b1000;
  a[17]=4'b0101;
  a[18]=4'b1010;
  a[19]=4'b0011;
  larg = a[0];
for (i=1;i<19;i=i+1)
begin
  if(a[i]>larg)
    larg = a[i];
end
 $display("the largest number in the array is :%b",larg);
end
endmodule



    
    
