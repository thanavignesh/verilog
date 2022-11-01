module lut_tb;

reg [11:0] a;
wire [3:0] b;

lut_12 uut(.A(a),.B(b));
initial 
begin
	#0 a =12'b100001011100;
	
	#5 a = 12'b010110101101;

	#2 a = 12'b100001011100;
end

initial $display($time ,"input = %b\toutput = %b",a,b);
endmodule