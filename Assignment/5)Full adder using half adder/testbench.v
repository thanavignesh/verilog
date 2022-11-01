module tb; 
wire t_out_sum, t_out_carry; 
reg t_a, t_b, t_c; 
full_adder_join my_full_adder(.A(t_a), .B(t_b), .C(t_c), .SUM(t_out_sum), .COUT(t_out_carry)); 
initial 
begin // 1 
t_a = 1'b0; 
t_b = 1'b0; 
t_c = 1'b0;
#5 //2 
t_a = 1'b0; 
t_b = 1'b0; 
t_c = 1'b1;
#5 //3 
t_a = 1'b0; 
t_b = 1'b1; 
t_c = 1'b0;
#5 //4 
t_a = 1'b0; 
t_b = 1'b1; 
t_c = 1'b1;
#5 //5 
t_a = 1'b1; 
t_b = 1'b0; 
t_c = 1'b0;
#5 //6 
t_a = 1'b1; 
t_b = 1'b0; 
t_c = 1'b1;
#5 //7 
t_a = 1'b1; 
t_b = 1'b1; 
t_c = 1'b0;
#5 //8
t_a = 1'b1; 
t_b = 1'b1; 
t_c = 1'b1;
end 
endmodule