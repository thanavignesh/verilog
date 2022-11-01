module mux_continous(s, o, i);

output o;
input [3:0] i;
input [1:0] s;

assign o = (~(s[0]&s[1])&i[0]) | ((~s[1])&s[0]&i[1]) | ((~s[0])&s[1]&i[2]) | (s[1]&s[0]&i[3]);

endmodule
