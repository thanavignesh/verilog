module eight_bit_john_counter_tb;
reg rst,clk;
wire [7:0]q;
eight_bit_john_counter jon (rst,clk,q);

initial
begin
clk=0;
rst = 0;

$monitor($time,"c=%b\tr=%b\tq=%b",clk,rst,q);
#6 rst =1;
end

always #2 clk = ~clk;

initial #68 $finish;

endmodule
