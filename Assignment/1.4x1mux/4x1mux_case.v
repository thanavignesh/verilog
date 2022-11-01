module mux_case(s,i,o);
  input [3:0]i;
  input s;
  output reg o;
  always @(*)
  begin
    case(s)
      2'b00 : o=i[0];
      2'b01 : o=i[1];
      2'b10 : o=i[2];
      2'b11 : o=i[3];
    endcase
  end
endmodule

