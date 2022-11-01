
module lut_4_bit_tb;

reg [3:0] a;
wire [2:0] b;

lut4_3 uut(.a(a),.b(b));
initial 
begin
	#0 a =4'b1000;
	
	#5 a = 4'b0101;

	#2 a = 4'b1111;
end

initial $display($time ,"input = %b\toutput = %b",a,b);
endmodule
