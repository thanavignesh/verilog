module tb;
reg a,b,en;
wire [3:0]d;
decoder2to4 dut(en,a,b,d);
initial
begin
$monitor("en=%b a=%b b=%b d=%b",en,a,b,d);
en=0;a=1'bx;b=1'bx;#5
en=1;a=0;b=0;#5
en=1;a=0;b=1;#10
en=1;a=1;b=0;#5
en=1;a=1;b=1;#5
$finish;
end
endmodule
