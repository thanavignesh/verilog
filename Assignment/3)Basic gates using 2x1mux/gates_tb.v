module tb;
  reg a,b;
  wire and_o,or_o,not_o,xor_o,nand_o,nor_o,xnor_o;
gates dut(a,b,and_o,or_o,not_o,xor_o,nand_o,nor_o,xnor_o);
  initial
    begin
      a = 1'b0; b=1'b0;#10
      a = 1'b0; b=1'b1;#10
      a = 1'b1; b=1'b0;#10
      a = 1'b1; b=1'b1;#10
     #60 $finish;
    $monitor($time,"a=%b\tb=%b\tand_o=%b,or_o=%b,not_o=%b,xor_o=%b,nand_o=%b,nor_o=%b,xnor_o=%b",a,b,and_o,or_o,not_o,xor_o,nand_o,nor_o,xnor_o);
    end
endmodule
