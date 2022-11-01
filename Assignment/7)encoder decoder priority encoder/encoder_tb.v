module tb;
reg[7:0]a;
wire[2:0]b;
enco8to3 t(.a(a),.b(b));
initial
begin
$monitor("a=%b b=%b",a,b);
a=8'b00000001;
#10 a=8'b00000010;
#10 a=8'b00000100;
#10 a=8'b00001000;
#10 a=8'b00010000;
#10 a=8'b00100000;
#10 a=8'b01000000;
#10 a=8'b10000000;
#10$finish;
end
endmodule
