module swap_tb;
  reg [15:0]a;
  wire [15:0]b;
swap uut(a,b);
initial 
begin
#2 a=15'b010100001101010;
#4 a=15'b010101010101000;
#10 $finish;

end
initial 
$monitor($time,"a=%b\t,outputvalueafter swappingb=%b\t",a,b);

endmodule