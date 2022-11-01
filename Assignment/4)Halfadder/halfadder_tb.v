
module tb; 
wire sum, carry; 
reg a, b; 
ha my_design(.a(a), .b(b), .sum(sum), .carry(carry)); 
initial 
begin // 1 
a = 1'b0;
b = 1'b0;
#5 //2 
a = 1'b0; 
b = 1'b1;
#5 //3 
a = 1'b1; 
b = 1'b0;
#5 //4 
a = 1'b1; 
b = 1'b1;
end 
endmodule