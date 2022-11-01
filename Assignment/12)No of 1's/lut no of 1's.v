module lut4_3(a,b);
  input[3:0]a;
  output reg [2:0]b;
  always @(*)
  begin
    if (a==4'b0000)
      b=3'b000;
    else if(a==4'b0001 || a==4'b0010 ||a==4'b0100 ||a==4'b1000)
     b=3'b001;
    else if(a==4'b0011 || a==4'b0110 ||a==4'b1100 ||a==4'b1001||a==4'b0101 || a==4'b1010 )
       b=3'b010;
    else if(a==4'b0111 ||a==4'b1110 || a==4'b1101 ||a==4'b1011)
      b=3'b011;
    else if  (a==4'b1111)
      b=3'b100;
end
endmodule