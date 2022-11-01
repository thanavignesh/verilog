module alu_tb;
  reg [3:0]a,b;
  reg[1:0]s;
  wire[3:0]c;
alu aa(a,b,c,s);
initial
begin 
  s=2'b00;a=4'b0000;b=4'b0000;
end
always
begin
  #2  s=2'b00;a=4'b0000;b=4'b1000;
  #2  s=2'b01;a=4'b0100;b=4'b0110;
  #2  s=2'b10;a=4'b0110;b=4'b1010;
  #2  s=2'b11;a=4'b1010;b=4'b0101; 
end
initial $monitor($time,"s=%b\ta=%b\tb=%b\tc=%b\t",s,a,b,c);
initial #10 $stop;
endmodule
