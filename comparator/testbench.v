module tb;
  reg [3:0]a,b;
  wire eq,gre,sma;
comp dut(a,b,eq,gre,sma);
always#5 a=$random%16;
always#5 b=$random%16;
initial 
 begin
  $monitor($time,"\ta=%b\t,b=%b\t,eq=%b\t,gre=%b\t,sma=%b\t",a,b,eq,gre,sma);
  a=4'b0000;
  b=4'b0000;
  #80 $finish;
 end
endmodule
    
