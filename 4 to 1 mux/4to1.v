	module mux1 (a, b, c, d, s, o);
	input        a,b,c,d;
	input  [1:0] s;
	output       o;
	reg  o;
	always @(a or b or c or d or s)
	begin
	   if (s == 00)
	      o = a;
	   else if (s == 01)
	      o = b;
	   else if (s == 10)
	      o = c;
	   else
	      o = d;
	end
        endmodule