module enco8to3(a,b);
  input [7:0]a;
  output reg [2:0]b;
always@(*)
  begin
    case(a)
      8'b00000001:b=3'b000;
      8'b00000010:b=3'b001;
      8'b00000100:b=3'b010;
      8'b00001000:b=3'b011;
      8'b00010000:b=3'b100;
      8'b00100000:b=3'b101;
      8'b01000000:b=3'b110;
      8'b10000000:b=3'b111;
      default:b<=3'bxxx;
  endcase
end
endmodule

