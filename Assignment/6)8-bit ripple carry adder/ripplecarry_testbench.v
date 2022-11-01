
module rippleadder_b;
reg [7:0] a;
reg [7:0] b;
reg cin;
wire [7:0] sum;
wire cout;
ripple uut (.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial 
begin
#10 a=00000001; b=00000001;cin=0;
#10 a=00000001; b=00000001;cin=1;
#10 a=00000010; b=00000011;cin=0;
#10 a=10000001; b=10000001;cin=0;
#10 a=00011001; b=00110001;cin=0;
#10 a=00000011; b=00000011;cin=1;
#10 a=11111111; b=00000001;cin=0;
#10 a=11111111; b=00000000;cin=1;
#10 a=11111111; b=11111111;cin=0;
#10 $stop;
end
endmodule