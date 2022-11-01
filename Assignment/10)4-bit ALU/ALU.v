module alu(a,b,c,s);
  output reg[3:0]c;
  input[3:0]a,b;
  input[1:0]s;
  always@(*)
  begin
    case(s)
      2'b00:c=a|b;
      2'b01:c=a&b;
      2'b10:c=a+b;
      2'b11:c=a-b;
  endcase
end
endmodule

    
  
